package com.memberLogin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.memberLogin.*;



@SuppressWarnings("unused")
@WebServlet("/DeleteMemberServlet")
public class DeleteMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("staffid"); //get the parameter staffid in deleteAccount.jsp file
		boolean isTrue;
		
		isTrue = memberDBUtil.deleteStaffMember(id); //transfer the parameter and call the method
		 
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("signup02.jsp"); //if delete success again redirect to signup02.jsp
			dispatcher.forward(request, response);
		}
		else {
			
			List<staffMember> memDetails = memberDBUtil.getStaffDetails(id);
			request.setAttribute("memDetails", memDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("staffAccount.jsp"); //if delete unsuccess again redirect to staffAccount.jsp
			dispatcher.forward(request, response);
		
		}

	}
}

