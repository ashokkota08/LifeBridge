package com.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.PatientDAO;
import com.model.Patient;

@WebServlet("/savepatient")
public class SavePatient extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	String name=	request.getParameter("name");
	int age = Integer.parseInt( request.getParameter("age"));
	String gender = request.getParameter("gender");
	String address = request.getParameter("address");
	String contact = request.getParameter("contact");
	
	Patient patient = new Patient();
	patient.setName(name);
	patient.setAge(age);
	patient.setGender(gender);
	patient.setAddress(address);
	patient.setContact(contact);
	
	PatientDAO dao;
	
	try {
		dao=new PatientDAO();
		boolean status=dao.save(patient);
		if(status) {
			dao.commit();
			request.setAttribute("status","Employee added Successfully...!");
		}else {
			dao.rollback();
			request.setAttribute("status","Error in adding employee...!");
		}
		
		RequestDispatcher dispature = request.getRequestDispatcher("result.jsp");
		dispature.forward(request, response);
		
		
	} catch (ClassNotFoundException | SQLException e) {
	
		e.printStackTrace();
	}
	
	
	
	}

}
