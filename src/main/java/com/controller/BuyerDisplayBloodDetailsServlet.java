package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.BloodGroupDao;
import com.dto.BloodGroup;
import com.dto.DonerSignup;
import java.util.List;
@WebServlet("/buyerdisplaybloodDetails")
public class BuyerDisplayBloodDetailsServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String bloodgroup=req.getParameter("id");
		BloodGroupDao dao=new BloodGroupDao();
		BloodGroup bgroup= dao.findByBloodGroup(bloodgroup);
		if(bgroup!=null) {
			List<DonerSignup> listOfDonor=bgroup.getDonerSignups();
			req.getSession().setAttribute("list", listOfDonor);
			resp.getWriter().print("<h1>"+bloodgroup+"</h1>");
			req.getRequestDispatcher("buyerBloodDetailsTable.jsp").include(req, resp);
		}
		else {
			resp.getWriter().print("<h1>"+bloodgroup+" not available </h1>");
			req.getRequestDispatcher("buyerBloodDetails.jsp").include(req, resp);
		}
	}
}
