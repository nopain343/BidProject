package com.sale.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.category.vo.CategoryVO;
import com.sale.service.SaleService;
import com.sale.validate.UploadFile;


@Controller
public class SaleController {
	@Autowired
	SaleService saleService;
	
	@RequestMapping(value="/sale.sa", method=RequestMethod.GET)
	public String view(@ModelAttribute UploadFile uploadFile) {
		return "sale/sale";
	}
	
	@RequestMapping(value="/saleUpload.sa", method=RequestMethod.POST)
	public ModelAndView insert(@ModelAttribute CategoryVO categoryVO) {
		if(saleService.insert(categoryVO)) {
			return new ModelAndView ("sale/saleOK");
		}else {
			return new ModelAndView("sale");
		}
	}
	
	
	
}
