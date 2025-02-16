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
import com.dao.PatientDAO;
import com.model.Doctors;

@WebServlet("/savedoctor")
public class SaveDoctor extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String specialization = request.getParameter("specialization");
		String contact = request.getParameter("contact");
		
		Doctors doctors = new Doctors();
		doctors.setName(name);
		doctors.setSpecialization(specialization);
		doctors.setContact(contact);
		
		DoctorDAO dao ;
		
		try {
			dao = new DoctorDAO();
			boolean status=dao.save(doctors);
			
			if(status) {
				dao.commit();
				request.setAttribute("status","Doctor added Successfully...!");
				
			}else {
				dao.rollback();
				request.setAttribute("status","Error in adding Doctor...");
				
			}
			RequestDispatcher dispature = request.getRequestDispatcher("result.jsp");
			dispature.forward(request, response);
			
			
			
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}
		
		
	
		
	}

}
