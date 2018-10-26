package com.auction.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.auction.dao.AuctionDao;
import com.auction.vo.BidVO;
import com.category.vo.CategoryVO;

@Service
public class AuctionService {
	@Autowired
	private AuctionDao dao;
	
	public CategoryVO auction(String code) {
		return dao.auction(code);
	}
	
	public int maxPrice(String code) {
		return dao.maxPrice(code);
	}

	public boolean auctionProc(BidVO vo) {
		return dao.auctionProc(vo);
	}

}
