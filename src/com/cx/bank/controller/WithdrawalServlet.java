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
import com.cx.util.AccountOverDrawnException;

public class WithdrawalServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private Manager manager = ManagerImpl.getInstance();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Double money = Double.parseDouble(request.getParameter("money"));
		UserBean user = (UserBean) request.getSession().getAttribute("user");
		MoneyBean moneyBean = (MoneyBean) request.getSession().getAttribute("money");
		try{
			if(manager.withdrawal(user.getUsername(), money)){
				moneyBean.setYuan(moneyBean.getYuan() - money);
			}
		}catch(AccountOverDrawnException e){
			request.setAttribute("message", e.getMessage());
		}
		
		request.getRequestDispatcher("withdrawal.jsp").forward(request, response);
		
	}

}
