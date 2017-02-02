package com.github.getaway.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.github.getaway.model.Login;

@Controller
public class LocController {
	
	@RequestMapping(value="/searchspot.do", method=RequestMethod.POST)
	public String statesearch(Model model) {
		
		return "places";
	}

}
