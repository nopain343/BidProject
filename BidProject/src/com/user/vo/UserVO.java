package com.user.vo;

public class UserVO {
	private String id;
	private String password;
	private String address;
	private String phone;
	private String nickname;
	
	public UserVO() {
		super();
	}

	public UserVO(String id, String password, String address, String phone, String nickname) {
		super();
		this.id = id;
		this.password = password;
		this.address = address;
		this.phone = phone;
		this.nickname = nickname;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
}
