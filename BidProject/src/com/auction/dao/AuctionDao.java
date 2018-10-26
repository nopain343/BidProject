package com.auction.dao;

import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.auction.vo.AuctionVO;
import com.auction.vo.BidVO;

@Repository
public class AuctionDao {
	@Autowired
	private SqlSessionFactory factory;
	
	public AuctionVO auction(String code) {
		AuctionVO vo = factory.openSession().selectOne("auctionMapper.view", code);
		return vo;
	}

	public boolean auctionProc(BidVO vo) {
		int n = factory.openSession().insert("auctionMapper.bidPlace", vo);
		System.out.println("22");
		return n > 0 ? true : false;
	}
	
}
