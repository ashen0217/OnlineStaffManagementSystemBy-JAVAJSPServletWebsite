package com.ManageResources;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/ResourceView")
public class ResourceView extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String resid = request.getParameter("resid");
		String restyp = request.getParameter("restyp"); //get all parameters
		
		try {
			List<Resources> resDetails = ResourceDBUtil.validate(resid,restyp);
			request.setAttribute("resDetails", resDetails); //call validate method inside try catch method
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("resourceManage.jsp");	
		dis.forward(request, response);  //send details to resourceManage.jsp
		

	}

}
