package com.mypage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ban.vo.BanVO;
import com.category.vo.CategoryVO;
import com.mypage.dao.MypageDAO;
import com.mypage.vo.TradeVO;

@Service
public class MypageService {
	@Autowired
	private MypageDAO mybidDAO;

	public List<CategoryVO> mybid(CategoryVO categoryVO) {

		return mybidDAO.myBid(categoryVO);
	}

	public List<CategoryVO> confirm(CategoryVO categoryVO) {
		return mybidDAO.confirm(categoryVO);
	}
	
	
	public List<CategoryVO> bidplace(CategoryVO categoryVO) {
		return mybidDAO.bidplace(categoryVO);
	}

	public TradeVO trade(TradeVO tradeVO) {
		return mybidDAO.trade(tradeVO);
	}

	public boolean banyou(BanVO ban) {
		
		return mybidDAO.banyou(ban);
	}

	public List<BanVO> banlist() {
		return mybidDAO.banlist();
	}

}
