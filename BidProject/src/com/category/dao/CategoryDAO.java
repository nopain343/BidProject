package com.category.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.category.vo.CategoryVO;
@Repository
public class CategoryDAO {
	@Autowired
	private SqlSessionFactory factory;

	public List<CategoryVO> categoryList(int page) {
		System.out.println(page);
		return factory.openSession().selectList("categoryNameSpace.categorylist", page);
		
	}

	public List<CategoryVO> getCategory(String cat1) {
		Connection conn=null;
		List<CategoryVO> list = null;	
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection(
					"jdbc:oracle:thin:@192.168.0.68:1521:xe",
					"bidproject", "1234");
			System.out.println("立加 己傍!!!");
		}catch(Exception e){
			e.printStackTrace();		
		}
		
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try{
			pstmt=conn.prepareStatement("SELECT * FROM SALES WHERE CAT1 = ?");
			pstmt.setString(1, cat1);
			rs=pstmt.executeQuery();
			
		
			list = new ArrayList();
			
			while(rs.next())
			{
				CategoryVO vo = new CategoryVO();
				vo.setProdname(rs.getString("PRODNAME"));
				vo.setPrice(rs.getInt("PRICE"));
				vo.setCondition(rs.getString("CONDITION"));
				vo.setRef(rs.getString("REF"));
				vo.setTerm(rs.getString("TERM"));
				vo.setCode(rs.getString("CODE"));
				list.add(vo);
			}		
			
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			try{
				rs.close();
				pstmt.close();
				conn.close();
			}catch(SQLException e){}
		}
		return list;	
	}
	
	/*public JSONArray getCategory() {
		Connection conn=null;
		JSONArray jArray = null;	
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection(
					"jdbc:oracle:thin:@192.168.0.68:1521:xe",
					"bidproject", "1234");
			System.out.println("立加 己傍!!!");
		}catch(Exception e){
			e.printStackTrace();		
		}
		
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try{
			pstmt=conn.prepareStatement("SELECT * FROM SALES");
			rs=pstmt.executeQuery();
			
		
			jArray = new JSONArray();
			
			while(rs.next())
			{
				JSONObject jObject = new JSONObject();
				jObject.put("prodname",rs.getString("PRODNAME"));
				jObject.put("price",rs.getString("PRICE"));
				jObject.put("condition",rs.getString("CONDITION"));
				
				jArray.add(jObject);
			}		
			
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			try{
				rs.close();
				pstmt.close();
				conn.close();
			}catch(SQLException e){}
		}
		return jArray;	
	}*/
	
}
