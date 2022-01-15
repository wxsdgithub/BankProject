package com.cx.bank.model;

public class MoneyBean {
	
	private String username;
	private double yuan;
	
	public MoneyBean(){}
	
	public MoneyBean(double yuan){
		this.yuan = yuan;
		
	}
	
	public MoneyBean(String username, double yuan){
		this.username = username;
		this.yuan = yuan;
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public double getYuan() {
		return yuan;
	}

	public void setYuan(double yuan) {
		this.yuan = yuan;
	}

	@Override
	public String toString() {
		return "MoneyBean [username=" + username + ", yuan=" + yuan + "]";
	}
}
