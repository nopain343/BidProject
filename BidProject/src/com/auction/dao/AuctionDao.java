package com.auction.dao;

import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.auction.vo.AuctionVO;

@Repository
public class AuctionDao {
	@Autowired
	private SqlSessionFactory factory;
	
	public AuctionVO auction(String code) {
		AuctionVO vo = factory.openSession().selectOne("auctionMapper.view", code);
		return vo;
	}

	public boolean auctionProc(int finalPrice) {
		int n = factory.openSession().insert("auctionMapper.bidPlace", finalPrice);
		return n > 0 ? true : false;
	}
	
	
//	public boolean deleteUser(String id) {
//		int n = factory.openSession().delete("bidMapper.deleteUser", id);
//		return (n > 0) ? true : false;
//	}

}
