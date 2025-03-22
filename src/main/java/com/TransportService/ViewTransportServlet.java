package com.TransportService;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ViewTransportServlet")
public class ViewTransportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String bus = request.getParameter("busid"); //catch the bus id from the name busid in viewtransport.jsp file
			
			try {
				List<Transport> transportDetails = TransportDBUtil.validate(bus); //call the validate method in transportdbutil 
				request.setAttribute("transportDetails", transportDetails); //set the attributes to the variable transportDetails
			}catch (Exception e) {
				e.printStackTrace();
			}
			
			RequestDispatcher dis = request.getRequestDispatcher("TransportDashboard.jsp");	 //sent data to the transportDashoard.jsp file
			dis.forward(request, response); 
		

	}

}
