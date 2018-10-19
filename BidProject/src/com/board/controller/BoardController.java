package com.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.board.dto.BoardDTO;
import com.board.service.BoardListService;

@Controller
public class BoardController {
	@Autowired
	BoardListService boardListService;

	@RequestMapping("/qna.bd")
	public ModelAndView list() {
		return new ModelAndView("boardList", "list", boardListService.boardList());
	}

	/*
	 * @RequestMapping(value = "/login.sp", method = RequestMethod.POST) public
	 * ModelAndView loginProc(@ModelAttribute UserVO user) {
	 * if(service.loginUser(user)) { return new ModelAndView("/index.sp"); }else {
	 * return new ModelAndView("/login.jsp"); } }
	 */

	@RequestMapping(value = "/write.bd")
	public ModelAndView insert() {
		return new ModelAndView("boardWrite");
	}

	@RequestMapping(value = "/write_proc.bd", method = RequestMethod.POST)
	public ModelAndView write(@ModelAttribute BoardDTO boardDTO) {
		if (boardListService.insert(boardDTO)) {
			return list();
		} else {
			return new ModelAndView("boardList", "list", boardListService.boardList());
		}
	}

	@RequestMapping(value = "/boardview.bd", method = RequestMethod.GET)
	public ModelAndView view(@ModelAttribute BoardDTO boardDTO) {
		BoardDTO viewDto = new BoardDTO();
		viewDto = boardListService.boardView(boardDTO).get(0);

		return new ModelAndView("boardView", "view", viewDto);
	}

	@RequestMapping(value = "/modify.bd", method = RequestMethod.GET)
	public ModelAndView modify(@ModelAttribute BoardDTO boardDTO) {
		BoardDTO modifyDto = new BoardDTO();
		modifyDto = boardListService.modify(boardDTO).get(0);

		return new ModelAndView("boardModify", "modify", modifyDto);
	}

	@RequestMapping(value = "/modify_proc.bd", method = RequestMethod.POST)
	public ModelAndView update(@ModelAttribute BoardDTO boardDTO) {
		if (boardListService.update(boardDTO)) {
			return list();
		} else {
			return new ModelAndView("boardList", "list", boardListService.boardList());
		}
	}
	
	@RequestMapping(value = "/delete.bd", method = RequestMethod.GET)
	public ModelAndView delete(@ModelAttribute BoardDTO boardDTO) {
		boardListService.delete(boardDTO);
		
		return new ModelAndView("boardList", "list", boardListService.boardList());

	}

}
