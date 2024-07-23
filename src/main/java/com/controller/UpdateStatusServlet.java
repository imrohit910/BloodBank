package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.BloodGroupDao;
import com.dao.DonersignupDao;
import com.dto.BloodGroup;
import com.dto.DonerSignup;
@WebServlet("/updateStatus")
public class UpdateStatusServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int donorId=Integer.parseInt(req.getParameter("id"));
		DonersignupDao dao=new DonersignupDao();
		DonerSignup donor=dao.findDonorByID(donorId);
		if(donor.getStatus().equals("IN_ACTIVE")) {
			donor.setStatus("ACTIVE");
			dao.updateDonor(donor);
		}
		else if(donor.getStatus().equals("ACTIVE")) {
			donor.setStatus("IN_ACTIVE");
			dao.updateDonor(donor);
		}
		
		//get BloodGroupId
		int bloodGroupId = donor.getBloodGroup().getId();
		
		//based on bloodGroupId fetch BloodGroupObject from databse
		
		BloodGroupDao dao1=new BloodGroupDao();//blood Group object
		BloodGroup bgroup=dao1.findBloodGroupByID(bloodGroupId);
		//set into session
		resp.getWriter().print("<h1>Id:"+donorId+" -updated</h1>");
		req.getSession().setAttribute("bgroup", bgroup);
		req.getRequestDispatcher("bloodGroupTable.jsp").include(req, resp);
		
	}
}
