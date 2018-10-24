package com.auction.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.auction.service.AuctionService;

@Controller
public class AuctionController {
	@Autowired
	AuctionService service;
	
	@RequestMapping(value="/auction.au", method=RequestMethod.GET)
	public ModelAndView auction(@RequestParam(value="code") String code, HttpServletRequest request) {
		if(service.auction(code) != null) {
			System.out.println("1");
			HttpSession session = request.getSession();
			System.out.println("2");
			session.setAttribute("auction", service.auction(code));
			System.out.println("3");
			return new ModelAndView("auction");
		}else {
			return new ModelAndView("auctionFail");
		}
	}
	
}

