package com.TransportService;

public class Transport {
	private int transportID;
	private String busno;
	private String condition;
	private String driverNIC;
	private String noOFpassengers;
	private String statlocation;
	private String endlocation; //variable declaration 
	
	public Transport(int transportID, String busno, String condition, String driverNIC, String noOFpassengers,String statlocation, String endlocation) {
		super();
		this.transportID = transportID;
		this.busno = busno;
		this.condition = condition;
		this.driverNIC = driverNIC;
		this.noOFpassengers = noOFpassengers;
		this.statlocation = statlocation;
		this.endlocation = endlocation;
	}
	
	public Transport(String busno, String condition, String driverNIC, String noOFpassengers, String statlocation,String endlocation) {
		this.busno = busno;
		this.condition = condition;
		this.driverNIC = driverNIC;
		this.noOFpassengers = noOFpassengers;
		this.statlocation = statlocation;
		this.endlocation = endlocation;
	}

	public int gettransportID() {
		return transportID;
	}

	public String getbusno() {
		return busno;
	}

	public String getCondition() {
		return condition;
	}

	public String getDriverNIC() {
		return driverNIC;
	}

	public String getNoOFpassengers() {
		return noOFpassengers;
	}

	public String getStatlocation() {
		return statlocation;
	}

	public String getEndlocation() { //getters
		return endlocation;
	}

	public void setId(int id) {
		this.transportID = id;
		
	}

	
	
}
