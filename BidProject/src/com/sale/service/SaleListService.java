package com.sale.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sale.dao.SaleDAO;

@Service
public class SaleListService {
	@Autowired
	private SaleDAO saleDAO;
	
	public boolean insert() {
		return saleDAO.insert();
	}



	}


