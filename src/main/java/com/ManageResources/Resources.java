package com.ManageResources;

public class Resources {
    private int id;
    private String name;  //varialble declaration
    private String type;
    private String qty;
    private String avb;   
    private String uploadDate;
    private String description;
    
	public Resources(int id, String name, String type, String qty, String avb, String uploadDate, String description) { //parameterized constructor
		super();
		this.id = id;
		this.name = name;
		this.type = type;
		this.qty = qty;
		this.avb = avb;
		this.uploadDate = uploadDate;
		this.description = description;
	}
	public Resources(String name, String type, String qty, String avb, String uploadDate, String description) {//parameterized constructor
		super();
		this.id = id;
		this.name = name;
		this.type = type;
		this.qty = qty;
		this.avb = avb;
		this.uploadDate = uploadDate;
		this.description = description;
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
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getQty() {
		return qty;
	}
	public void setQty(String qty) {
		this.qty = qty;
	}
	public String getAvb() {
		return avb;
	}
	public void setAvb(String avb) {
		this.avb = avb;
	}
	public String getUploadDate() {
		return uploadDate;
	}
	public void setUploadDate(String uploadDate) {
		this.uploadDate = uploadDate;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {  //getters and setters
		this.description = description;
	}

	
}
