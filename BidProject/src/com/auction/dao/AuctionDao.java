package com.auction.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.auction.vo.AuctionVO;
import com.auction.vo.BidVO;
import com.auction.vo.ReplyVO;

@Repository
public class AuctionDao {
	@Autowired
	private SqlSessionFactory factory;
	
	public AuctionVO auction(String code) {
		AuctionVO vo = factory.openSession().selectOne("auctionMapper.view", code);
		return vo;
	}
	public List<ReplyVO> reply(String code) {
		List<ReplyVO> list = factory.openSession().selectOne("auctionMapper.reply", code);
		
		int n = factory.openSession().selectOne("auctionMapper.replyTotal", code);
		list.get(0).setTotal(n);
		
		return list;
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
