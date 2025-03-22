package com.memberLogin;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	private static String url = "jdbc:mysql://localhost:3306/staffmanagement";
	private static String userName = "root";
	private static String password = "@@Ashen@2003";
	private static Connection con; //variables to get the Mysql data

	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, userName, password); //transfer the variables as parameters to getConnecrion method and call the method 
			
		}
		catch (Exception e) {
			System.out.println("Database connection is not success!!!");      
		}
		
		return con;
	}
}
