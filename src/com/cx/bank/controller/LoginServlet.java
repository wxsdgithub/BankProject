	
	package com.cx.bank.controller;
	
	import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jdk.internal.org.objectweb.asm.tree.TryCatchBlockNode;

import com.cx.bank.dao.BankDaoInterface;
import com.cx.bank.manager.Manager;
import com.cx.bank.manager.ManagerImpl.ManagerImpl;
import com.cx.bank.model.MoneyBean;
import com.cx.bank.model.UserBean;
import com.cx.util.LoginException;
	
	public class LoginServlet extends HttpServlet {
		
		private static final long serialVersionUID = 1L;
		
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doPost(request, response);
		}
	    
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
			String username = request.getParameter("username");
		
	String password = request.getParameter("password");
	   Manager manager = ManagerImpl.getInstance();
	   try{
		   if(manager.login(username, password)) {
			    if(username.equals("admin")) {
			    	List<UserBean> list = manager.selectAll();
			    	if(list != null){
			    		request.getSession().setAttribute("user", list);
			    		request.getRequestDispatcher("ManagerHome.jsp").forward(request, response);
				    	return;
			    	}
			    	request.getRequestDispatcher("login.jsp").forward(request, response);
			    	return;
			    }
				UserBean user = new UserBean(username, password);
				request.getSession().setAttribute("user", user);
				MoneyBean money = new MoneyBean(username,manager.inquiry(username));
				request.getSession().setAttribute("money", money);
				request.getRequestDispatcher("Home.jsp").forward(request, response);
				return ; 
			}
	   }catch(LoginException e){
		   request.setAttribute("message", e.getMessage());
		request.getRequestDispatcher("login.jsp").forward(request, response);
	   }
	}
}
