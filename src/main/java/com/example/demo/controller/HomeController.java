package com.example.demo.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@RequestMapping(value = "/home", method=RequestMethod.GET) 
	@ResponseBody 
	public String goHome(HttpServletRequest request) { 
		System.out.println("enter"); return "Hello String Boot"; 
		
	}
	
	@RequestMapping(value = "/", method=RequestMethod.GET) 
	public String dashboard() { 
		System.out.println("dashboard enter");
		return "/dashboard/ajaxTest"; 
		
	}

}
