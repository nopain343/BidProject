package com.sale.dao;

import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class SaleDAO {
	@Autowired
	private SqlSessionFactory factory;
	
/*	public List<SaleVO> saleList() {
		List<SaleVO> list = factory.openSession().selectList("saleNameSpace.boardlist");
		return factory.openSession().selectList("boardNameSpace.list");
	}
	
	*/
	
	
	public boolean insert() {
		System.out.println("dao");
		int n = factory.openSession().insert("saleNameSpace.insert");
		
		return (n > 0) ? true : false;
	}
	
}
