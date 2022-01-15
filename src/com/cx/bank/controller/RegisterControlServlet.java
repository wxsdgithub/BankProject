package com.cx.bank.controller;
	
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cx.bank.manager.Manager;
import com.cx.bank.manager.ManagerImpl.ManagerImpl;
import com.cx.util.LoginException;
	public class RegisterControlServlet extends HttpServlet {
		private static final long serialVersionUID = 1L;
	       
		public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doPost(request, response);
		}
		public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		//这里用到单例
		Manager manager = ManagerImpl.getInstance();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		try {
			if(manager.register(username, password)) { 
				manager.deposit(manager.inquiryUser(username), 10);
				request.setAttribute("message", "注册成功");
			}
		} catch (LoginException e) {
			request.setAttribute("message", e.getMessage());
		}
		
		request.getRequestDispatcher("login.jsp").forward(request, response);
		
	}
	
}
