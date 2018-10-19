package com.user.vo;

public class UserVO {
	private String id;
	private String password;
	private String roadFullAddr;
	private String phone;
	private String username;
	private String pwquestion;
	private String pwanswer;
	
	public UserVO() {
		super();
	}

	public UserVO(String id, String password, String roadFullAddr, String phone, String username, String pwquestion,
			String pwanswer) {
		super();
		this.id = id;
		this.password = password;
		this.roadFullAddr = roadFullAddr;
		this.phone = phone;
		this.username = username;
		this.pwquestion = pwquestion;
		this.pwanswer = pwanswer;
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

	public String getRoadFullAddr() {
		return roadFullAddr;
	}

	public void setRoadFullAddr(String roadFullAddr) {
		this.roadFullAddr = roadFullAddr;
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

	public String getPwquestion() {
		return pwquestion;
	}

	public void setPwquestion(String pwquestion) {
		this.pwquestion = pwquestion;
	}

	public String getPwanswer() {
		return pwanswer;
	}

	public void setPwanswer(String pwanswer) {
		this.pwanswer = pwanswer;
	}

	
	
}
