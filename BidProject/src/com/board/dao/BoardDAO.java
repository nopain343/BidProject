package com.board.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.board.dto.BoardDTO;
import com.board.dto.paging;

@Repository
public class BoardDAO {
	private static BoardDAO instance;
	paging paging;
	@Autowired
	private SqlSessionFactory factory;

	public List<BoardDTO> boardList(int pg) {
		List<BoardDTO> list = factory.openSession().selectList("boardNameSpace.boardlist", pg);
		
		int n = factory.openSession().selectOne("boardNameSpace.totalCount");
		list.get(0).setTotal(n);
		
		return list;
	}

	
	public boolean insert(BoardDTO boardDTO) {
		int n = factory.openSession().insert("boardNameSpace.insert", boardDTO);
		return (n > 0) ? true : false;
	}

	public List<BoardDTO> boardView(BoardDTO boardDTO) {

		return factory.openSession().selectList("boardNameSpace.boardView", boardDTO);

	}

	public List<BoardDTO> modify(BoardDTO boardDTO) {

		return factory.openSession().selectList("boardNameSpace.modify", boardDTO);

	}

	public boolean update(BoardDTO boardDTO) {
		int n = factory.openSession().update("boardNameSpace.update", boardDTO);
		return (n > 0) ? true : false;
	}

	public List<BoardDTO> delete(BoardDTO boardDTO) {
		return factory.openSession().selectList("boardNameSpace.delete", boardDTO);
	}


	public void updatehit(int seq) {
		int n = factory.openSession().update("boardNameSpace.updatehit", seq);
	}

	
	public static BoardDAO getInstance() {
		if(instance==null){
			synchronized(BoardDAO.class){
				instance = new BoardDAO();
			}			
		}
		return instance;
	}

}
