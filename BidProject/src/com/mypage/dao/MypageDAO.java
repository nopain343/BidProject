package com.mypage.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.category.vo.CategoryVO;
@Repository
public class MypageDAO {
	
	@Autowired
	private SqlSessionFactory factory;
	
	
	public List<CategoryVO> myBid(CategoryVO categoryVO) {
		System.out.println("dao?");
		categoryVO.getId();
		categoryVO.getDescrip();
		return factory.openSession().selectList("myPageMapper.mybid",categoryVO);
	
	}

}
