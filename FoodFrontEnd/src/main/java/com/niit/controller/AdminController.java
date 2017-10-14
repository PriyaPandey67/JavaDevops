package com.niit.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;



import com.niit.dao.CategoryDao;
import com.niit.dao.ProductDao;
import com.niit.dao.SupplierDao;
import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.Supplier;
//@ComponentScan("com.niit")
@Controller
@RequestMapping(value="/admin") 
public class AdminController {

	
	@Autowired
	ProductDao productDao;
	@Autowired
	CategoryDao Cdao;
	@Autowired
	SupplierDao Sdao;

	
	@ModelAttribute
	public void Add(Model m) {
		m.addAttribute("productlist", productDao.getProductList());
		m.addAttribute("cat", Cdao.getCategoryList());
	}

	
	
	
	@RequestMapping(value="/addPro",method=RequestMethod.GET)
	public ModelAndView add(HttpServletRequest req){
		//Product p=new Product();
		
		ModelAndView mav=new ModelAndView("Admin");
		mav.addObject("cmd",new Product());
		 List<Category> c=Cdao.getCategoryList();
		 mav.addObject("cat",c);
		 
		 List<Supplier> s=Sdao.getSupplierList();
		 mav.addObject("sup",s);
		 
		 mav.addObject("cmd",new Category());
		 mav.addObject("command",new Supplier());
	   return mav;
	
	}
	
	
	@RequestMapping(value="/newPro",method=RequestMethod.POST)
	public String Added(@ModelAttribute("product")Product p,@RequestParam("image")MultipartFile file,HttpServletRequest request){
		System.out.println("inside Product");
		p.setCategory1(Cdao.getCategoryById(Integer.parseInt(request.getParameter("catid"))));
		p.setSupplier(Sdao.getSupplierById(Integer.parseInt(request.getParameter("id"))));
		String filepath=request.getSession().getServletContext().getRealPath("/");
		String originalfile=file.getOriginalFilename();
		
		System.out.println(filepath+originalfile);
		p.setImagename(originalfile);
		productDao.insertProduct(p);
		try{
	        byte imagebyte[]=file.getBytes();
	        BufferedOutputStream fos=new BufferedOutputStream(new FileOutputStream(filepath+"/resources/"+p.getProductid()+".png")); 
	        System.out.println("filepath:"+filepath);
	        fos.write(imagebyte);
	        	fos.close();
	        }
	        catch(IOException e){
	        	e.printStackTrace();
	       }
	        catch(Exception e){
	       	e.printStackTrace();
	        }

		
		System.out.println("priya here");
  	return "ModalPro";
	}
	
	
	
	@RequestMapping("/viewProductList") /////for dropdown 
    public ModelAndView viewProd(){  
        List<Product> p=productDao.getProductList();  
        return new ModelAndView("ViewProductList","p",p);  
    }

	
		
	@RequestMapping(value="/deleteP/{id}")  
	    public ModelAndView delete(@PathVariable  int id){  
		productDao.deleteProduct(id);  
	     return new ModelAndView("redirect:/admin/viewProductList"); 
	     
	 
	   } 
	
	@RequestMapping(value="/update/{id}")  
	    public ModelAndView edit(@PathVariable int id ){  
	      Product pro=productDao.getProduct(id);
	  	Product p=new Product();
	      ModelAndView mav=new ModelAndView("editProduct","command",pro);
	  	 List<Category> c=Cdao.getCategoryList();
		 mav.addObject("cat",c);
		
		 List<Supplier> s=Sdao.getSupplierList();
		 mav.addObject("sup",s);
		 
		 
	      System.out.println("inside:  "+pro.getProductid());
	    
	       return mav;  
	        
	    }
	 @RequestMapping(value="/editsave",method = RequestMethod.POST)   
	    public ModelAndView editsave(@ModelAttribute("command") Product pro,@RequestParam("image")MultipartFile file,HttpServletRequest request){  
		// System.out.println(p.getProductid()+" "+pro.getProductname()+" "+pro.getDescription()+" "+p.getPrice());
		 String filepath=request.getSession().getServletContext().getRealPath("/");
			String originalfile=file.getOriginalFilename();
			
			System.out.println(filepath+originalfile);
			pro.setImagename(originalfile);
			try{
		        byte imagebyte[]=file.getBytes();
		        BufferedOutputStream fos=new BufferedOutputStream(new FileOutputStream(filepath+"/resources/"+pro.getProductid()+".png")); 
		        System.out.println("filepath:"+filepath);
		        fos.write(imagebyte);
		        	fos.close();
		        }
		        catch(IOException e){
		        	e.printStackTrace();
		       }
		        catch(Exception e){
		       	e.printStackTrace();
		        }

			productDao.update(pro);  
	        return new ModelAndView("redirect:/admin/viewProductList");  
	    
	 
	 
	     
	 }
	 
	   	
	    @RequestMapping(value="/newCat",method=RequestMethod.POST)
		public String addedCart(@ModelAttribute("cmd2") Category c){
			System.out.println("megha here");
			Cdao.insertCategory(c);
			System.out.println("priya here");
	  	return "ModalCate";
		}
	    
	    @RequestMapping("/ViewCate") /////for dropdown
	    public ModelAndView viewCategory(){  
	        List<Category> c=Cdao.getCategoryList();  
	        return new ModelAndView("ViewCategory","c",c);  
	    }
	   
	
		//////
	    
	    
	    @RequestMapping(value="/newSupp")
		public String addedSupplier(@ModelAttribute("cmd3") Supplier s){
			System.out.println("megha here");
			Sdao.insertSupplier(s);
			System.out.println("priya here");
	  	return "ModalSupp";
		}
	    
	 
	    @RequestMapping("/ViewSupplier")///for dropdown  
	    public ModelAndView viewSupplier(){  
	        List<Supplier> s=Sdao.getSupplierList();  
	       return new ModelAndView("ViewSupplier","s",s);
	      
	    }
	 
		
}


