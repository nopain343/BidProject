package com.mypage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ban.vo.BanVO;
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
		return new ModelAndView("myBidPlace","list", mybidService.bidplace(categoryVO));
	}
	
	
	@RequestMapping(value="/banyou.go" , method=RequestMethod.POST)
	public ModelAndView banyou(@ModelAttribute BanVO bann) {
		BanVO ban = bann;
		switch(bann.getReason()) {
		case "1" :  ban.setReason("연락 두절"); break;
		case "2" :  ban.setReason("추가 가격 인상 요구"); break;
		case "3" :  ban.setReason("제품 불량 및 미배송"); break;
		}
		ban.setBuyer_id("jin");
		ban.setSeller_name("내가 넣은 이름");
		boolean success = mybidService.banyou(ban);
		System.out.println("컨트롤러 insert 끝 이제 마이페이지");
		return new ModelAndView("mypage");
	}
	

	@RequestMapping(value="/banready.go", method=RequestMethod.GET)
	public ModelAndView banready(@ModelAttribute BanVO ban) {
		return new ModelAndView("banready","ban",ban);
	}
	
	@RequestMapping(value="/bantest.go", method=RequestMethod.POST)
	public ModelAndView bantest(@RequestParam(value="code") String code) {
		System.out.println("bantest : " + code);
		return new ModelAndView("mypage");
	}
	
}
