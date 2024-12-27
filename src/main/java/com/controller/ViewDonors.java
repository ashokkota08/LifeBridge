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
import com.model.Blood;
import com.model.Doctors;

@WebServlet("/viewdonors")
public class ViewDonors extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		try {
			DoctorDAO dao = new DoctorDAO();
			List<Blood> donors = dao.viewdonors();
			request.setAttribute("list", donors);
			RequestDispatcher dispature = request.getRequestDispatcher("viewdonors.jsp");
			dispature.forward(request, response);
			
			
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}
	}

	

}
