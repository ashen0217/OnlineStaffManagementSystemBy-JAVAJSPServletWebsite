package com.memberLogin;

import java.sql.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.Inquiries.DBConnect;


public class memberDBUtil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stat = null;
	private static ResultSet rs = null; //instance variables that can be used in methods
	
	public static boolean validate(String Email,String password){ //validation method 
		
		//validate
		try {
			con = DBConnect.getConnection();
			stat=con.createStatement();
			String sql="select * from staff where email='"+Email+"' and password='"+password+"'";
			rs = stat.executeQuery(sql);	
			
			if(rs.next()) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return isSuccess;

	}
	
	public static List<staffMember> validate02(String Email){ //validtion parts 
		ArrayList<staffMember> stfMem=new ArrayList<>();
		
		//validate
		try {
			con = DBConnect.getConnection();
			stat=con.createStatement();
			String sql="select * from staff where email='"+Email+"'";
			rs = stat.executeQuery(sql);
			
			if(rs.next()) {
				int id=rs.getInt(1);
				String name=rs.getString(2);
				String email=rs.getString(3);
				String phone=rs.getString(4);
				String userU=rs.getString(5);
				String passwordU=rs.getString(6);	
				
				staffMember staffObj = new staffMember(id,name,email,phone,userU,passwordU);
				stfMem.add(staffObj);   
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return stfMem;

		}
	
	
		public static boolean insertStaffMember(String name,String email,String phone,String username,String password) { //insert staff member
			
			isSuccess = false;
			
			try {
				con = DBConnect.getConnection();
				stat=con.createStatement();
				
				String sql="insert into staff(idstaff,name,email,phone,username,password) values(0,'"+name+"','"+email+"','"+phone+"','"+username+"','"+password+"')";
				int rs=stat.executeUpdate(sql);
				
				if(rs > 0) {
	    			isSuccess = true;
	    		} else {
	    			isSuccess = false;
	    		}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return isSuccess;
		
		}
		
		public static boolean updateStaffmember(String id, String name, String email, String phone, String username, String password) { //update staff member method
	    	
	    	try {
	    		
	    		con = DBConnect.getConnection();
	    		stat = con.createStatement();
	    		String sql = "update staff set name='"+name+"',email='"+email+"',phone='"+phone+"',username='"+username+"',password='"+password+"' where idstaff='"+id+"'";
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
		
	    public static List<staffMember> getStaffDetails(String Id) { //retrieve staff member method 
	    	
	    	int convertedID = Integer.parseInt(Id);
	    	
	    	ArrayList<staffMember> stff = new ArrayList<>();
	    	
	    	try {
	    		
	    		con = DBConnect.getConnection();
	    		stat = con.createStatement();
	    		String sql = "select * from staff where idstaff='"+convertedID+"'";
	    		rs = stat.executeQuery(sql);
	    		
	    		while(rs.next()) {
	    			int id = rs.getInt(1);
	    			String name = rs.getString(2);
	    			String email = rs.getString(3);
	    			String phone = rs.getString(4);
	    			String username = rs.getString(5);
	    			String password = rs.getString(6);
	    			
	    			staffMember stf = new staffMember(id,name,email,phone,username,password);
	    			stff.add(stf);
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}	
	    	return stff;	
	    }
	    
	    public static boolean deleteStaffMember(String id) { //delete staff member method 
	    	
	    	int convId = Integer.parseInt(id);
	    	
	    	try {
	    		
	    		con = DBConnect.getConnection();
	    		stat = con.createStatement();
	    		String sql = "delete from staff where idstaff='"+convId+"'";
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
	    
	    public List<staffMember> getAllStaff() {
	        String sql = "SELECT * FROM staff";
	        List<staffMember> staffList = new ArrayList<>();
	        try ( Connection con = DBConnect.getConnection();
	             PreparedStatement stmt = con.prepareStatement(sql);
	             ResultSet rs = stmt.executeQuery()) {
	            while (rs.next()) {
	                staffMember staff = new staffMember(
	                        rs.getString(2),
	                        rs.getString(3),
	                        rs.getString(4),
	                        rs.getString(5),
	                        rs.getString(6));
	                staff.setId(rs.getInt(1));
	                staffList.add(staff);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return staffList;
	    }
	    
}
