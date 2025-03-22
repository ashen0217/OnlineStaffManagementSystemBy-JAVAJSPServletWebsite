<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    <%@ page import="java.util.List" %>
	<%@ page import="com.memberLogin.memberDBUtil" %>
	<%@ page import="com.memberLogin.staffMember" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<title>Insert title here</title>
	
	<style type="text/css">
		body{
			font-family: Hind SemiBold;
		}
	
		table, th, td {
  			border: 1px solid black;
		}
	</style>
	<style type="text/css">
		body{
			font-family: Hind SemiBold;
		}
	
		table, th, td {
  			border: 1px solid black;
		}

        body {
            font-family: Arial, sans-serif;
            background-color: lightblue;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: block;
            flex-direction: column;
        }

        /* Navigation Bar Styles */
        .navbar {
            background-color: #333;
            padding: 5px;
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: -20px;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            padding: 14px 20px;
            display: inline-block;
        }

        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }

        .navbar .navbar-left {
            font-size: 20px;
        }

        .navbar .navbar-right {
            display: flex;
        }

        /* Center Form Styles */
        .container {
            flex-grow: 1;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .form-container {
            width: 100%;
            max-width: 400px;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
        }

        .form-container h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        .form-container input {
            width: 100%;
            margin-bottom: 10px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .form-container button {
            width: 100%;
            padding: 10px;
            background-color: #5cb85c;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
        }

        .form-container button:hover {
            background-color: #4cae4c;
        }

        .form-container .form-control:focus {
            border-color: #5cb85c;
            box-shadow: none;
        }

        .alert {
            text-align: center;
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 5px;
        }

        .alert-success {
            background-color: #dff0d8;
            color: #3c763d;
        }

        .alert-error {
            background-color: #f2dede;
            color: #a94442;
        }

		
	</style>
</head>
<body>
	<table>
		
		<c:forEach var="staff" items="${memDetails}"> 
		
		<c:set var="id" value="${staff.id}"/>
		<c:set var="name" value="${staff.name}"/>
		<c:set var="email" value="${staff.email}"/>
		<c:set var="phone" value="${staff.phone}"/>
		<c:set var="username" value="${staff.userName}"/>
		<c:set var="password" value="${staff.password}"/>
		
		<tr>
			<td>Staff ID</td>
			<td>${staff.id}</td>
		</tr>
		<tr>
			<td>StaffMember Name</td>
			<td>${staff.name}</td>
		</tr>
		<tr>
			<td>Staff Email</td>
			<td>${staff.email}</td>
		</tr>
		<tr>
			<td>Staff Phone</td>
			<td>${staff.phone}</td>
		</tr>
		<tr>
			<td>Staff User Name</td>
			<td>${staff.userName}</td>
		</tr>
		<tr>
			<td>Staff Password</td>
			<td>${staff.password}</td>
		</tr>
	
		</c:forEach>
	</table>
	<div class="container mt-5">
        <table class="table table-striped table-bordered">
        	<c:forEach var="staff" items="${memDetails}"> 
		
				<c:set var="id" value="${staff.id}"/>
				<c:set var="name" value="${staff.name}"/>
				<c:set var="email" value="${staff.email}"/>
				<c:set var="phone" value="${staff.phone}"/>
				<c:set var="username" value="${staff.userName}"/>
				<c:set var="password" value="${staff.password}"/>
			</c:forEach>	
            <thead class="table-dark">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Department</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <%
                memberDBUtil staffDao = new memberDBUtil();
                List<staffMember> staffList = staffDao.getAllStaff(); // Get all staff members

                for (staffMember staff : staffList) {
                %>
                    <tr>
                        <td><%= staff.getId() %></td>
                        <td><%= staff.getName() %></td>
                        <td><%= staff.getEmail() %></td>
                        <td><%= staff.getPhone() %></td>
                        <td><%= staff.getUserName() %></td>
                        <td><%= staff.getPassword() %></td>
                    </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </div>
	
	
	
	
	<c:url value="updateStaff.jsp" var="stfupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="pass" value="${password}"/>
	</c:url>
	
	<h2>HELLO USER</h2>
	
	<a href="${stfupdate}">
	<input type="button" name="update" value="Update My Data">
	</a>
	
	<br>
	<c:url value="deleteAccount.jsp" var="staffdelete">
		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="email" value="${email}" />
		<c:param name="phone" value="${phone}" />
		<c:param name="uname" value="${username}" />
		<c:param name="pass" value="${password}" />
	</c:url>
	<a href="${staffdelete}">
		<input type="button" name="delete" value="Delete My Account">
	</a>
</body>
</html>