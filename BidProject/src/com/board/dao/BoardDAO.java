package com.board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.board.dto.BoardDTO;
@Repository
public class BoardDAO {
	private static BoardDAO instance;
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
		int n = factory.openSession().update("boardNameSpace.updatehit", boardDTO.getSeq());
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




}
