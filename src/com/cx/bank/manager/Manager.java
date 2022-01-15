package com.cx.bank.manager;

import java.util.List;

import com.cx.bank.model.UserBean;


public interface Manager {
	//注册
	public boolean register(String username, String password);
	
	//登录
	public boolean login(String username, String password);
	
	// 查询余额
	public double inquiry(String username);
	
	//查用户
	public UserBean inquiryUser(String username);
	
	//修改用户
	public boolean modifyUser(UserBean user, String username);
	
	//查询所有用户
	List<UserBean> selectAll();

	// 取款
	public boolean withdrawal(String username, double money);

	// 存款
	public boolean deposit(UserBean user, double money);
	
	//转账
	public boolean transfer(String username, String transfername, double money);
	
	// 退出系统
	public void exitSystem();
	
	
}
