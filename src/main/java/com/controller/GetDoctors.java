package com.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.DoctorDAO;
import com.model.Doctors;

@WebServlet("/findall")
public class GetDoctors extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		try {
			DoctorDAO dao = new DoctorDAO();
			List<Doctors> doctors = dao.findAll();
			request.setAttribute("list", doctors);
			RequestDispatcher dispature = request.getRequestDispatcher("viewdoctors.jsp");
			dispature.forward(request, response);
			
			
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}
		
		
		
	}

}
