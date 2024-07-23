package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.Admin;

@WebServlet("/AdminLogin")
public class AdminLoginServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String user=req.getParameter("name");
		String pass=req.getParameter("pass");
		PrintWriter p=resp.getWriter();
		Admin admin=new Admin();
		admin.setUsername(user);
		admin.setPassword(pass);
		if(user.equals("admin")&&pass.equals("admin")) {
			req.getSession().setAttribute("admin", admin);
			resp.getWriter().print("<script>alert('Admin Login Sucessfull');</script>");
			req.getRequestDispatcher("adminBloodDetails.jsp").include(req, resp);
		}
		else {
			resp.getWriter().print("<script>alert('Login Failed - Enter correct admin credentials');</script>");
			req.getRequestDispatcher("adminLogin.jsp").include(req, resp);
		}
	}
}
