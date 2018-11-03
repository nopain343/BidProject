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
		vo.setCat1(categoryVO.getCat1());
		vo.setId(categoryVO.getId());
		vo.setTerm(categoryVO.getTerm());
		vo.setFinalPrice(categoryVO.getPrice());
		
		
		int n;
		if(categoryVO.getCat1().equals("AA")) {
			n = factory.openSession().insert("saleNameSpace.saleInsertAA", categoryVO);
			factory.openSession().insert("auctionMapper.bidPlaceA", vo);
			factory.openSession().selectOne("saleNameSpace.code", categoryVO);
			return (n > 0) ? true : false;
		}else if(categoryVO.getCat1().equals("BB")) {
			n = factory.openSession().insert("saleNameSpace.saleInsertBB", categoryVO);
			factory.openSession().insert("auctionMapper.bidPlaceB", vo);
			factory.openSession().selectOne("saleNameSpace.code", categoryVO);
			return (n > 0) ? true : false;
		}else if(categoryVO.getCat1().equals("CC")) {
			n = factory.openSession().insert("saleNameSpace.saleInsertCC", categoryVO);
			factory.openSession().insert("auctionMapper.bidPlaceC", vo);
			factory.openSession().selectOne("saleNameSpace.code", categoryVO);
			return (n > 0) ? true : false;
		}else if(categoryVO.getCat1().equals("DD")) {
			n = factory.openSession().insert("saleNameSpace.saleInsertDD", categoryVO);
			factory.openSession().insert("auctionMapper.bidPlaceD", vo);
			factory.openSession().selectOne("saleNameSpace.code", categoryVO);
			return (n > 0) ? true : false;
		}else if(categoryVO.getCat1().equals("EE")) {
			n = factory.openSession().insert("saleNameSpace.saleInsertEE", categoryVO);
			factory.openSession().insert("auctionMapper.bidPlaceE", vo);
			factory.openSession().selectOne("saleNameSpace.code", categoryVO);
			return (n > 0) ? true : false;
		}else if(categoryVO.getCat1().equals("FF")) {
			n = factory.openSession().insert("saleNameSpace.saleInsertFF", categoryVO);
			factory.openSession().insert("auctionMapper.bidPlaceF", vo);
			factory.openSession().selectOne("saleNameSpace.code", categoryVO);
			return (n > 0) ? true : false;
		}else if(categoryVO.getCat1().equals("GG")) {
			n = factory.openSession().insert("saleNameSpace.saleInsertGG", categoryVO);
			factory.openSession().insert("auctionMapper.bidPlaceG", vo);
			factory.openSession().selectOne("saleNameSpace.code", categoryVO);
			return (n > 0) ? true : false;
		}else if(categoryVO.getCat1().equals("HH")) {
			n = factory.openSession().insert("saleNameSpace.saleInsertHH", categoryVO);
			factory.openSession().insert("auctionMapper.bidPlaceH", vo);
			factory.openSession().selectOne("saleNameSpace.code", categoryVO);
			return (n > 0) ? true : false;
		}
		
		return false;
		
	}
}
