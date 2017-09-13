package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.userDao;

import com.niit.model.User;



@Controller
public class HomeController {
	@Autowired
	 userDao dao;
	
	@RequestMapping("/")
	public String first(){
		return "index";
	}
	//it is working now  :)
	
	@RequestMapping(value="/addU",method=RequestMethod.GET)
	public ModelAndView add(){
		ModelAndView mav=new ModelAndView("addUser");
		mav.addObject("cmd",new User());
	   return mav;
	}
	
	@RequestMapping(value="/newUser",method=RequestMethod.POST)
	public String added(@ModelAttribute("cmd") User u){
		System.out.println("megha here");
		dao.saveUser(u);
		System.out.println("priya here");
  	return ("redirect:/addU");
	    
	}
	
	 @RequestMapping(value="/update/{uid}")  
	    public ModelAndView edit(@PathVariable int uid){  
	        User u=dao.getUserId(uid);
	        return new ModelAndView("edit","command",u);  
	        
	    } 
	  @RequestMapping(value="/editsave",method = RequestMethod.POST)  
	    public ModelAndView editsave(@ModelAttribute("command") User u){  
	      dao.update(u);
	        return new ModelAndView("redirect:/addU");  
	    }  
	  
	
	
}
