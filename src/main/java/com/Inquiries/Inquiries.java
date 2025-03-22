package com.Inquiries;

public class Inquiries {
	private int id;
	private String name;
	private String email;
	private String inquiry;
	private String inquiryType; //variable declaration
	
	public Inquiries(int id, String name, String email, String inquiry, String inquiryType) { //parameterized constructor 
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.inquiry = inquiry;
		this.inquiryType=inquiryType;
	}
	
	public Inquiries(String name, String email, String inquiry, String inquiryType) { //parameterized constructor
		super();
		this.name = name;
		this.email = email;
		this.inquiry = inquiry;
		this.inquiryType=inquiryType;
	}

	public int getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public String getEmail() {
		return email;
	}
	public String getInquiry() {
		return inquiry;
	}
	public String getinquiryType() {
		return inquiryType;
	}

	public void setId(int id) {  //getters and setters
		this.id=id;
	}

}
