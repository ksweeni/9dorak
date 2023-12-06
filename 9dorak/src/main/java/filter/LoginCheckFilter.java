//package com.shinhan.filter;
//
//import java.io.IOException;
//
//import javax.servlet.Filter;
//import javax.servlet.FilterChain;
//import javax.servlet.FilterConfig;
//import javax.servlet.ServletException;
//import javax.servlet.ServletRequest;
//import javax.servlet.ServletResponse;
//import javax.servlet.annotation.WebFilter;
//import javax.servlet.http.HttpFilter;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
///**
// * Servlet Filter implementation class LoginCheckFilter
// */
////@WebFilter("*.do")
//public class LoginCheckFilter extends HttpFilter implements Filter {
//
//	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
//			throws IOException, ServletException {
//		
//		HttpServletRequest req = (HttpServletRequest)request;
//		HttpServletResponse resp = (HttpServletResponse)response;
//		
//		String loginPath = "/auth/loginCheck.do";
//		String register = "/emp/empInsert.do";
//
//		if(!req.getServletPath().equals(loginPath) && 
//			!req.getServletPath().equals(register)) {
//			HttpSession session = req.getSession();
//			Object obj = session.getAttribute("empInfo");
//			if (obj == null) {
//				resp.sendRedirect(req.getContextPath() + loginPath);
//				return;
//			}			
//		}
//		chain.doFilter(request, response);
//	}
//
//}
