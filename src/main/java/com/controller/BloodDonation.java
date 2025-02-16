package com.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.DoctorDAO;
import com.model.Blood;

@WebServlet("/donation")
public class BloodDonation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	        String name = request.getParameter("name");
	        String bloodtype = request.getParameter("bloodtype");
	        String contact = request.getParameter("contact");
	        
	        Blood donation = new Blood();
	        donation.setName(name);
	        donation.setBloodtype(bloodtype);
	        donation.setContact(contact);
	        
	        DoctorDAO dao ; 
	        
	        try {
				dao = new DoctorDAO();
				boolean status=dao.save(donation);
				if(status) {
					dao.commit();
					request.setAttribute("status","Donor added Successfully...!");
				}else {
					dao.rollback();
					request.setAttribute("status","Error in adding ...!");
				}
				RequestDispatcher dispature = request.getRequestDispatcher("result.jsp");
				dispature.forward(request, response);
				
				
				
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        
	}

}
