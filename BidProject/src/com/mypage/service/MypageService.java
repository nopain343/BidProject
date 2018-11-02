package com.mypage.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.auction.vo.BidVO;
import com.category.vo.CategoryVO;
import com.mypage.dao.MypageDAO;

@Service
public class MypageService {
	@Autowired
	private MypageDAO mybidDAO;

	public List<CategoryVO> mybid(CategoryVO categoryVO) {

		return mybidDAO.myBid(categoryVO);
	}
	
//	public BidVO maxPrice(String code){
//		BidVO vo = dao.maxPrice(code);
//		
//		//��¥ ���
//		String term = vo.getTerm();
//		Date today = new Date();
//		SimpleDateFormat dateForm = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//		try {
//			Date dday = dateForm.parse(term);
//			long datetime = dday.getTime();
//			today = dateForm.parse(dateForm.format(today));
//			long todaytime = today.getTime();
//			if((datetime - todaytime)<0) {
//				vo.setTerm("fin");
//				return vo;
//			}
//		
//			long min = (datetime - todaytime) / 60000;
//			long hour = (datetime - todaytime) / 3600000;
//			long date = hour/24;
//
//
//			String ddate = String.valueOf(date);
//			String dhour = null;
//			String dmin = null;
//			if((hour-(date*24))<10) {
//				dhour = "0" + String.valueOf(hour-(date*24));
//			}else {
//				dhour = String.valueOf(hour-(date*24));
//			}
//			if(((min-hour*60)+1)<10) {
//				dmin = "0" + String.valueOf((min-hour*60)+1);
//			}else {
//				dmin = String.valueOf((min-hour*60)+1);
//			}
//				
//			
//			String dtime = ddate + dhour + dmin;
//			vo.setTerm(dtime);
//			
//		} catch (ParseException e) {
//			e.printStackTrace();
//		}
//
//		return vo;
//	}
}
