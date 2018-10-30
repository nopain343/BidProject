package com.auction.dao;

import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.auction.vo.BidVO;
import com.category.vo.CategoryVO;

@Repository
public class AuctionDao {
	@Autowired
	private SqlSessionFactory factory;
	
	public CategoryVO auction(String code) {
		CategoryVO vo = factory.openSession().selectOne("auctionMapper.view", code);
		return vo;
	}

	public BidVO maxPrice(String code) {
		BidVO vo = factory.openSession().selectOne("auctionMapper.maxPrice", code);
		return vo;
	}
	
	public boolean auctionProc(BidVO vo) {
		int n = factory.openSession().insert("auctionMapper.bidPlace", vo);
		return n > 0 ? true : false;
	}
	
}
