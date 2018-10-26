package com.sale.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.category.service.CategoryService;
import com.category.vo.CategoryVO;
import com.sale.service.SaleService;


@Controller
public class SaleController {
	@Autowired
	SaleService saleService;
	@Autowired
	CategoryService categoryService;
	
	@RequestMapping("/sale.sa")
	public ModelAndView list() {
		return new ModelAndView("/WEB-INF/sale/sale.jsp");
	}
	
	
	@RequestMapping(value="/saleUpload.sa", method=RequestMethod.POST)
	public ModelAndView insert(@ModelAttribute CategoryVO categoryVO) {
		System.out.println("controlller");
		System.out.println(categoryVO.getDescrip());
		
		if(saleService.insert(categoryVO)) {
			return new ModelAndView ("/WEB-INF/view/main.jsp","list", categoryService.categoryList(1));
			//	return new ModelAndView("main","bool",categoryService.insert(categoryVO));
		}else {
			return new ModelAndView("sale");
		}
	}
	
	
	
}
