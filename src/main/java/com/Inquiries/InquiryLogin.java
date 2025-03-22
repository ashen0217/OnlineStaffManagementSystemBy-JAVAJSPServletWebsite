package com.Inquiries;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/InquiryLogin")
public class InquiryLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email"); //get the parameters in inquiry login and store it in the variables
		
		try {
			List<Inquiries> inqDetails = InquiryDBUtil.validate(name, email); //call the validate method in InquiryDBUtil using inqDetails attribute
			request.setAttribute("inqDetails", inqDetails);  //set all the details to inqDetails attribute
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("inqmanager.jsp");	 //send all the details to inqmanager.jsp file
		dis.forward(request, response); 
		
	}

}
