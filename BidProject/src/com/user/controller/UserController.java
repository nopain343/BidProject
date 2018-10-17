package com.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.user.service.UserService;
import com.user.vo.UserVO;

@Controller
public class UserController {
	@Autowired
	UserService service;
	
	
	@RequestMapping(value="/main.go")
	public ModelAndView main() {
		return new ModelAndView("main");
	}
	
	@RequestMapping(value="/login.go")
	public ModelAndView login() {
		return new ModelAndView("login");
	}
	
	@RequestMapping(value = "/loginProc.go", method = RequestMethod.POST)
	public ModelAndView loginProc(@ModelAttribute UserVO user, HttpServletRequest request) {
		if(service.loginUser(user)) {
			HttpSession session = request.getSession();
			session.setAttribute("logOK", user);
			
			return new ModelAndView("main");
		}else {
			return new ModelAndView("/login.go");
		}
	}
	

	@RequestMapping("/join.go")
	public ModelAndView join(Model model) {
		return new ModelAndView("join");
	}
}


