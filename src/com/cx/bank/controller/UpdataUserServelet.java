
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
   * 完成对更新请求的控制
   */
   public class UpdataUserServelet extends HttpServlet{
   private static final long serialVersionUID = 1L;
   protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req,resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String username =req.getParameter("username");
		Manager manager=ManagerImpl.getInstance();
		UserBean user=manager.inquiryUser(username);
		req.setAttribute("user",user);
        req.getRequestDispatcher("Update.jsp").forward(req, resp);
	 
		}
	
   }

