package com.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.user.dao.UserDao;
import com.user.vo.UserVO;

@Service
public class UserService {
	@Autowired
	private UserDao dao;
	
	public UserVO loginUser(UserVO user) {
		return dao.loginUser(user);
	}

	public boolean insertUser(UserVO user) {
		return dao.insertUser(user);
	}
}
