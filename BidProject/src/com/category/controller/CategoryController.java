package com.category.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.category.service.CategoryService;
import com.category.vo.CategoryVO;
import com.category.vo.CatogoryPaging;

@Controller
public class CategoryController {
	@Autowired
	CategoryService categoryService;

	@RequestMapping(value = "main.ct", method = RequestMethod.GET)
	public ModelAndView category(@ModelAttribute CategoryVO vo, HttpServletRequest request) {
				
		List<CategoryVO> list = categoryService.getlist(vo);
		list.get(0).setPage(1);
		CatogoryPaging.categorycheck = true;
		return new ModelAndView("/WEB-INF/view/main.jsp", "list", list);
		
	}
	
	
	@RequestMapping(value = "paging.ct", method = RequestMethod.GET)
	public @ResponseBody List<CategoryVO> category(@RequestParam("page") int page,@RequestParam("cat1") String cat1) {
		System.out.println("controller입성");
		List<CategoryVO> list = categoryService.getCategory(page, cat1);
		System.out.println("controller 현재카테고리 : " + cat1);
		System.out.println(list);
		return list;
		
	}
}
