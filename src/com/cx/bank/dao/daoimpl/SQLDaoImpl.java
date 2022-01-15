package com.cx.bank.dao.daoimpl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.cx.bank.dao.BankDaoInterface;
import com.cx.bank.model.MoneyBean;
import com.cx.bank.model.UserBean;
import com.cx.util.DB;
import com.cx.util.MD5;
import com.mysql.jdbc.PreparedStatement;

public class SQLDaoImpl implements BankDaoInterface{
	private Connection conn = null;
	private Statement sta = null;
	private ResultSet rs = null;
	private String sql = null;
	private PreparedStatement pstmt = null;
	
	//通过名字查询余额
	@Override
	public double inquiry(String username) {
		sql="select * from user_money where username='"+ username +"'";
		conn = DB.getConn();
		try {
			sta = conn.createStatement();
			rs = sta.executeQuery(sql);
			while(rs.next()){
				return rs.getDouble("yuan");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DB.closeRs(rs);
			DB.closeStmt(sta);
			DB.closeConn(conn);
		}
		return 0;
	}
	
	//存钱
	@Override
	public void saveMoney(UserBean user, double money) {
		try  {
			//sql_1是用来判断该用户是否在user_money这张表里
			String sql_1 ="select * from user_money where username='"+user.getUsername()+"'";
			conn = DB.getConn();
			pstmt = (PreparedStatement) conn.prepareStatement(sql_1);
			rs = pstmt.executeQuery(sql_1);
			String username = null;
			while(rs.next()){
				username = rs.getString("username");
			}
			if(user.getUsername().equals(username)){
			sql="update user_money set yuan = '"+ money +"' where username = '"+ user.getUsername()+"'";
			pstmt = (PreparedStatement) conn.prepareStatement(sql);
			pstmt.executeUpdate(sql);
			}else{
				sql="insert into user_money (username,yuan) values ('"+ user.getUsername()+"','"+
				money +"')";
				pstmt = (PreparedStatement) conn.prepareStatement(sql);
				pstmt.executeUpdate(sql);
			}
		}
		catch (Exception e) {
		   e.printStackTrace();  
		} finally {
			DB.closeRs(rs);
			DB.closeStmt(sta);
			DB.closeConn(conn);
		}
	}
	
	//添加用户
	@Override
	public boolean insertUser(String username, String password, int flag) {
		try  {
			MD5 md5 = new MD5();
			String md5Password = md5.getMD5(password);
			sql="insert into user (username,password,flag) values ('"+ username+"','"+
					md5Password +"','"+flag+"')";
				
			conn = DB.getConn();
			pstmt = (PreparedStatement) conn.prepareStatement(sql);
			pstmt.executeUpdate(sql);
			return true;
		}
		catch (Exception e) {
		   e.printStackTrace();  
		} finally {
			DB.closeRs(rs);
			DB.closeStmt(sta);
			DB.closeConn(conn);
		}
		return false;
	}
	
	//更新钱
	@Override
	public int updateMoney(String username, MoneyBean moneyBean) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	//通过用户名找用户
	@Override
	public UserBean findByName(String username) {
		sql="select * from user where username='"+ username +"'";
		conn = DB.getConn();
		try {
			sta = conn.createStatement();
			rs = sta.executeQuery(sql);
			while(rs.next()){
				String password = rs.getString(2);
				int flag = rs.getInt("flag");
				UserBean user = new UserBean(username, password, flag);
				return user;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DB.closeRs(rs);
			DB.closeStmt(sta);
			DB.closeConn(conn);
		}
		return null;
	}
	
	//通过用户名和密码找用户
	@Override
	public UserBean findUser(String username, String password) {
		// TODO Auto-generated method stub
		return null;
	}
	
	//查询所有用户
	@Override
	public List<UserBean> selectAll() {
		List<UserBean> list = new ArrayList<UserBean>();
		sql = "select * from user";
		conn = DB.getConn();
		try {
			sta = conn.createStatement();
			rs = sta.executeQuery(sql);
			while(rs.next()){
				list.add(new UserBean(rs.getString("username"), rs.getString("password"),
						rs.getInt("flag")));
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DB.closeRs(rs);
			DB.closeStmt(sta);
			DB.closeConn(conn);
		}
		return null;
	}

	
	//修改用户
	@Override
	public boolean modifyUser(UserBean user, String username) {
		sql = "update user set password='"+user.getPassword()+"', flag='"+ user.getFlag()+"' where username='"+username+"'";
		conn = DB.getConn();
		try {
			sta = conn.createStatement();
			sta.executeUpdate(sql);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DB.closeStmt(sta);
			DB.closeConn(conn);
		}
		return false;
	}
}
