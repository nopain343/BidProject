package com.sale.dao;

import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.category.vo.CategoryVO;

@Repository
public class SaleDAO {
	@Autowired
	private SqlSessionFactory factory;
	
	public boolean insert(CategoryVO categoryVO) {
		System.out.println("dao");
		System.out.println(categoryVO.getDescrip());
		int n = factory.openSession().insert("saleNameSpace.saleInsert", categoryVO);
				return (n > 0) ? true : false;
	}
}
