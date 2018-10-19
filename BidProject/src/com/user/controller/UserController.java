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
	
	@RequestMapping("/main.go")
	public ModelAndView main() {
		return new ModelAndView("main");
	}
	
	@RequestMapping("/login.go")
	public ModelAndView login() {
		return new ModelAndView("login");
	}
	
	@RequestMapping(value="/loginProc.go", method=RequestMethod.POST)
	public ModelAndView loginProc(@ModelAttribute UserVO user, HttpServletRequest request) {
		if(service.loginUser(user) != null) {
			HttpSession session = request.getSession();
			session.setAttribute("loginOK", service.loginUser(user));
			return new ModelAndView("main");
		}else {
			return new ModelAndView("login");
		}
	}
	
	@RequestMapping("/logout.go")
	public ModelAndView logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return new ModelAndView("main");
	}
	
	@RequestMapping("/mypage.go")
	public ModelAndView mypage(Model model) {
		return new ModelAndView("mypage");
	}
	
	@RequestMapping("/insert.go")
	public ModelAndView insert(Model model) {
		return new ModelAndView("insert");
	}
	
	@RequestMapping(value="/insertProc.go", method=RequestMethod.POST)
	public ModelAndView insertProc(@ModelAttribute UserVO user) {
		if(service.insertUser(user)) {
			return new ModelAndView("insertOK");
		}
		return null;
	}
	
	@RequestMapping(value="/update.go", method=RequestMethod.POST)
	public ModelAndView update(@ModelAttribute UserVO user, HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.setAttribute("loginOK", service.loginUser(user));
		
		return new ModelAndView("update");
	}
	
	@RequestMapping(value="/updateProc.go", method=RequestMethod.POST)
	public ModelAndView updateProc(@ModelAttribute UserVO user) {
		if(service.updateUser(user)) {
			return new ModelAndView("mypage");
		}
		return new ModelAndView("update");
	}
	
	@RequestMapping(value="/delete.go", method=RequestMethod.POST)
	public ModelAndView delete(@ModelAttribute UserVO user, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String id = ((UserVO)session.getAttribute("loginOK")).getId();
		if(service.deleteUser(id)) {
			session.invalidate();
			return new ModelAndView("deleteOK");
		}
		return null;
	}
}


