package com.auction.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.auction.dao.AuctionDao;
import com.auction.vo.AuctionVO;

@Service
public class AuctionService {
	@Autowired
	private AuctionDao dao;
	
	public AuctionVO auction(String code) {
		return dao.auction(code);
	}


	public boolean auctionProc(int finalPrice) {
		return dao.auctionProc(finalPrice);
	}

	
	
//	public boolean insertUser(UserVO user) {
//		return dao.insertUser(user);
//	}

}
