package com.memberLogin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter(); //create an object in PrintWriter method
		response.setContentType("text/html");
		
		String email = request.getParameter("email"); 
		String password = request.getParameter("pass"); //create variables to catch the parameters
		
		boolean isTrue;
		isTrue = memberDBUtil.validate(email, password); //transfer the parameters to validate method and call the method 
		
		if(isTrue=true) {		
			out.println("<script type='text/javascript'>");
			out.println("alert('validation successful')");
			out.println("</script>");   //JavaScript validation part
			
			RequestDispatcher dis = request.getRequestDispatcher("services.jsp");	
			dis.forward(request, response);  //if validation success send redirect to services.jsp
		}else {
			out.println("<script type='text/javascript'>");
			out.println("alert('your username or password are incorrect')");
			out.println("location='login.jsp'");
			out.println("</script>"); //JavaScript validation part
			
			RequestDispatcher dis = request.getRequestDispatcher("login.jsp");	
			dis.forward(request, response);  //if unscuccess send again to login.jsp
		}	
		
		
			
	}
}
