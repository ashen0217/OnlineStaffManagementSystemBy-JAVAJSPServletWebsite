package com.memberLogin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/StaffmemberInsert")
public class StaffmemberInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("uid");
		String password = request.getParameter("psw"); //create the variable and catch the parameters in signup02.jsp file
		
		boolean isTrue;
		
		isTrue = memberDBUtil.insertStaffMember(name, email, phone, username, password); //transfer parameters to insertStaffMember method and cal the method 
		
		if(isTrue == true) { // if condition true for call the method 
			try {
				List<staffMember> memDetails = memberDBUtil.validate02(email); //create a list variables and call the validate02 method using the variable
				request.setAttribute("memDetails", memDetails); //set the values to variables to access them in staffAccount.jsp
			} catch (Exception e) {
				e.printStackTrace();
			}
			RequestDispatcher dis = request.getRequestDispatcher("staffAccount.jsp");	//send redirect to staffAccount.jsp 
			dis.forward(request, response); 
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp"); // if unsuccss send unsuccss message by unsuccess.jsp
			dis2.forward(request, response);
		}
		
		
	}

}
