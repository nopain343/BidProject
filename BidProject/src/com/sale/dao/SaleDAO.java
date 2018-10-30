package com.sale.dao;

import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.auction.vo.BidVO;
import com.category.vo.CategoryVO;

@Repository
public class SaleDAO {
	@Autowired
	private SqlSessionFactory factory;
	
	public boolean insert(CategoryVO categoryVO) {
		BidVO vo = new BidVO();
		vo.setId(categoryVO.getId());
		vo.setCode(categoryVO.getCode());
		vo.setTerm(categoryVO.getTerm());
		vo.setFinalPrice(categoryVO.getPrice());
		
		factory.openSession().insert("auctionMapper.bidPlace", vo);
		
		int n = factory.openSession().insert("saleNameSpace.saleInsert", categoryVO);
		return (n > 0) ? true : false;
	}
}
