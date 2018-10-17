package com.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.board.service.BoardListService;


@Controller
public class BoardController {
	@Autowired
	BoardListService boardListService;
	
	
	//LOGIN & LOGOUT ------------------------------------------------------
	

	@RequestMapping("/qna.bd")
	public ModelAndView login(Model model) {

		return new ModelAndView("test","list",boardListService.boardList());
	}
	
	/*@RequestMapping(value = "/login.sp", method = RequestMethod.POST)
	public ModelAndView loginProc(@ModelAttribute UserVO user) {
		if(service.loginUser(user)) {
			return new ModelAndView("/index.sp");
		}else {
			return new ModelAndView("/login.jsp");
		}
	}*/


}


