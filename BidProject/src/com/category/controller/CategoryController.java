package com.category.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.category.service.CategoryService;


@Controller
public class CategoryController {
	@Autowired
	CategoryService categoryService;
	
	@RequestMapping(value="/category.ct")
	public ModelAndView list() {

		return new ModelAndView("category", "list", categoryService.categoryList());

	}

	
	
}
