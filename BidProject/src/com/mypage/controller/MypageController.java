package com.mypage.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.category.vo.CategoryVO;
import com.mypage.service.MypageService;
@Controller
public class MypageController {
	
	@Autowired
	private MypageService mybidService;
	
	
	@RequestMapping(value="/myBid.go" , method=RequestMethod.GET)
	public ModelAndView list(@ModelAttribute CategoryVO categoryVO) {
		return new ModelAndView("myBid","list",mybidService.mybid(categoryVO));
	}
	
	
//	@RequestMapping(value="maxPrice.au", method=RequestMethod.GET)
//	@ResponseBody
//	public void maxPrice(@RequestParam(value="code") String code,HttpServletResponse response) {
//		ObjectMapper mapper = new ObjectMapper();
//		
//		BidVO vo = service.maxPrice(code);
//		
//		try {
//	        response.getWriter().print(mapper.writeValueAsString(vo));
//	    } catch (IOException e) {
//	        e.printStackTrace();
//	    }	
//	}
	
	
//	@RequestMapping(value="/mymodi.go" , method=RequestMethod.POST)
//	public ModelAndView modify(@ModelAttribute CategoryVO categoryVO) {
//		
//		System.out.println("modi controller");
//		
//		
//		return new ModelAndView("sale");
//	}
}
