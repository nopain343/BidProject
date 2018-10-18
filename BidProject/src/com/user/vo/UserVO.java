package com.user.vo;

public class UserVO {
	private String id;
	private String password;
	private String address;
	private String phone;
	private String username;
	
	public UserVO() {
		super();
	}

	public UserVO(String id, String password, String address, String phone, String username) {
		super();
		this.id = id;
		this.password = password;
		this.address = address;
		this.phone = phone;
		this.username = username;
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

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	
}
