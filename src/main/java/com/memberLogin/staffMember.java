package com.memberLogin;

public class staffMember {
	private int id;
	private String name;
	private String email;
	private String phone;
	private String userName;
	private String password; //variable declaraion
	
	public staffMember(int id, String name, String email, String Phone, String userName, String password) { //constructors
		this.id = id;
		this.name = name;
		this.email = email;
		this.phone = Phone;
		this.userName = userName;
		this.password = password;
	}
	public staffMember(String name, String email, String phone, String userName, String password) { //constructor
		this.name=name;
		this.email=email;
		this.phone=phone;
		this.userName=userName;
		this.password=password;
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
	
	public String getPhone() {
		return phone;
	}
	
	public String getUserName() {
		return userName;
	}
	
	public String getPassword() { //getters
		return password;
	}
	public void setId(int ID) {
		this.id=ID;
		
	}

	
	

}
