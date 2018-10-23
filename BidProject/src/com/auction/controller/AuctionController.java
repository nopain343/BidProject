package com.auction.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.auction.service.AuctionService;

@Controller
public class AuctionController {
	@Autowired
	AuctionService service;
	
	@RequestMapping("/auction.au")
	public ModelAndView auction() {
		return new ModelAndView("auction");
	}
	
//	@RequestMapping(value="/loginProc.go", method=RequestMethod.POST)
//	public ModelAndView loginProc(@ModelAttribute UserVO user, HttpServletRequest request) {
//		if(service.loginUser(user) != null) {
//			HttpSession session = request.getSession();
//			session.setAttribute("loginOK", service.loginUser(user));
//			return new ModelAndView("main");
//		}else {
//			return new ModelAndView("login");
//		}
//	}
	
}


