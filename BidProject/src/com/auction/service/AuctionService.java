package com.auction.service;

import java.text.SimpleDateFormat;

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
	
	public BidVO maxPrice(String code){
		BidVO vo = dao.maxPrice(code);
		String term = vo.getTerm();
/*		int year = Integer.parseInt(term.substring(0, 2));
		int month = Integer.parseInt(term.substring(2, 4));
		int day = Integer.parseInt(term.substring(4, 6));
		int hour = Integer.parseInt(term.substring(6, 8));
		int min = Integer.parseInt(term.substring(8, 10));
		
		System.out.println("term : " + year + "-" + month + "-" + day + "  " + hour + ":" + min);
		
*/		SimpleDateFormat dateForm = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		

		return vo;
	}

	public boolean auctionProc(BidVO vo) {
		return dao.auctionProc(vo);
	}

}
