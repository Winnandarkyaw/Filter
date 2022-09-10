package com.wnk.filter.demo;

import java.io.IOException;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
@WebFilter("/employee/*")
public class EmployeeFilter implements Filter{


	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {
      HttpServletRequest req=(HttpServletRequest)arg0;
      var session=req.getSession(true);
      var user=(String)session.getAttribute("user");
      var role=(String)session.getAttribute("role");
      if(null !=user && null !=role && ("Employee".equals(role) || "Manager".equals(role))) {
    	  arg2.doFilter(arg0, arg1);
      }
      else {
    	  req.setAttribute("message", "You have to login with name & role.");
    	  req.getServletContext().getRequestDispatcher("/index.jsp").forward(arg0, arg1);
      }
	}

}
