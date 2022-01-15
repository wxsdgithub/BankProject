package com.cx.bank.model;

public class UserBean {
	private String username;
	private String password;
	private int flag;

	public UserBean(){
		
	}

	public UserBean(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}

	public UserBean(String username, String password, int flag) {
		super();
		this.username = username;
		this.password = password;
		this.flag = flag;
	}
	
	public int getFlag() {
		return flag;
	}

	public void setFlag(int flag) {
		this.flag = flag;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}

	public String getUsername() {
		return username;
	}
	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "UserBean [username=" + username + ", password=" + password
				+ ", flag=" + flag + "]";
	}

}
