package com.auction.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.auction.dao.AuctionDao;
import com.auction.vo.AuctionVO;
import com.auction.vo.BidVO;

@Service
public class AuctionService {
	@Autowired
	private AuctionDao dao;
	
	public AuctionVO auction(String code) {
		return dao.auction(code);
	}

	public boolean auctionProc(BidVO vo) {
		return dao.auctionProc(vo);
	}

}
