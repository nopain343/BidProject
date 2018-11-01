package com.auction.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.auction.service.AuctionService;
import com.auction.vo.BidVO;
import com.fasterxml.jackson.databind.ObjectMapper;

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
			return new ModelAndView("auction");
		}
		
		
	}
	

	
	@RequestMapping(value="maxPrice.au", method=RequestMethod.GET)
	@ResponseBody
	public void maxPrice(@RequestParam(value="code") String code,HttpServletResponse response) {
		ObjectMapper mapper = new ObjectMapper();
		
		BidVO vo = service.maxPrice(code);
		
		try {
	        response.getWriter().print(mapper.writeValueAsString(vo));
	    } catch (IOException e) {
	        e.printStackTrace();
	    }	
	}
	
	
	@RequestMapping(value="/auctionProc.au", method=RequestMethod.POST)
	public ModelAndView auctionProc(@ModelAttribute BidVO vo) {
		if(service.auctionProc(vo)) {
			return new ModelAndView("auction");
		}else {
			return new ModelAndView("auction");
		}
	}
}


