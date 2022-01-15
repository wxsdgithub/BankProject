package com.cx.util;

import java.io.IOException;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class CharsetEncodingFilter  implements Filter {
       
	private String encoding;
	
	public void init(FilterConfig fConfig) throws ServletException {
		this.encoding = "UTF-8";
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
	
		HttpServletRequest req = (HttpServletRequest)request;
		
		HttpServletResponse res = (HttpServletResponse)response;
		
		req.setCharacterEncoding(this.encoding);
		chain.doFilter(req, res);

	}

	public void destroy() {
	}
}
