package com.category.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.category.service.CategoryService;
import com.category.vo.CategoryVO;
@Controller
public class CategoryController {
	@Autowired
	CategoryService categoryService;
	
	
/*	@RequestMapping(value="/category.ct", method = RequestMethod.GET)
	public ModelAndView list(@ModelAttribute CategoryVO categoryVO) {
		CategoryVO categoryVo = new CategoryVO();
		return new ModelAndView("category", "cate", categoryService.categoryList());
	}
*/
	
	
	
	
	
}
