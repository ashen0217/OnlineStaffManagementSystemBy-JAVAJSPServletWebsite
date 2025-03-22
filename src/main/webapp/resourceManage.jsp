<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page import="java.util.List" %>
	<%@ page import="com.ManageResources.ResourceDBUtil" %>
	<%@ page import="com.ManageResources.Resources" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resource</title>
    <link rel="stylesheet" href="resourceManage.css">
    <link rel="stylesheet" href="inqmanager.css">

</head>
<body>
    <h2>Resources</h2>
    <div class="container">
            <br>
        <div class="crud-operations">
            <table id="resourcesTable">
                <c:forEach var="res" items="${resDetails}"> 
		
					<c:set var="resid" value="${res.id}"/>
					<c:set var="resname" value="${res.name}"/>
					<c:set var="restype" value="${res.type}"/>
					<c:set var="quantity" value="${res.qty}"/>
					<c:set var="available" value="${res.avb}"/>
					<c:set var="uploadDate" value="${res.uploadDate}"/>
					<c:set var="description" value="${res.description}"/>

	
					<tr>
						<td>Resource ID:</td>
						<td>${res.id}</td>
					</tr>
					<tr>
						<td>Resource name:</td>
						<td>${res.name}</td>
					</tr>
					<tr>
						<td>Resource type:</td>
						<td>${res.type}</td>
					</tr>
					<tr>
						<td>Quantity:</td>
						<td>${res.qty}</td>
					</tr>
					<tr>
						<td>Availability:</td>
						<td>${res.avb}</td>
					</tr>
					<tr>
						<td>Upload date:</td>
						<td>${res.uploadDate}</td>
					</tr>
					<tr>
						<td>Description:</td>
						<td>${res.description}</td>
					</tr>
				</c:forEach>
          	</table>
            		<br><br><br><br>
        </div>
        <div class="container mt-5">


        <table class="table table-striped table-bordered">	
            <thead class="table-dark">
                <tr>
                    <th>Resource ID</th>
                    <th>Resource</th>
                    <th>Resource type</th>
                    <th>Availability</th>
                    <th>Quantity</th>
                    <th>Upload date</th>
                    <th>Description</th>
                </tr>
            </thead>
            <tbody>
                <%
                ResourceDBUtil staffDao = new ResourceDBUtil();
                List<Resources> resource = staffDao.getAllResource(); // Get all staff members

                for (Resources staff : resource) {
                %>
                    <tr>
                        <td><%= staff.getId() %></td>
                        <td><%= staff.getName() %></td>
                        <td><%= staff.getType() %></td>
                        <td><%= staff.getQty() %></td>
                        <td><%= staff.getAvb() %></td>
                        <td><%= staff.getUploadDate() %></td>
                        <td><%= staff.getDescription() %></td>
                    </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </div>
        
    </div>
    
    <c:url value="ResourceUpdate.jsp" var="resourceUpdate">
		<c:param name="resid" value="${resid}"/>
		<c:param name="resname" value="${resname}"/>
		<c:param name="restype" value="${restype}"/>
		<c:param name="qty" value="${quantity}"/>
		<c:param name="avb" value="${available}"/>
		<c:param name="uploadDate" value="${uploadDate}"/>
		<c:param name="des" value="${description}"/>
	</c:url>
	
	<a href="${resourceUpdate}">
	<input type="button" name="update" value="Update My Data">
	</a>
	
	<br><br>
	<c:url value="ResourceDelete.jsp" var="resourceDelete">
		<c:param name="resid" value="${resid}"/>
		<c:param name="resname" value="${resname}"/>
		<c:param name="restype" value="${restype}"/>
		<c:param name="qty" value="${quantity}"/>
		<c:param name="avb" value="${available}"/>
		<c:param name="uploadDate" value="${uploadDate}"/>
		<c:param name="des" value="${description}"/>
	</c:url>
	
	<a href="${resourceDelete}">
	<input type="button" name="update" value="Delete resource details">
	</a>

    <script src="resourceManage.js"></script>
</body>
</html>