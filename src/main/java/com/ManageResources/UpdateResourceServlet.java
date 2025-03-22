package com.ManageResources;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/UpdateResourceServlet")
public class UpdateResourceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String resid = request.getParameter("resid");
		String resname= request.getParameter("resname");
		String restype = request.getParameter("restype");
		String qty = request.getParameter("qty");
		String avb = request.getParameter("avb");
		String uploadDate = request.getParameter("uploadDate");
		String des = request.getParameter("des"); //get all the parameters

		
		boolean isTrue;
		
		isTrue = ResourceDBUtil.updateResource(resid,resname,restype,qty,avb,uploadDate,des); //call the method 
		
		if(isTrue == true) {
			List<Resources> resDetails = ResourceDBUtil.getResourceDetails(resid); //if condition true send details to the resDetails attribute
			request.setAttribute("resDetails", resDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("resourceManage.jsp"); //send all details to resourceManage.jsp using resDetails attribute
			dis.forward(request, response);
		}
		else {
			List<Resources> resDetails = ResourceDBUtil.getResourceDetails(resid);
			request.setAttribute("resDetails", resDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);  		
			}    //else display the unsuccess on unsucess.jsp

	}

}
