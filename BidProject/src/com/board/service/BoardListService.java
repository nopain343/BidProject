package com.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.board.dao.BoardDAO;
import com.board.dto.BoardDTO;

@Service
public class BoardListService{	
	@Autowired
	private BoardDAO boardDAO;

	public List<BoardDTO> boardList() {
		return boardDAO.boardList();
	}

	public boolean insert(BoardDTO boardDTO) {
		return boardDAO.insert(boardDTO);
	}

	public List<BoardDTO> boardView(BoardDTO boardDTO) {
		return boardDAO.boardView(boardDTO);
	}


}
