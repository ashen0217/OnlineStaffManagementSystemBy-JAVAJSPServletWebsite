package com.TransportService;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/UpdateTransportServlet")
public class UpdateTransportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tid = request.getParameter("tid");
		String busno= request.getParameter("BNo");
		String condt = request.getParameter("condt");
		String dname = request.getParameter("Dnic");
		String noOfpass = request.getParameter("noOfpass");
		String statloc = request.getParameter("statloc");
		String endloc = request.getParameter("endloc"); //catch all the variables in TransportUpdate.jsp file
		
		
		boolean isTrue;
		
		isTrue = TransportDBUtil.updateTransport(tid, busno,condt,dname,noOfpass,statloc,endloc); //call the updateTransport method in transportDBUtil model class
		
		if(isTrue == true) { //if calling method success
			List<Transport> transportDetails = TransportDBUtil.getTransportDetails(tid); //give the parameter to getTransportDetails method (tid)
			request.setAttribute("transportDetails", transportDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("TransportDashboard.jsp"); //send updated data to the TransportDashboard.jsp 
			dis.forward(request, response);
		}
		else {
			List<Transport> transportDetails = TransportDBUtil.getTransportDetails(tid); 
			request.setAttribute("transportDetails", transportDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("TransportDashboard.jsp"); //send data to TransportDashboard.jsp
			dis.forward(request, response);
		}
		
	}

}
