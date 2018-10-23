package com.auction.dao;

import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.user.vo.UserVO;

@Repository
public class AuctionDao {
//	@Autowired
//	private SqlSessionFactory factory;
//	
//	public UserVO loginUser(UserVO user) {
//		UserVO vo = factory.openSession().selectOne("bidMapper.loginUser", user);
//		return vo;
//	}
	
	
//	public boolean deleteUser(String id) {
//		int n = factory.openSession().delete("bidMapper.deleteUser", id);
//		return (n > 0) ? true : false;
//	}

}
