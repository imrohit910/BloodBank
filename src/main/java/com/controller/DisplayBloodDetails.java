package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dao.BloodGroupDao;
import com.dto.BloodGroup;
import com.dto.Admin;

@WebServlet("/displayBloodDetails")
public class DisplayBloodDetails extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Admin admin = (Admin) req.getSession().getAttribute("admin");
		if (admin != null) {
			String bloodgroup = req.getParameter("id");
			BloodGroupDao dao = new BloodGroupDao();
			BloodGroup bgroup = dao.findByBloodGroup(bloodgroup);
			if (bgroup != null) {
				req.getSession().setAttribute("bgroup", bgroup);
				req.getRequestDispatcher("bloodGroupTable.jsp").include(req, resp);
			} else {
				resp.getWriter().print("<script>alert('Blood group not found');</script>");
				req.getRequestDispatcher("adminBloodDetails.jsp").include(req, resp);
			}
		} 
		else {
			resp.getWriter().print("<script>alert('Admin Login First');</script>");
			req.getRequestDispatcher("adminLogin.jsp").include(req, resp);
		}

	}
}
