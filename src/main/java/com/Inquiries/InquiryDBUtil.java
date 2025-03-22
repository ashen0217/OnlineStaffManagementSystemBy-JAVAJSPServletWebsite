package com.Inquiries;

import com.Inquiries.DBConnect;
import com.ManageResources.Resources;
import com.memberLogin.staffMember;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
@SuppressWarnings("unused")

public class InquiryDBUtil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stat = null;
	private static ResultSet rs = null; //instance variables
	
	
	public static List<Inquiries> validate(String name,String email){ //validate method
		ArrayList<Inquiries> inq=new ArrayList<>();
		
		//validate
		try {
			con = DBConnect.getConnection();
			stat=con.createStatement();
			String sql="select * from inquiries where name='"+name+"' and email='"+email+"'";
			rs = stat.executeQuery(sql);
			
			if(rs.next()) {
				int id=rs.getInt(1);
				String name1=rs.getString(2);
				String email1=rs.getString(3);
				String inquiry1=rs.getString(4);
				String inquiryType1=rs.getString(5);
				
				Inquiries inqffObj = new Inquiries(id,name1,email1,inquiry1,inquiryType1);
				inq.add(inqffObj);   
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return inq;
		}
	
		public static boolean insertInquiry(String name,String email,String inquiry,String inquiryType) { //method to insert to the  database 
		
		isSuccess = false;
		
			try {
				con = DBConnect.getConnection();
				stat=con.createStatement();
				
				String sql="insert into inquiries(inqID,name,email,inquiry,inquirytype) values(0,'"+name+"','"+email+"','"+inquiry+"','"+inquiryType+"')";
				int rs=stat.executeUpdate(sql);
				
				if(rs > 0){
	    			isSuccess = true;
	    		} else {
	    			isSuccess = false;
	    		}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return isSuccess;
	
		}
	
		public static boolean updateInquiry(String inqid, String name, String email, String inquiry, String inquiryType) { //method to update the data in database 
    	
	    	try {
	    		
	    		con = DBConnect.getConnection();
	    		stat = con.createStatement();
	    		String sql = "update inquiries set name='"+name+"',email='"+email+"',inquiry='"+inquiry+"',inquirytype='"+inquiryType+"' where inqID='"+inqid+"'";
	    		int rs = stat.executeUpdate(sql);
	    		
	    		if(rs > 0) {
	    			isSuccess = true;
	    		}
	    		else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}
	    	
	    	return isSuccess;
		}
		
	    public static List<Inquiries> getInquiryDetails(String Id) {  //method to get inquiry details in the database 
	    	
	    	int convertedID = Integer.parseInt(Id);
	    	
	    	ArrayList<Inquiries> inqGet = new ArrayList<>();
	    	
	    	try {
	    		
	    		con = DBConnect.getConnection();
	    		stat = con.createStatement();
	    		String sql = "select * from inquiries where inqID='"+convertedID+"'";
	    		rs = stat.executeQuery(sql);
	    		
	    		while(rs.next()) {
	    			int id = rs.getInt(1);
	    			String name = rs.getString(2);
	    			String email = rs.getString(3);
	    			String inquiry = rs.getString(4);
	    			String inqryType = rs.getString(5);
	    			
	    			Inquiries inq = new Inquiries(id,name,email,inquiry,inqryType);
	    			inqGet.add(inq);
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}	
	    	return inqGet;	
	    }
	    
	    public static boolean deleteInquiryDetails(String id) { //method to delete all the data in the database 
	    	
	    	int convId = Integer.parseInt(id);
	    	
	    	try {
	    		
	    		con = DBConnect.getConnection();
	    		stat = con.createStatement();
	    		String sql = "delete from inquiries where inqID='"+convId+"'";
	    		int r = stat.executeUpdate(sql);
	    		
	    		if (r > 0) {
	    			isSuccess = true;
	    		}
	    		else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch (Exception e) {
	    		e.printStackTrace();
	    	}
	    	
	    	return isSuccess;
	    }
		
	    public List<Inquiries> getAllInquiries() { // method to gat all the details in the database 
	        String sql = "SELECT * FROM inquiries";
	        List<Inquiries> staffList = new ArrayList<>();
	        try ( Connection con = DBConnect.getConnection();
	             PreparedStatement stmt = con.prepareStatement(sql);
	             ResultSet rs = stmt.executeQuery()) {
	            while (rs.next()) {
	                Inquiries res = new Inquiries(
	                        rs.getString(2),
	                        rs.getString(3),
	                        rs.getString(4),
	                        rs.getString(5));
	                res.setId(rs.getInt(1));
	                staffList.add(res);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return staffList;
	    }
	    
		
}
