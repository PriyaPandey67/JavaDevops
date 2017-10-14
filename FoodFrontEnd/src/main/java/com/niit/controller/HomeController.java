package com.niit.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CategoryDao;
import com.niit.dao.ProductDao;
import com.niit.dao.userDao;
import com.niit.model.Product;
import com.niit.model.Users;

@Controller
public class HomeController {
@Autowired
CategoryDao cdao;
@Autowired
ProductDao pdao;
@Autowired
userDao udao;


	@RequestMapping(value = "/")
	public String start() {
		return "homeAdmin";
	}

	@RequestMapping(value = "/homeAdmin")
	public String start1() {
		return "homeAdmin";
	}

	@RequestMapping(value = "/login")
	public String login() {
		return "LogIn";
	}
	
	@ModelAttribute
	public void Add(Model m) {
		m.addAttribute("productlist", pdao.getProductList());
		m.addAttribute("cat", cdao.getCategoryList());
	}
	
	
	
	
	
	@RequestMapping(value="/Registeruser",method=RequestMethod.GET)	
		public ModelAndView register(){
		ModelAndView mav=new ModelAndView();
		mav.addObject("user",new Users());
		mav.setViewName("signIn");
		return mav;
	}
	
	@RequestMapping(value="/saveuser",method=RequestMethod.POST)
	public ModelAndView saveuser(@Valid @ModelAttribute("user")Users user,BindingResult result){
		ModelAndView mav=new ModelAndView();
		if(result.hasErrors())
		{
			mav.setViewName("signIn");
			return mav;
		}
		else{
			user.setRole("User");
			udao.saveUser(user);
			mav.setViewName("redirect:/login");
			return mav;
		}
	}
	
	}

