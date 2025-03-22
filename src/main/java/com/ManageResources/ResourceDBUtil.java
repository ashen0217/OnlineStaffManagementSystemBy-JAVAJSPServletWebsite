package com.ManageResources;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


import com.memberLogin.DBConnect;
import com.memberLogin.staffMember;



public class ResourceDBUtil {
	
	private static boolean isSuccess; //instance varaibles
	private static Connection con = null;
	private static Statement stat = null;
	private static ResultSet rs = null;
	
	public static List<Resources> validate(String resid1,String restyp){ //validate method
		ArrayList<Resources> rest=new ArrayList<>();
		
		//validate
		try {
			con = DBConnect.getConnection();
			stat=con.createStatement();
			String sql="select * from resources where resid='"+resid1+"' and restype='"+restyp+"'";
			rs = stat.executeQuery(sql);
			
			if(rs.next()) {
				int resid=rs.getInt(1);
				String Resname=rs.getString(2);
				String Restype=rs.getString(3);
				String quantity=rs.getString(4);
				String available = rs.getString(5);
				String uploadDate=rs.getString(6);
				String description=rs.getString(7);
	
				Resources resObj = new Resources(resid,Resname,Restype,quantity,available,uploadDate,description);
				rest.add(resObj);   
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return rest;

		}
	

	public static boolean insertResource(String resname,String restype,String qty,String available,String uploaddate,String description) { //insert method 
		isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stat=con.createStatement();
			
			String sql="insert into resources(resid,resname,restype,quantity,availability,upload_date,description) values(0,'"+resname+"','"+restype+"','"+qty+"','"+available+"','"+uploaddate+"','"+description+"')";
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


	public static boolean updateResource(String resid, String resname, String restype,String qty,String avb,String uploadDate,String des) { //update method 
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stat = con.createStatement();
    		String sql = "update resources set resname='"+resname+"',restype='"+restype+"',quantity='"+qty+"',availability='"+avb+"',upload_date='"+uploadDate+"',description='"+des+"'  where resid='"+resid+"'";
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
	
    public static List<Resources> getResourceDetails(String Id) { //getResourceDetails method 
    	
    	int convertedID = Integer.parseInt(Id);
    	
    	ArrayList<Resources> stffRes = new ArrayList<>();
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stat = con.createStatement();
    		String sql = "select * from resources where resid='"+convertedID+"'";
    		rs = stat.executeQuery(sql);
    		
    		while(rs.next()) {
    			int resid = rs.getInt(1);
    			String resname = rs.getString(2);
    			String restype = rs.getString(3);
    			String qty = rs.getString(4);
    			String available = rs.getString(5);
    			String uploadDate = rs.getString(6);
    			String description = rs.getString(7);
    			
    			Resources res = new Resources(resid,resname,restype,qty,available,uploadDate,description);
    			stffRes.add(res);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return stffRes;	
    }


	public static boolean deleteResource(String id) { //deleteResource method
    	int convId = Integer.parseInt(id);
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stat = con.createStatement();
    		String sql = "delete from resources where resid='"+convId+"'";
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
	
	public List<Resources> getAllResource() {  //get all resource details to resourceManage.jsp file
        String sql = "SELECT * FROM resources";
        List<Resources> staffList = new ArrayList<>();
        try ( Connection con = DBConnect.getConnection();
             PreparedStatement stmt = con.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                Resources res = new Resources(
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                		rs.getString(7));
                res.setId(rs.getInt(1));
                staffList.add(res);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return staffList;
    }
	


}
