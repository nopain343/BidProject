package com.auction.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.auction.dao.AuctionDao;
import com.auction.vo.BidVO;
import com.category.vo.CategoryVO;

@Service
public class AuctionService {
	@Autowired
	private AuctionDao dao;
	
	public CategoryVO auction(String code) {
		return dao.auction(code);
	}
	
	public BidVO maxPrice(String code){
		BidVO vo = dao.maxPrice(code);
		
		//날짜 계산
		String term = vo.getTerm();
		Date today = new Date();
		
		
		SimpleDateFormat dateForm = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			Date dday = dateForm.parse(term);
			long datetime = dday.getTime();
			today = dateForm.parse(dateForm.format(today));
			long todaytime = today.getTime();
			
			long min = (datetime - todaytime) / 60000;
			long hour = (datetime - todaytime) / 3600000;
			long date = hour/24;
			
			/*
			System.out.println("남은 일수 : " + date);
			System.out.println("남은 시간 : " + (hour-(date*24)));
			System.out.println("남은 분 : " + ((min-hour*60)+1));
			*/
			String ddate = String.valueOf(date);
			String dhour = String.valueOf(hour-(date*24));
			String dmin = String.valueOf((min-hour*60)+1);
			
			
			
			String dtime = ddate + dhour + dmin;
			System.out.println(dtime);
			vo.setTerm(dtime);
			
		} catch (ParseException e) {
			e.printStackTrace();
		}

		return vo;
	}

	public boolean auctionProc(BidVO vo) {
		return dao.auctionProc(vo);
	}

}
