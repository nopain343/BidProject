package com.category.service;

import java.util.List;

import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.category.dao.CategoryDAO;
import com.category.vo.CategoryVO;

@Service
public class CategoryService {
	@Autowired
	private CategoryDAO categoryDAO;
	
	public List<CategoryVO> categoryList(int page) {
		
		return categoryDAO.categoryList(page);

	}
	
	public List<CategoryVO> getCategory(int page, String cat1) {
		return categoryDAO.getCategory(page, cat1);
	}
	
	
	
//ī�װ��� main ��ȯ	
	public List<CategoryVO> getlist(CategoryVO vo) {

		return categoryDAO.getlist(vo);
	}

}
