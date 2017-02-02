package com.github.getaway.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.github.getaway.model.Login;
import com.github.getaway.model.UserLogin;
import com.github.getaway.service.LoginService;

@Controller
@SessionAttributes("user")
public class LoginController {
	
	@Autowired
	private LoginService userService;
	
	@RequestMapping(value="/signup", method=RequestMethod.GET)
	public String signup(Model model) {
		Login user = new Login();
		model.addAttribute("user", user);
		return "signup";
	}
	
	@RequestMapping(value="/signup", method=RequestMethod.POST)
	public String signup(@ModelAttribute("user") Login user, Model model) {
		if(userService.getuserByUserName(user.getUsername())) {
			model.addAttribute("message", "User Name exists. Try another user name");
			return "signup";
		} else {
			userService.insertuser(user);
			model.addAttribute("message", "Saved user details");
			return "redirect:login.html";
		}
	}
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login(Model model) {
		UserLogin userLogin = new UserLogin();
		model.addAttribute("userLogin", userLogin);
		return "login";
	}
	
	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public String login(@RequestParam("usrname") String username,@RequestParam("pwd") String pwd) {
		boolean found = userService.getuserByLogin(username,pwd);
		if (found) {				
			return "userhome";
		} else {				
			return "failure";
		}
	}
	
	@RequestMapping(value="/spot", method=RequestMethod.POST)
	public String statesearch(Model model) {
		
		return "places";
	}
}
