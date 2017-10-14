package com.niit.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CartDao;
import com.niit.dao.CategoryDao;
import com.niit.dao.ProductDao;

import com.niit.dao.userDao;
import com.niit.model.Cart;
import com.niit.model.Product;
import com.niit.model.Users;


@Controller
public class CartController {
	@Autowired
	 CartDao cartdao;
	@Autowired
	userDao udao;
	@Autowired
	ProductDao pdao;
	@Autowired
	Cart cart;
	@Autowired
	CategoryDao cdao;
	
	
	@ModelAttribute
	public void Add(Model m) {
		m.addAttribute("productlist", pdao.getProductList());
		m.addAttribute("cat", cdao.getCategoryList());
	}
	
	
	@RequestMapping(value="/AddToCart/{pid}",method=RequestMethod.POST)
	public ModelAndView addToCart(@PathVariable("pid")int pid,@RequestParam("stock")String quant,Principal principal)
	{
		ModelAndView mav;
		if(principal!=null){
			mav=new ModelAndView("Cart");
			String name=principal.getName();
			Users u=udao.getUserByName(name);
			Product p=pdao.getProduct(pid);
				
			int price=(p.getPrice());
			//int stock1=(p.getStock());
			String proName=p.getProductname();
			String description=p.getDescription();
			int id=p.getProductid();
	        int quantity=Integer.parseInt(quant);
			int totalprice=price*quantity;
			
			cart.setFinalAmount(totalprice);
		 	cart.setUser(u);
			cart.setProductId(id);
			cart.setPrice(price);
			cart.setCartProName(proName);
			cart.setCartProDes(description);
			
			Cart cartexists=cartdao.getCartItem(pid, name);
			if(cartexists==null)
			{
				cart.setTotalItems(quantity);     	
				cartdao.insertCartItem(cart);
				
				
			}
			else
			{
				cart.setCartid(cartexists.getCartid());
			
				cart.setTotalItems(cartexists.getTotalItems()+quantity);
				cartdao.UpdateCartItem(cart);
			}
			//updating product instance
			 int stock=p.getStock();
			 int fin=stock-quantity;
			 p.setStock(fin);
             pdao.update(p);
			 
			 
			 
			 
		mav.addObject("cartinfo",cartdao.findCartList(name));
		}
			
			
			 else
			 {
				 mav=new ModelAndView("LogIn");
				 
			 }
			return mav;
					   
			}
	
	@RequestMapping(value="/CheckOut",method=RequestMethod.GET)
	public ModelAndView checkout(Principal principal)
	{
		ModelAndView mav=new ModelAndView("Checkout");
		String name=principal.getName();
		Users u=udao.getUserByEmail(name);
		List<Cart> cart=cartdao.findCartList(name);
		mav.addObject("user",u);
		mav.addObject("cart",cart);
		return mav;
		
	}
	@RequestMapping(value="/Thankyou",method=RequestMethod.POST)
	public ModelAndView End()
	{
		ModelAndView mav=new ModelAndView("ThankYou");
         return mav;
		
	}
	
	@RequestMapping(value="/deleteCart/{cartid}",method=RequestMethod.GET)
	public ModelAndView removeCart(@PathVariable int cartid,Principal principal)
	{ 	 ModelAndView mav=new ModelAndView("Cart");
		
		String name=principal.getName();

		cartdao.DeleteCartItem(cartid);
		mav.addObject("cartinfo",cartdao.findCartList(name));

		 return mav; 
	}

	
	
}
		
	
	