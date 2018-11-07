package com.mypage.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.category.vo.CategoryVO;
import com.mypage.vo.TradeVO;

@Repository
public class MypageDAO {
	
	@Autowired
	private SqlSessionFactory factory;
	
	
	public List<CategoryVO> myBid(CategoryVO categoryVO) {
		return factory.openSession().selectList("myPageMapper.view",categoryVO);
	
	}


	public List<CategoryVO> confirm(CategoryVO categoryVO) {
		factory.openSession().update("myPageMapper.update", categoryVO);
		List<CategoryVO> list = factory.openSession().selectList("myPageMapper.viewByCode", categoryVO);
		return list;
	}

	public List<CategoryVO> bidplace(CategoryVO categoryVO) {
		List<CategoryVO> list = factory.openSession().selectList("myPageMapper.bidPlace",categoryVO);
		return list;
	}


	public TradeVO trade(TradeVO tradeVO) {
		TradeVO vo = factory.openSession().selectOne("myPageMapper.trade", tradeVO);
		System.out.println(vo.getFinalPrice());
		System.out.println(vo.getDescrip());
		System.out.println(vo.getPhone_bidder());
		System.out.println(vo.getPhone_seller());
		System.out.println(vo.getProdname());
		System.out.println(vo.getRoadFullAddr_bidder());
		System.out.println(vo.getRoadFullAddr_seller());
		return vo;
	}



}
