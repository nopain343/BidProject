package com.sale.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SaleController {
	@RequestMapping(value="/sale.sa")
	public ModelAndView insert() {
		return new ModelAndView("sale");
	}
	
	@RequestMapping(value="/saleUpload.sa", method=RequestMethod.POST)
	public ModelAndView upload() {
		return new ModelAndView("sale");
	}
	
	
}
