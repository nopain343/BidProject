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
	
	

	@RequestMapping("/mypage.mp")
	public ModelAndView mypage() {
		return new ModelAndView("mypage");
	}
	
// ≥ªªÛ«∞«ˆ»≤
	@RequestMapping(value="/myBid.mp" , method=RequestMethod.GET)
	public ModelAndView list(@ModelAttribute CategoryVO categoryVO) {
		return new ModelAndView("myBid","list",mybidService.mybid(categoryVO));
	}
	
	
	@RequestMapping(value="/confirm.mp", method=RequestMethod.GET)
	public ModelAndView confirm(@ModelAttribute CategoryVO categoryVO) {
		return new ModelAndView("myBid","list", mybidService.confirm(categoryVO));
	}
	
	@RequestMapping(value="/trade.mp", method=RequestMethod.GET)
	public ModelAndView trade(@ModelAttribute TradeVO tradeVO) {
		
		return new ModelAndView("trade","vo", mybidService.trade(tradeVO));
	}
	
// ≥ª ¿‘¬˚ «ˆ»≤
	@RequestMapping(value="/myBidPlace.mp", method=RequestMethod.GET)
	public ModelAndView place(@ModelAttribute CategoryVO categoryVO) {
		return new ModelAndView("myBidPlace","list", mybidService.bidplace(categoryVO));
	}
	
	
	@RequestMapping(value="/banyou.mp" , method=RequestMethod.POST)
	public ModelAndView banyou(@ModelAttribute BanVO bann) {
		BanVO ban = bann;
		switch(bann.getReason()) {
		case "1" :  ban.setReason("Ïó∞ÎùΩ ÎëêÏ†à"); break;
		case "2" :  ban.setReason("Ï∂îÍ∞Ä Í∞ÄÍ≤© Ïù∏ÏÉÅ ÏöîÍµ¨"); break;
		case "3" :  ban.setReason("Ï†úÌíà Î∂àÎüâ Î∞è ÎØ∏Î∞∞ÏÜ°"); break;
		}
		boolean success = mybidService.banyou(ban);
		return new ModelAndView("mypage");
	}
	

	@RequestMapping(value="/banready.mp", method=RequestMethod.GET)
	public ModelAndView banready(@ModelAttribute BanVO ban) {
		return new ModelAndView("banready","ban",ban);
	}
	
	@RequestMapping(value="/banlist.mp")
	public ModelAndView bantest() {
		return new ModelAndView("banlist","list",mybidService.banlist());
	}
	
}
