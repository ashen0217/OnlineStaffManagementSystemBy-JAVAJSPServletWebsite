package com.ManageResources;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/ResourceServlet")
public class ResourceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");  //PrintWriter class object
		
		String resname = request.getParameter("res");
        String restype = request.getParameter("restyp");
        String qty = request.getParameter("qty");
        String available = request.getParameter("avb");
        String uploadDate = request.getParameter("uploadDate");
        String description = request.getParameter("des");  // get all parameters 
         


        boolean isTrue;
		
		isTrue = ResourceDBUtil.insertResource(resname, restype,qty,available,uploadDate,description); //call the method using parameters 
		
		if(isTrue == true) { //if method call true
			out.println("<script type='text/javascript'>");
			out.println("alert('validation successful')");
			out.println("</script>");
			
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response); //display success
		} else {
			out.println("<script type='text/javascript'>");
			out.println("alert('your username or password are incorrect')");
			out.println("location='login.jsp'");
			out.println("</script>");
			
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response); //else display unsuccess
		}

	}

}
