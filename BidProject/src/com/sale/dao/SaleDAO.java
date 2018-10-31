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
