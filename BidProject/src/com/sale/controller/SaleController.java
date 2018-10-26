package com.sale.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sale.service.SaleListService;
import com.sale.vo.SaleVO;

@Controller
public class SaleController {
	SaleListService saleListService;
	
	
	@RequestMapping(value="/sale.sa")
	public ModelAndView list() {
		return new ModelAndView("sale");
	}
	
	
	@RequestMapping(value="/saleUpload.sa", method=RequestMethod.POST)
	public ModelAndView insert(@ModelAttribute SaleVO saleVO) {
		
		if(saleListService.insert()) {
			return new ModelAndView("main");
		}else {
			return new ModelAndView("sale","list",saleListService.insert());
		}
		
		
	}
	
	
}
