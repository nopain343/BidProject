package com.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {

	//LOGIN & LOGOUT ------------------------------------------------------
	
	@RequestMapping("/login.go")
	public ModelAndView login(Model model) {
		return new ModelAndView("login");
	}
	
	/*@RequestMapping(value = "/login.sp", method = RequestMethod.POST)
	public ModelAndView loginProc(@ModelAttribute UserVO user) {
		if(service.loginUser(user)) {
			return new ModelAndView("/index.sp");
		}else {
			return new ModelAndView("/login.jsp");
		}
	}*/


	@RequestMapping("/join.go")
	public ModelAndView join(Model model) {
		return new ModelAndView("join");
	}
}


