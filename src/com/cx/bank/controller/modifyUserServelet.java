
  package com.cx.bank.controller;
  
  import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cx.bank.manager.Manager;
import com.cx.bank.manager.ManagerImpl.ManagerImpl;
import com.cx.bank.model.UserBean;

  /**
   * 
   * @author Administrator
   *  完成对修改请求的控制
   */
  
   public class modifyUserServelet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req,resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		   UserBean user =new UserBean();
		   user.setUsername(req.getParameter("username"));
		   user.setPassword(req.getParameter("password"));
		   user.setFlag(Integer.parseInt(req.getParameter("flag")));
		   String username = req.getParameter("username");
		   
		    
		   Manager manager = ManagerImpl.getInstance();
		   boolean flag=manager.modifyUser(user,username);
		if(flag)
		{	 List<UserBean> list = manager.selectAll();
			if(list != null){
				req.getSession().setAttribute("user", list);
				req.getRequestDispatcher("userInfo.jsp").forward(req, resp);
				return;
			}
			req.getRequestDispatcher("login.jsp").forward(req, resp);
			return;
		}else{
			req.getRequestDispatcher("userInfo.jsp").forward(req, resp);
			return;
		}
		 
	  }
	
    }
