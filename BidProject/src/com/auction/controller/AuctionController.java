package com.auction.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.auction.service.AuctionService;
import com.auction.vo.BidVO;

@Controller
public class AuctionController {
	@Autowired
	AuctionService service;
	
	@RequestMapping(value="/auction.au", method=RequestMethod.GET)
	public ModelAndView auction(@RequestParam(value="code") String code, HttpServletRequest request) {
		if(service.auction(code) != null) {
			HttpSession session = request.getSession();
			session.setAttribute("auction", service.auction(code));
			return new ModelAndView("auction");
		}else {
			return new ModelAndView("auctionFail");
		}
	}
	
	@RequestMapping(value="/auctionProc.au", method=RequestMethod.POST)
	public ModelAndView auctionProc(@ModelAttribute BidVO vo, HttpServletRequest request) {
		if(service.auctionProc(vo)) {
			return new ModelAndView("auctionOK");
		}else {
			return new ModelAndView("auctionFail");
		}
	}
}


