package com.mypage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.category.vo.CategoryVO;
import com.mypage.service.MypageService;
import com.mypage.vo.TradeVO;

@Controller
public class MypageController {
	
	@Autowired
	private MypageService mybidService;
	
	
	@RequestMapping(value="/myBid.go" , method=RequestMethod.GET)
	public ModelAndView list(@ModelAttribute CategoryVO categoryVO) {
		return new ModelAndView("myBid","list",mybidService.mybid(categoryVO));
	}
	
	
	@RequestMapping(value="/confirm.go", method=RequestMethod.GET)
	public ModelAndView confirm(@ModelAttribute CategoryVO categoryVO) {
		return new ModelAndView("myBid","list", mybidService.confirm(categoryVO));
	}
	
	@RequestMapping(value="/trade.go", method=RequestMethod.GET)
	public ModelAndView trade(@ModelAttribute TradeVO tradeVO) {
		return new ModelAndView("trade","vo", mybidService.trade(tradeVO));
	}
	
	
	@RequestMapping(value="/myBidPlace.go", method=RequestMethod.GET)
	public ModelAndView place(@ModelAttribute CategoryVO categoryVO) {
		return new ModelAndView("myBidPlace","list",mybidService.bidplace(categoryVO));
	}
	
	
	
//	@RequestMapping(value="/mymodi.go" , method=RequestMethod.POST)
//	public ModelAndView modify(@ModelAttribute CategoryVO categoryVO) {
//		
//		System.out.println("modi controller");
//		
//		
//		return new ModelAndView("sale");
//	}
}
