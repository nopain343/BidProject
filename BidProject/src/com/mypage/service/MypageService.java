package com.mypage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.category.vo.CategoryVO;
import com.mypage.dao.MypageDAO;

@Service
public class MypageService {
	@Autowired
	private MypageDAO mybidDAO;

	public List<CategoryVO> mybid(CategoryVO categoryVO) {

		return mybidDAO.myBid(categoryVO);
	}
	
	
	
}
