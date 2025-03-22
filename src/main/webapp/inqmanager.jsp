<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%@ page import="java.util.List" %>
	<%@ page import="com.Inquiries.InquiryDBUtil" %>
	<%@ page import="com.Inquiries.Inquiries" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" >
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,500;0,600;1,100;1,200;1,300&family=Rubik+Bubbles&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="inqmanager.css">
</head>
<body>
    <h1>Manage Inquiries</h1>
    <h2>Inquiries</h2>
    <table id="inquiries-table">
	    	<c:forEach var="inq" items="${inqDetails}"> 
			
				<c:set var="inqid" value="${inq.id}"/>
				<c:set var="name" value="${inq.name}"/>
				<c:set var="email" value="${inq.email}"/>
				<c:set var="inquiry" value="${inq.inquiry}"/>
				<c:set var="inquiryType" value="${inq.inquiryType}"/>
		
		        <tr>
					<td>Staff ID</td>
					<td>${inq.id}</td>
				</tr>
				<tr>
					<td>StaffMember Name</td>
					<td>${inq.name}</td>
				</tr>
				<tr>
					<td>Staff Email</td>
					<td>${inq.email}</td>
				</tr>
				<tr>
					<td>Staff Inquiry</td>
					<td>${inq.inquiry}</td>
				</tr>
				<tr>
					<td>Staff Inquiry Type</td>
					<td>${inq.inquiryType}</td>
				</tr>
	        </c:forEach>
    </table>
    <div class="container mt-5">
			<br><br><br>

        <table class="table table-striped table-bordered">	
            <thead class="table-dark">
                <tr>
                    <th>Inquiry ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Inquiry</th>
                    <th>Inquiry Type</th>
                </tr>
            </thead>
            <tbody>
                <%
                InquiryDBUtil inq = new InquiryDBUtil();
                List<Inquiries> inquiries = inq.getAllInquiries(); // Get all staff members

                for (Inquiries staff : inquiries) {
                %>
                    <tr>
                        <td><%= staff.getId() %></td>
                        <td><%= staff.getName() %></td>
                        <td><%= staff.getEmail() %></td>
                        <td><%= staff.getInquiry() %></td>
                        <td><%= staff.getinquiryType() %></td>
                    </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </div>
    
    <br><br><br><br>
    <c:url value="inquiryUpadte.jsp" var="inqupdate">
		<c:param name="inqid" value="${inqid}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="inquiry" value="${inquiry}"/>
		<c:param name="inquiryType" value="${inquiryType}"/>
	</c:url>
	
	<h2>HELLO USER</h2>
	
	<a href="${inqupdate}">
	<input type="button" name="update" value="Update My Data">
	</a>
	
	<br>
	<c:url value="deleteInq.jsp" var="inqdelete">
		<c:param name="id" value="${inqid}" />
		<c:param name="name" value="${name}" />
		<c:param name="email" value="${email}" />
		<c:param name="inquiry" value="${inquiry}" />
		<c:param name="InquiryType" value="${inquiryType}" />
	</c:url>
	<a href="${inqdelete}">
		<input type="button" name="delete" value="Delete My Account">
	</a>
    

            
    <script src="inqmanager.js"></script>
    
</body>
</html>