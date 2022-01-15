package com.cx.bank.controller;
	
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cx.bank.manager.Manager;
import com.cx.bank.manager.ManagerImpl.ManagerImpl;
import com.cx.bank.model.MoneyBean;
import com.cx.bank.model.UserBean;
public class TransferServlet extends HttpServlet {
		private static final long serialVersionUID = 1L;
			
		
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doPost(request, response);
		}
	
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		Manager manager = ManagerImpl.getInstance();
	    UserBean user = (UserBean) request.getSession().getAttribute("user");
	    MoneyBean moneyBean = (MoneyBean) request.getSession().getAttribute("money");
		double transferMoney = Double.parseDouble(request.getParameter("transfermoney"));
	    String transferName = request.getParameter("transfername");
	
	
	try {
		if(manager.transfer(user.getUsername(), transferName, transferMoney)) {
			moneyBean.setYuan(moneyBean.getYuan() - transferMoney);
			request.setAttribute("message", "转账成功！");
		}else {
			request.setAttribute("message", "转账失败！");
		}
	} catch (Exception e) {
		request.setAttribute("message", e.getMessage());
	}
	
	request.getRequestDispatcher("transfer.jsp").forward(request, response);
			
		}
	
	}
