package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CategoryDao;
import com.niit.dao.ProductDao;
import com.niit.dao.SupplierDao;
import com.niit.dao.userDao;
import com.niit.model.Product;
import com.niit.model.Users;

@Controller
//@RequestMapping(value="/user") 
public class UserController {
	@Autowired
	userDao dao;
	@Autowired
	CategoryDao Cdao;
	@Autowired
	ProductDao pdao;

	@Autowired
	SupplierDao sdao;

	
	@RequestMapping(value = "/viewCatPro/{catid}")///for images
	public ModelAndView viewProCat(@PathVariable int catid) {
		List<Product> list = pdao.getProCategory(catid);
		System.out.println(catid);
		
		return new ModelAndView("Product", "catlist", list);

	}
	
	@RequestMapping(value = "/viewProDes/{pid}")///for  product details
	public ModelAndView viewProCatDes(@PathVariable int pid) {
		ModelAndView mav=new ModelAndView("ProDetails");
		//ModelAndView mav=new ModelAndView("ProDes");
		System.out.println(pid);
		Product p=pdao.getProDescription(pid);
		mav.addObject("pro",p);
		return mav;

	}

	
	
	
	
	
		

	@RequestMapping(value = "/addU", method = RequestMethod.GET)
	public ModelAndView add() {
		ModelAndView mav = new ModelAndView("signIn");
		mav.addObject("cmd", new Users());
		return mav;
	}

	@RequestMapping(value = "/newUser", method = RequestMethod.POST)
	public String added(@ModelAttribute("cmd") Users u) {
		System.out.println("megha here");
		dao.saveUser(u);
		System.out.println("priya here");
		return "homeAdmin";

	}

}
