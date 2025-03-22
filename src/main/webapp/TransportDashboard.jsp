<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page import="java.util.List" %>
	<%@ page import="com.TransportService.TransportDBUtil" %>
	<%@ page import="com.TransportService.Transport" %>
    
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
		
		<c:forEach var="tport" items="${transportDetails}"> 
		
			<c:set var="tid" value="${tport.transportID}"/>
			<c:set var="busNo" value="${tport.busno}"/>
			<c:set var="condt" value="${tport.condition}"/>
			<c:set var="dname" value="${tport.driverNIC}"/>
			<c:set var="noOfpass" value="${tport.noOFpassengers}"/>
			<c:set var="statloc" value="${tport.statlocation}"/>
			<c:set var="endloc" value="${tport.endlocation}"/>
	
			<tr>
				<td>Transport ID</td>
				<td>${tport.transportID}</td>
			</tr>
			<tr>
				<td> BusNO</td>
				<td>${tport.busno}</td>
			</tr>
			<tr>
				<td>Bus Condition</td>
				<td>${tport.condition}</td>
			</tr>
			<tr>
				<td>Bus Driver NIC</td>
				<td>${tport.driverNIC}</td>
			</tr>
			<tr>
				<td>Number of passengers</td>
				<td>${tport.noOFpassengers}</td>
			</tr>
			<tr>
				<td>Bus Starting location</td>
				<td>${tport.statlocation}</td>
			</tr>
			<tr>
				<td>Destination</td>
				<td>${tport.endlocation}</td>
			</tr>
	
		</c:forEach>
	</table>
	<div class="container mt-5">


        <table class="table table-striped table-bordered">	
            <thead class="table-dark">
                <tr>
                    <th>Transport ID</th>
                    <th>Bus No</th>
                    <th>Bus condition</th>
                    <th>Driver NIC</th>
                    <th>Number of passengers</th>
                    <th>Start location</th>
                    <th>End location</th>
                </tr>
            </thead>
            <tbody>
                <%
                TransportDBUtil staffDao = new TransportDBUtil();
                List<Transport> tport = staffDao.getAllTransport(); // Get all staff members

                for (Transport staff : tport) {
                %>
                    <tr>
                        <td><%= staff.gettransportID() %></td>
                        <td><%= staff.getbusno() %></td>
                        <td><%= staff.getCondition() %></td>
                        <td><%= staff.getDriverNIC() %></td>
                        <td><%= staff.getNoOFpassengers() %></td>
                        <td><%= staff.getStatlocation() %></td>
                        <td><%= staff.getEndlocation() %></td>
                    </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </div>
	
	<br><br>
	
	<c:url value="TransportUpdate.jsp" var="transportUpdate">
		<c:param name="tid" value="${tid}"/>
		<c:param name="busno" value="${busNo}"/>
		<c:param name="condt" value="${condt}"/>
		<c:param name="dname" value="${dname}"/>
		<c:param name="noofpass" value="${noOfpass}"/>
		<c:param name="statloc" value="${statloc}"/>
		<c:param name="endloc" value="${endloc}"/>
	</c:url>
	
	
	<a href="${transportUpdate}">
	<input type="button" name="update" value="Update My Data">
	</a>
	
	
	<br>
	<c:url value="TransportDelete.jsp" var="staffdelete">
		<c:param name="tid" value="${tid}"/>
		<c:param name="busno" value="${busNo}"/>
		<c:param name="condt" value="${condt}"/>
		<c:param name="dname" value="${dname}"/>
		<c:param name="noofpass" value="${noOfpass}"/>
		<c:param name="statloc" value="${statloc}"/>
		<c:param name="endloc" value="${endloc}"/>
	</c:url>
	
	<a href="${staffdelete}">
		<input type="button" name="delete" value="Delete My Account">
	</a>
</body>
</html>