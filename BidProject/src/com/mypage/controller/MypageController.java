package com.mypage.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
		
			
			
			
//			String id= request.getParameter("id");
			//public ModelAndView list(@RequestParam("id") String id) {	
		
		 //public ModelAndView list(HttpServletRequest request,@RequestParam(value="id") String id) {
			
	/*		CategoryVO categoryVo = new CategoryVO();
			List<CategoryVO> list = mybidService.mybid(categoryVo);
			
			return new ModelAndView("myBid", "list", list);
			*/

		
	}

}
