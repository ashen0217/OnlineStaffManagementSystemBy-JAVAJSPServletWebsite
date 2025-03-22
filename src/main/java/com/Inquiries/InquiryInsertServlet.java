package com.Inquiries;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Inquiries.InquiryDBUtil;
import com.memberLogin.memberDBUtil;
import com.memberLogin.staffMember;


@SuppressWarnings("unused")
@WebServlet("/InquiryInsertServlet")
public class InquiryInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html"); //create a PrintWriter class method to get html related parts
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String inquiry = request.getParameter("inquiry");
		String inquiryTyp = request.getParameter("inquiryTyp"); //get the parameters in inquiry form and store it in the variables
		
		boolean isTrue;
		
		isTrue = InquiryDBUtil.insertInquiry(name, email, inquiry, inquiryTyp); //call the insert inquiry method using isTrue boolean variable 
		
		if(isTrue == true) {
			out.println("<script type='text/javascript'>");
			out.println("alert('validation successful')");
			out.println("</script>"); //JavaScript parts
			
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response); //display success 
		} else {
			out.println("<script type='text/javascript'>");
			out.println("alert('your username or password are incorrect')");
			out.println("location='inqform.jsp'");
			out.println("</script>"); //JavaScript parts
			
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp"); //display unsuccess
			dis2.forward(request, response);
		}
		
	}

}
