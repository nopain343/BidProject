package com.mypage.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.auction.vo.BidVO;
import com.category.vo.CategoryVO;
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


		public List<BidVO> bidplace(CategoryVO categoryVO) {
		categoryVO.setId("'"+categoryVO.getId()+"'");
		return factory.openSession().selectList("myPageMapper.bidplace",categoryVO);
	}


}
