package com.auction.vo;

public class BidVO {
	private String id;
	private String code;
	private String term;
	private int finalPrice;
	
	public BidVO() {
		super();
	}

	public BidVO(String id, String code, String term, int finalPrice) {
		super();
		this.id = id;
		this.code = code;
		this.term = term;
		this.finalPrice = finalPrice;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getTerm() {
		return term;
	}

	public void setTerm(String term) {
		this.term = term;
	}

	public int getfinalPrice() {
		return finalPrice;
	}

	public void setfinalPrice(int finalPrice) {
		this.finalPrice = finalPrice;
	}

}
