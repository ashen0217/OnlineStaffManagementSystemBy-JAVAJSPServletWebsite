package com.TransportService;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/DeleteTransportServlet")
public class DeleteTransportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("tid"); //catch the ransport id using the parameter tid
		boolean isTrue;
		
		isTrue = TransportDBUtil.deleteTransport(id); //call the method delete in transportDBUtil
		
		if (isTrue == true) { //if method execute completely
			RequestDispatcher dispatcher = request.getRequestDispatcher("TransportInsert.jsp"); //navigate to the Transportinsert.jsp
			dispatcher.forward(request, response);
		}
		else {
			
			List<Transport> transportDetails = TransportDBUtil.getTransportDetails(id); //send the parameter to the getTransportDetails method
			request.setAttribute("transportDetails", transportDetails); 
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("unsuccess.jsp"); //navigate to the unsucess.jsp
			dispatcher.forward(request, response);
		
		}
		

	}

}
