package com.cx.bank.controller;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
	public class ExitSystemServlet extends HttpServlet {
		private static final long serialVersionUID = 1L;
		
	
		public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doPost(request, response);
		}
	
		public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			request.getRequestDispatcher("login.jsp").forward(request, response);
			
		}
	
	}
