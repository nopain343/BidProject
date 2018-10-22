package com.category.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.category.vo.CategoryVO;
@Repository
public class CategoryDAO {
@Autowired
	private SqlSessionFactory factory;

	public List<CategoryVO> categoryList() {
		
		return factory.openSession().selectList("categoryNameSpace.categorylist");
		
	}

}
