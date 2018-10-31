package com.mypage.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.category.vo.CategoryVO;
import com.mypage.service.MypageService;
@Controller
public class MypageController {
	
	@Autowired
	private MypageService mybidService;
	
	@RequestMapping(value="/myBid.go" , method=RequestMethod.GET)
	public ModelAndView list(@ModelAttribute CategoryVO categoryVO) {
		CategoryVO categoryVo = new CategoryVO();
		List<CategoryVO> list = mybidService.mybid(categoryVo);
		return new ModelAndView("myBid", "list", list);
	}

}
