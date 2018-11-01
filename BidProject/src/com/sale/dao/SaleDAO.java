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
//		vo.setCode(code);
		vo.setTerm(categoryVO.getTerm());
		vo.setFinalPrice(categoryVO.getPrice());
		
		System.out.println("11111");
		
		if(vo.getCat1().equals("AA")) {
			factory.openSession().insert("auctionMapper.bidPlaceA", vo);
		}else if(vo.getCat1().equals("BB")) {
			factory.openSession().insert("auctionMapper.bidPlaceB", vo);
		}else if(vo.getCat1().equals("CC")) {
			factory.openSession().insert("auctionMapper.bidPlaceC", vo);
		}else if(vo.getCat1().equals("DD")) {
			factory.openSession().insert("auctionMapper.bidPlaceD", vo);
		}else if(vo.getCat1().equals("EE")) {
			factory.openSession().insert("auctionMapper.bidPlaceE", vo);
		}else if(vo.getCat1().equals("FF")) {
			factory.openSession().insert("auctionMapper.bidPlaceF", vo);
		}else if(vo.getCat1().equals("GG")) {
			factory.openSession().insert("auctionMapper.bidPlaceG", vo);
		}else if(vo.getCat1().equals("HH")) {
			factory.openSession().insert("auctionMapper.bidPlaceH", vo);
		}
		
		
		int n;
		if(categoryVO.getCat1().equals("AA")) {
			n = factory.openSession().insert("saleNameSpace.saleInsertAA", categoryVO);
			return (n > 0) ? true : false;
		}else if(categoryVO.getCat1().equals("BB")) {
			n = factory.openSession().insert("saleNameSpace.saleInsertBB", categoryVO);
			return (n > 0) ? true : false;
		}else if(categoryVO.getCat1().equals("CC")) {
			n = factory.openSession().insert("saleNameSpace.saleInsertCC", categoryVO);
			return (n > 0) ? true : false;
		}else if(categoryVO.getCat1().equals("DD")) {
			n = factory.openSession().insert("saleNameSpace.saleInsertDD", categoryVO);
			return (n > 0) ? true : false;
		}else if(categoryVO.getCat1().equals("EE")) {
			n = factory.openSession().insert("saleNameSpace.saleInsertEE", categoryVO);
			return (n > 0) ? true : false;
		}else if(categoryVO.getCat1().equals("FF")) {
			n = factory.openSession().insert("saleNameSpace.saleInsertFF", categoryVO);
			return (n > 0) ? true : false;
		}else if(categoryVO.getCat1().equals("GG")) {
			n = factory.openSession().insert("saleNameSpace.saleInsertGG", categoryVO);
			return (n > 0) ? true : false;
		}else if(categoryVO.getCat1().equals("HH")) {
			n = factory.openSession().insert("saleNameSpace.saleInsertHH", categoryVO);
			return (n > 0) ? true : false;
		}
		
		return false;
		
	}
}
