package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dao.DonersignupDao;
import com.dto.DonerSignup;
import com.dto.BloodGroup;
import java.util.List;
@WebServlet("/deleteDonorSignup")
public class DeleteDonorSignupServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int donorId=Integer.parseInt(req.getParameter("id"));
		DonersignupDao dao= new DonersignupDao();
		DonerSignup donor= dao.findDonorByID(donorId);
		BloodGroup bgroup=donor.getBloodGroup();
		donor.setBloodGroup(null);
		List list=bgroup.getDonerSignups();
		list.remove(donor);
		dao.deleteDonorSignup(donor);
		resp.getWriter().print("<h1>Id:"+donorId+" -deleted</h1>");
		req.getSession().setAttribute("bgroup",bgroup );
		req.getRequestDispatcher("bloodGroupTable.jsp").include(req, resp);
		
	}
}
