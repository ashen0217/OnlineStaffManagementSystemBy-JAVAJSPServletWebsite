package com.memberLogin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.memberLogin.staffMember;
import com.memberLogin.staffMember;


@SuppressWarnings("unused")
@WebServlet("/UpdateStaffMemberServlet")
public class UpdateStaffMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("staffid");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("uname");
		String password = request.getParameter("upass");
		
		boolean isTrue;
		
		isTrue = memberDBUtil.updateStaffmember(id, name, email, phone, username, password);
		
		if(isTrue == true) {
			List<staffMember> memDetails = memberDBUtil.getStaffDetails(id);
			request.setAttribute("memDetails", memDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("staffAccount.jsp");
			dis.forward(request, response);
		}
		else {
			List<staffMember> memDetails = memberDBUtil.getStaffDetails(id);
			request.setAttribute("memDetails", memDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("staffAccount.jsp");
			dis.forward(request, response);
		}
		
	}

}
