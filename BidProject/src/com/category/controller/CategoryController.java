package com.category.controller;

import java.util.List;

import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.category.service.CategoryService;
import com.category.vo.CategoryVO;


@Controller
public class CategoryController {
	@Autowired
	CategoryService categoryService;

	@RequestMapping(value = "category.ct", method = RequestMethod.GET)
	public @ResponseBody List<CategoryVO> category(@RequestParam("cat1") String id) {
		System.out.println("controller¿‘º∫");
		System.out.println(id);
		List<CategoryVO> list = categoryService.getCategory();
		System.out.println(list);
		return list;
		
	}
	
}
