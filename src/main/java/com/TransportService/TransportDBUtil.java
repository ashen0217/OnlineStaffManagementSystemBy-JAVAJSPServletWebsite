package com.TransportService;

import java.sql.Connection;  //import packages
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.memberLogin.DBConnect;
import com.memberLogin.staffMember;


public class TransportDBUtil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stat = null;
	private static ResultSet rs = null;  //instance variables that can be used for any method in model class
	
	public static List<Transport> validate(String busid){ //method to validate data in database using validate method of model class
		ArrayList<Transport> stfT=new ArrayList<>();
		
		//validate
		try {
			con = DBConnect.getConnection();
			stat=con.createStatement();
			String sql="select * from transport where tid='"+busid+"'";
			rs = stat.executeQuery(sql);
			
			if(rs.next()) {
				int tid=rs.getInt(1);
				String busno=rs.getString(2);
				String condition=rs.getString(3);
				String Dnic=rs.getString(4);
				String noOfPassengers=rs.getString(5);
				String statlocation=rs.getString(6);
				String endlocation=rs.getString(7);

				
				Transport staffBus = new Transport(tid,busno,condition,Dnic,noOfPassengers,statlocation,endlocation);
				stfT.add(staffBus);   
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return stfT;

		}
	//method to insert data in database using insertTransportServide method of model class
	public static boolean insertTransportService(String Busno,String condition,String Dnic,String noOfPassengers,String statlocation,String endlocation) {
		
		isSuccess = false; 
		
		try {
			con = DBConnect.getConnection();
			stat=con.createStatement();
			
			String sql="insert into transport(tid,busNo,conditionBus,driverNIC,noOFpassengers,startlocation,endlocation)  values(0,'"+Busno+"','"+condition+"','"+Dnic+"','"+noOfPassengers+"','"+statlocation+"','"+endlocation+"')";
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
	
	//method to update data in database using updateTransport method of model class
	public static boolean updateTransport(String tid, String busNO, String condition,String driver,String noOfPassengers,String statlocation,String endlocation) {
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stat = con.createStatement();
    		String sql = "update transport set busNo='"+busNO+"',conditionBus='"+condition+"',driverNIC='"+driver+"',noOFpassengers='"+noOfPassengers+"',startlocation='"+statlocation+"',endlocation='"+endlocation+"' where tid='"+tid+"'";
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
	
	//method to retrieve data in database using getTransport method of model class
	public static List<Transport> getTransportDetails(String Id) {
    	
    	int convertedID = Integer.parseInt(Id);
    	
    	ArrayList<Transport> stT = new ArrayList<>();
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stat = con.createStatement();
    		String sql = "select * from transport where tid='"+convertedID+"'";
    		rs = stat.executeQuery(sql);
    		
    		while(rs.next()) {
    			int tid=rs.getInt(1);
				String busno=rs.getString(2);
				String condition=rs.getString(3);
				String Dnic=rs.getString(4);
				String noOfPassengers=rs.getString(5);
				String statlocation=rs.getString(6);
				String endlocation=rs.getString(7);
    			
    			Transport stTransport = new Transport(tid,busno,condition,Dnic,noOfPassengers,statlocation,endlocation);
    			stT.add(stTransport);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return stT;	
    }
	
	//method to delete data in database using deleteTransport method of model class
    public static boolean deleteTransport(String id) {
    	
    	int convId = Integer.parseInt(id);
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stat = con.createStatement();
    		String sql = "delete from transport where tid='"+convId+"'";
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
    
    
    public List<Transport> getAllTransport() { //get all the details to transportDashboard.jsp file
        String sql = "SELECT * FROM transport";
        List<Transport> tptList = new ArrayList<>();
        try ( Connection con = DBConnect.getConnection();
             PreparedStatement stmt = con.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                Transport tport = new Transport(
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7));
                tport.setId(rs.getInt(1));
                tptList.add(tport);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return tptList;
    }
}
