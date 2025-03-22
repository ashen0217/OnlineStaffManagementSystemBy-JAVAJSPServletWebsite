package com.ManageResources;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/DeleteResourceServlet")
public class DeleteResourceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String resid = request.getParameter("resid"); //get the id parameter 
		boolean isTrue;
		
		isTrue = ResourceDBUtil.deleteResource(resid); //call the deleteResource method  in model class
		
		if (isTrue == true) { // if condition true
			RequestDispatcher dispatcher = request.getRequestDispatcher("ResourceUpload.jsp"); //send user to ResourceUpload.jsp
			dispatcher.forward(request, response);
		}
		else { //condition false 
			
			List<Resources> resourceDetails = ResourceDBUtil.getResourceDetails(resid);
			request.setAttribute("resourceDetails", resourceDetails); //call getResourceDetails method and send all constructor data to resourceDetail attribute
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("resourceManage.jsp"); //send all data to resourceManage.jsp and navigate to the jsp page
			dispatcher.forward(request, response);
		
		}
		
		
		

	}

}
