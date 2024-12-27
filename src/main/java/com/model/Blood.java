package com.model;

public class Blood {
	private int id;
	private String name;
	private String bloodtype;
	private String contact;
	
	public Blood() {
		
	}

	public Blood(int id, String name, String bloodtype, String contact) {
		super();
		this.id = id;
		this.name = name;
		this.bloodtype = bloodtype;
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

	public String getBloodtype() {
		return bloodtype;
	}

	public void setBloodtype(String bloodtype) {
		this.bloodtype = bloodtype;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}
	
	

}
