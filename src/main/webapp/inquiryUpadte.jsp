<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Staff Registration</title>
    <!-- Bootstrap and Font Awesome CDN Links -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
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

    <script>
        function validateForm() {
            var phone = document.forms["registrationForm"]["phone"].value;
            var phonePattern = /^[0-9]{10}$/;

            if (!phonePattern.test(phone)) {
                alert("Phone number must be exactly 10 digits.");
                return false; // Prevent form submission
            }

            return true; // Allow form submission
        }
    </script>
</head>
<body>

    <!-- Navigation Bar -->
    <nav class="navbar">
        <div class="navbar-left">
            <a href="web.jsp">Staff Management</a>
        </div>
    </nav>
    
    <%
		String inqid = request.getParameter("inqid");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String inquiry = request.getParameter("inquiry");
		String inqType = request.getParameter("inquiryType");
	%>

    <!-- Centered Form Container -->
    <div class="container">
        <div class="form-container mt-5">
            <h1><i class="fas fa-user-plus"></i> Update Inquiries</h1>
            <form action="UpdateInquiryServlet" method="POST">
                <div class="mb-3">
                	<label>Inquiry id</label>
                    <input type="text" class="form-control" name="inqID" placeholder="InquiryID" required readonly value="<%= inqid %>">
                </div>
                <div class="mb-3">
                	<label>Inquiry name</label>
                    <input type="text" class="form-control" name="name" placeholder="Name" required value="<%= name %>">
                </div>
                <div class="mb-3">
                	<label>Inquiry email</label>
                    <input type="email" class="form-control" name="email" placeholder="Email" required value="<%= email %>">
                </div>
                <div class="mb-3">
                	<label>Inquiry inquiry</label>
                    <input type="text" class="form-control" name="inquiry" placeholder="Inquiry" required value="<%= inquiry %>">
                </div>
                <div class="mb-3">
                	<label>Inquiry inquiry type</label>
                    <input type="text" class="form-control" name="inqType" placeholder="inquiry Type" required value="<%= inqType%>">
                </div>
                <button type="submit" class="btn btn-success">
                    <i class="fas fa-check"></i> Update inquiry Details
                </button>
            </form>
        </div>
    </div>

</body>
</html>
