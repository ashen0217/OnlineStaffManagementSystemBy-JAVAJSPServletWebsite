package com.Inquiries;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateInquiryServlet")
public class UpdateInquiryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String inqid = request.getParameter("inqID");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String inquiry = request.getParameter("inquiry");
		String inquiryType = request.getParameter("inqType"); //get the parameters in inquiry update form  and store it in the variables
		
		boolean isTrue;
		
		isTrue = InquiryDBUtil.updateInquiry(inqid, name, email, inquiry, inquiryType); //call the updateInqiry method in InquiryDBUtil using inqDetails attribute
		
		if(isTrue == true) {
			List<Inquiries> inqDetails = InquiryDBUtil.getInquiryDetails(inqid);
			request.setAttribute("inqDetails", inqDetails);  //if updation success call getInquiryDetails and set all the details to inqDetails attribute
			
			RequestDispatcher dis = request.getRequestDispatcher("inqmanager.jsp"); //send all the details to inqmanager.jsp file
			dis.forward(request, response);
		}
		else {
			List<Inquiries> inqDetails = InquiryDBUtil.getInquiryDetails(inqid); //if updation unsuccess call getInquiryDetails and set all the details to inqDetails attribute
			request.setAttribute("inqDetails", inqDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("inqmanager.jsp"); //send all the non updated details to inqmanager.jsp file
			dis.forward(request, response);
		}
		
	}

}
