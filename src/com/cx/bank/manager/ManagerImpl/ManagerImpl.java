package com.cx.bank.manager.ManagerImpl;

import java.util.List;

import com.cx.bank.dao.BankDaoInterface;
import com.cx.bank.dao.daoimpl.SQLDaoImpl;
import com.cx.bank.manager.Manager;
import com.cx.bank.model.UserBean;
import com.cx.util.AccountOverDrawnException;
import com.cx.util.InvalidDepositException;
import com.cx.util.LoginException;
import com.cx.util.MD5;
import com.cx.util.RegisterException;

public class ManagerImpl implements Manager{
	
	private BankDaoInterface bankDao = new SQLDaoImpl();
	
	private static ManagerImpl instance;
	private ManagerImpl(){
		
	}
	
	public static ManagerImpl getInstance(){
		if(instance == null){
			instance = new ManagerImpl();
		}
		return instance;
	}
	//注册
	public boolean register(String username, String password) throws RegisterException{
		
		UserBean user = bankDao.findByName(username);
		if(user != null) throw new RegisterException("该账号已有人注册了！");
		if(bankDao.insertUser(username, password, 1)) return true;
		else throw new RegisterException("系统故障，请稍后重试");
	}

	//登录
	public boolean login(String username, String password) throws LoginException{
		UserBean user = bankDao.findByName(username);
		if(user == null) throw new LoginException("您的账号有误！");
		MD5 md5 = new MD5();
		String md5Password = md5.getMD5(password);
		if(username.equals(user.getUsername()) && md5Password.equals(user.getPassword()) && user.getFlag() == 1) return true;
		else{
			if(username.equals(user.getUsername()) && password.equals(password) && user.getFlag() == 0){
				throw new LoginException("您的账号已被冻结，请联系管理员！");
			}else{
				throw new LoginException("您的密码有误！");
			}
		}
	}	

	// 查询用户
	public UserBean inquiryUser(String username) {
		return bankDao.findByName(username);
	}
	
	//修改用户
	@Override
	public boolean modifyUser(UserBean user, String username) {
		return bankDao.modifyUser(user, username);
	}
	
	//查询所有用户
	@Override
	public List<UserBean> selectAll() {
		List<UserBean> list = bankDao.selectAll();
		return list;
	}
	
	//查询余额
	public double inquiry(String username){
		return bankDao.inquiry(username);
	}
	
	// 取款
	public boolean withdrawal(String username, double money) throws AccountOverDrawnException{
			try{
				if(bankDao.inquiry(username) < money) {
					throw new AccountOverDrawnException();
				}
				else {
					bankDao.saveMoney(bankDao.findByName(username), bankDao.inquiry(username) - money);
					return true;
				}
			}catch(AccountOverDrawnException e){
			}
			return false;
	}

	// 存款
	public boolean deposit(UserBean user, double money) throws InvalidDepositException{
		if(money < 0) {
			throw new InvalidDepositException("存款不能为负数！");
		}else{
			bankDao.saveMoney(user, bankDao.inquiry(user.getUsername()) + money);
			return true;
		}
	}

	//转账
	public boolean transfer(String username, String transfername, double money){
		if(bankDao.findByName(transfername) == null) return false;
		if(bankDao.inquiry(username) >= money && money >= 0 ){
			bankDao.saveMoney(bankDao.findByName(username), bankDao.inquiry(username) - money);
			bankDao.saveMoney(bankDao.findByName(transfername), bankDao.inquiry(transfername) + money);
			return true;
		}
		return false;
	}
	
	// 退出系统
	public void exitSystem() {
	}
}






