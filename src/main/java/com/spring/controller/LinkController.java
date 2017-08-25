package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LinkController {
	
	@RequestMapping(value="/")
	public ModelAndView mainPage() {
		System.out.println("inside home1");
		return new ModelAndView("home");
	}
	
	@RequestMapping(value="/home")
    public String getAllIncs() {
        return "listInc";   
    }
	@RequestMapping(value="/inc/create")
    public String getCreateIncs() {
		System.out.println("inside create");
        return "createInc";   
    }
	@RequestMapping(value="/inc/search")
    public String getSeachPage() {
		System.out.println("inside search page");
        return "search";   
    }
 
}
