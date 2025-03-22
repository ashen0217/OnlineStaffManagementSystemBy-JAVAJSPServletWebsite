<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String inq = request.getParameter("inquiry");
		String inqType = request.getParameter("InquiryType");
	%>
	
	<h1>Staff Inquiry Delete</h1>

	<form action="DeleteInquiryServlet" method="post">
	<table>
		<tr>
			<td>Inquiry ID</td>
			<td><input type="text" name="inqID" value="<%= id %>" readonly></td>
		</tr>
		<tr>
			<td>Name</td>
			<td><input type="text" name="name" value="<%= name %>" readonly></td>
		</tr>
		<tr>
			<td>Email</td>
			<td><input type="text" name="email" value="<%= email %>" readonly></td>
		</tr>
		<tr>
			<td>Inquiry</td>
			<td><input type="text" name="inquiry" value="<%= inq %>" readonly></td>
		</tr>
		<tr>
			<td>Inquiry Type</td>
			<td><input type="text" name="inquiryTYPE" value="<%= inqType %>" readonly></td>
		</tr>
		</table>
		<br>
		<input type="submit" name="submit" value="Delete My Account">
	</form>

</body>
</html>