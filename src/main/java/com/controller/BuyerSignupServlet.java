package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.BuyerDao;
import com.dto.Buyer;
@WebServlet("/buyersignup")
public class BuyerSignupServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int age=Integer.parseInt(req.getParameter("age"));
		if(age>18) {
			BuyerDao dao=new BuyerDao();
			Buyer b=dao.findByEmail(req.getParameter("email"));
			if(b==null) {
				Buyer buyer=new Buyer();
				buyer.setName(req.getParameter("name"));
				buyer.setEmail(req.getParameter("email"));
				buyer.setPassword(req.getParameter("pass"));
				buyer.setGender(req.getParameter("gen"));
				buyer.setPhone(Long.parseLong(req.getParameter("mob")));
				buyer.setBloooGroup(req.getParameter("bg"));
				dao.Save(buyer);
				resp.getWriter().print("<script>alert('Signup sucessfully');</script>");
				req.getRequestDispatcher("buyerLogin.jsp").include(req, resp);
			}
			else {
				resp.getWriter().print("<script>alert('Email is in use- Try to Login');</script>");
				req.getRequestDispatcher("buyerLogin.jsp").include(req, resp);
			}
			
			
		}
		else {
			resp.getWriter().print("<script>alert('You are under 18');</script>");
			req.getRequestDispatcher("buyerSignup.jsp").include(req, resp);
		}
	}
}
