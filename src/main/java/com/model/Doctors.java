package com.model;

public class Doctors {
	private int id;
	private String name;
	private String specialization;
	private String contact;
	public Doctors() {
		
	}
	public Doctors(int id, String name, String specialization, String contact) {
		super();
		this.id = id;
		this.name = name;
		this.specialization = specialization;
		this.contact = contact;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSpecialization() {
		return specialization;
	}
	public void setSpecialization(String specialization) {
		this.specialization = specialization;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	
	

}
