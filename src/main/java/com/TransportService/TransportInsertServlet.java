package com.TransportService;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/TransportInsertServlet")
public class TransportInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter(); //create an object in PrintWriter class
		response.setContentType("text/html");
		
		String BusNO = request.getParameter("busNo");
		String condition = request.getParameter("condt");
		String drivernic = request.getParameter("dnic");
		String noOfpassengers = request.getParameter("noOfpass");
		String statloc = request.getParameter("statloc");
		String endloc = request.getParameter("endloc"); //catch all the parameters in TransportInsert.jsp

		
		boolean isTrue; //variable declaration
		 
		isTrue = TransportDBUtil.insertTransportService(BusNO,condition,drivernic,noOfpassengers,statloc,endloc); //call the insertTransportService method 
		
		if(isTrue == true) {  //if method calling successful
			out.println("<script type='text/javascript'>");
			out.println("alert('validation successful')");
			out.println("</script>");
			
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");	//display success in success.jsp file
			dis.forward(request, response); 
			
		} else {
			out.println("<script type='text/javascript'>");
			out.println("alert('your username or password are incorrect')");
			out.println("location='TransportInsert.jsp'");
			out.println("</script>");
			
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");  //else display unsucess in unsucces.jsp
			dis2.forward(request, response);
		}

	}

}
