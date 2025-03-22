package com.Inquiries;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/DeleteInquiryServlet")
public class DeleteInquiryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("inqID"); //get id using parameter and store it in the id variable
		boolean isTrue;
		
		isTrue = InquiryDBUtil.deleteInquiryDetails(id); //call the deleteinquiry method using boolean variable
		
		if (isTrue == true) { //if boolean condition true in deleteinquiry method
			RequestDispatcher dispatcher = request.getRequestDispatcher("inqform.jsp");
			dispatcher.forward(request, response); //navigate to inqform.jsp
		}
		else {
			
			List<Inquiries> inqDetails = InquiryDBUtil.getInquiryDetails(id);
			request.setAttribute("inqDetails", inqDetails); //else call the getInquiryDetails method and set all the details to attribute inqDetails
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("inqmanager.jsp"); //send all the details to inqmanager.jsp using attribute
			dispatcher.forward(request, response);
		
		}
		
	}

}
