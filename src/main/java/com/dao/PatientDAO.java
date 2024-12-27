package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.model.Patient;



public class PatientDAO {
	
	Connection connection = null;
	public PatientDAO() throws ClassNotFoundException, SQLException {
		connection = ConnectionManager.getConnection();
	}
	public boolean save(Patient patient) throws SQLException {
		
		String query = "insert into patient(Name,Age,Gender,Address,contact) values(?,?,?,?,?)";
		PreparedStatement statement = connection.prepareStatement(query);
		
		statement.setString(1,patient.getName());
		statement.setInt(2,patient.getAge());
		statement.setString(3,patient.getGender());
		statement.setString(4, patient.getAddress());
		statement.setString(5, patient.getContact());
		
		int count =statement.executeUpdate();
		if(count == 1) {
			return true;
		}
		return false;
	}
	public void commit() throws SQLException {
			connection.commit();
			connection.close();
	}
	public void rollback() throws SQLException {

		connection.rollback();
		connection.close();
	}

}

