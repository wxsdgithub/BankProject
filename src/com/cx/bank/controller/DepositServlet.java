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
import com.cx.util.InvalidDepositException;

public class DepositServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Manager manager = ManagerImpl.getInstance();
		Double money = Double.parseDouble(request.getParameter("money"));
		UserBean user = (UserBean) request.getSession().getAttribute("user");
		MoneyBean moneyBean = (MoneyBean) request.getSession().getAttribute("money");
		
		try {
			if(manager.deposit(user, money)) {
				moneyBean.setYuan(moneyBean.getYuan() + money);
				request.setAttribute("message", "存款成功！");
			}
		} catch (InvalidDepositException e) {
			request.setAttribute("message", e.getMessage());
		}
		
		request.getRequestDispatcher("deposit.jsp").forward(request, response);
		
	}

}
