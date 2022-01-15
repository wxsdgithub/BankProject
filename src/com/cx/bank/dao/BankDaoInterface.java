package com.cx.bank.dao;

import java.util.List;

import com.cx.bank.model.MoneyBean;
import com.cx.bank.model.UserBean;


/*
 * 存储方法说明—saveMoney()：可用于退出系统功能
添加用户方法说明—insertUser()：可用于注册功能
更新方法说明—updateMoney()：可用于转账功能
按名字查找用户说明—findByName ()：可用于注册功能
按用户名和密码查找用户说明—findUser()：可用于登录功能
 */


public interface BankDaoInterface {
	
	//查询余额
	public double inquiry(String username);
	
	//存钱
	public void saveMoney(UserBean user, double money);
	
	//添加用户
	public boolean insertUser(String username, String password, int flag);
	
	//更新钱，用户转账
	public int updateMoney(String username, MoneyBean moneyBean);
	
	//按名字查用户，用于注册
	public UserBean findByName(String username);
	
	//查询所有用户
	public List<UserBean> selectAll();
	
	//修改用户
	public boolean modifyUser(UserBean user, String username);
	
	//按用户名和密码查找用户，用于登录
	public UserBean findUser(String username, String password);
	
}
