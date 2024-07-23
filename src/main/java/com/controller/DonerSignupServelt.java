package com.controller;

import java.io.IOException;


import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.DonersignupDao;
import com.dto.DonerSignup;


@WebServlet("/donerSignUp")
public class DonerSignupServelt extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String password = req.getParameter("pass");
		Long phone = Long.parseLong(req.getParameter("mob"));
		Date DOB = Date.valueOf(req.getParameter("dob"));
		int age = Integer.parseInt(req.getParameter("age"));
		String bloodgroup = req.getParameter("bg");
		String Gender = req.getParameter("gen");

		if(age>18) {
			DonersignupDao dao=new DonersignupDao();
			DonerSignup doner=dao.findDonorByEmail(email);
			if(doner==null) {
				DonerSignup donerSignup=new DonerSignup();
				donerSignup.setName(name);
				donerSignup.setEmail(email);
				donerSignup.setPassword(password);
				donerSignup.setPhone(phone);
				donerSignup.setDob(DOB);
				donerSignup.setAge(age);
				donerSignup.setBgroup(bloodgroup);
				donerSignup.setGender(Gender);
				dao.save(donerSignup);
				resp.getWriter().print("<script>alert('Doner signup succesfull');</script>");
				req.getRequestDispatcher("donerlogin.jsp").include(req,resp);
			}
			else {
				resp.getWriter().print("<script>alert('Email is in use, Try another email or login');</script>");
				req.getRequestDispatcher("donerlogin.jsp").include(req,resp);
			}
			
		}
		else {
			resp.getWriter().print("<script>alert('You are under 18');</script>");
			req.getRequestDispatcher("donerSignup.jsp").include(req, resp);
			
		}
	}

}
