package com.user.dao;

import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.user.vo.UserVO;

@Repository
public class UserDao {
	@Autowired
	private SqlSessionFactory factory;
	
	public UserVO loginUser(UserVO user) {
		UserVO vo = factory.openSession().selectOne("bidMapper.loginUser", user);
		return vo;
	}
	
	public boolean insertUser(UserVO user) {
		int n = factory.openSession().insert("bidMapper.insertUser", user);
		return (n > 0) ? true : false;
	}
}
