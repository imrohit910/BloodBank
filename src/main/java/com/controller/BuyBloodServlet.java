package com.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.BloodGroupDao;
import com.dao.DonersignupDao;
import com.dto.BloodGroup;
import com.dto.DonerSignup;
import com.dto.Buyer;

@WebServlet("/buyBlood")
public class BuyBloodServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int bloodId=Integer.parseInt(req.getParameter("id"));
		//fetch Blood by id
		BloodGroupDao dao=new BloodGroupDao();
		BloodGroup bgroup=dao.findBloodGroupByID(bloodId);
		
		Buyer b=(Buyer)req.getSession().getAttribute("buyer");
		List<Buyer>listofBuyer=bgroup.getBuyerlist();
		if(!listofBuyer.isEmpty()) {
			listofBuyer.add(b);
			bgroup.setBuyerlist(listofBuyer);//mapping
			dao.updateBloodGroup(bgroup);
		}
		else {
			//create new list
			ArrayList<Buyer>newList=new ArrayList<>();
			newList.add(b);
			bgroup.setBuyerlist(newList);//mapping
			dao.updateBloodGroup(bgroup);
		}
		//change Status from active to sold
		
		int donerId=Integer.parseInt(req.getParameter("donerId"));
		DonersignupDao dao1= new DonersignupDao();
		DonerSignup donor=dao1.findDonorByID(donerId);
		donor.setStatus("SOLD");
		//update in database
		dao1.updateDonor(donor);
		req.getSession().setAttribute("donor", donor);
		req.getRequestDispatcher("thanku.jsp").include(req, resp);
	}
}
