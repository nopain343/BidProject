package com.sale.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.category.vo.CategoryVO;
import com.sale.dao.SaleDAO;

@Service
public class SaleService {
	@Autowired	
	private SaleDAO saleDAO;
	
	public boolean insert(CategoryVO categoryVO) {
		return saleDAO.insert(categoryVO);
		
		
	}

}
