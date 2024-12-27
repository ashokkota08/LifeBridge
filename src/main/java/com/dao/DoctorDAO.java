package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.model.Blood;
import com.model.Doctors;
import com.mysql.cj.protocol.Resultset;

public class DoctorDAO {
	
	Connection connection =null;
	public DoctorDAO() throws ClassNotFoundException, SQLException {
		connection=ConnectionManager.getConnection();
	}
	public boolean save(Doctors doctors) throws SQLException {
		
		String query = "insert into doctors(name,specialization,contact) values(?,?,?)";
		
		PreparedStatement statement = connection.prepareStatement(query);
		
		statement.setString(1,doctors.getName());
		statement.setString(2, doctors.getSpecialization());
		statement.setString(3,doctors.getContact());
		
		int count=statement.executeUpdate();
		
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
	public List<Doctors> findAll() throws ClassNotFoundException, SQLException {
		List<Doctors> list = new ArrayList<Doctors>();
		connection = ConnectionManager.getConnection();
		connection.setAutoCommit(true);
		
		String query = "select * from doctors";
		PreparedStatement statement = connection.prepareStatement(query);
		ResultSet set = statement.executeQuery();
		while(set.next()) {
			Doctors doctors = new Doctors();
			
			doctors.setId(set.getInt(1));
			doctors.setName(set.getString(2));
			doctors.setSpecialization(set.getString(3));
			doctors.setContact(set.getString(4));
			
			list.add(doctors);
		}
		
		if(connection != null) {
			connection.close();
		}
		
		return list;
	}
	public boolean deleteById(int id) throws ClassNotFoundException, SQLException {
		
		String query = "delete from doctors where id=?";
		connection = ConnectionManager.getConnection();
		PreparedStatement statement = connection.prepareStatement(query);
		statement.setInt(1, id);
		int count=statement.executeUpdate();
		
		if(count==0) {
			return false;
		}
		return true;
	}
	public boolean save(Blood donation) throws SQLException {
		
		String query   = "INSERT INTO BloodDonors (DonorName, BloodType, Contact) VALUES (?, ?, ?)";
		PreparedStatement statement = connection.prepareStatement(query);
		
		statement.setString(1,donation.getName());
		statement.setString(2,donation.getBloodtype());
		statement.setString(3,donation.getContact());
		
		int count=statement.executeUpdate();
		if(count == 0) {
			return false;
			
		}
		return true;
		
	}
	public List<Blood> viewdonors() throws SQLException, ClassNotFoundException {
		List<Blood> list = new ArrayList<Blood>();
		connection = ConnectionManager.getConnection();
		connection.setAutoCommit(true);
		
		String query = "select * from blooddonors";
		PreparedStatement statement = connection.prepareStatement(query);
		ResultSet set = statement.executeQuery();
		while(set.next()) {
			Blood donors = new Blood();
			
			donors.setId(set.getInt(1));
			donors.setName(set.getString(2));
			donors.setBloodtype(set.getString(3));
			donors.setContact(set.getString(4));
			
			list.add(donors);
		}
		
		if(connection != null) {
			connection.close();
		}
		
		return list;
	
	}
	
	

}
