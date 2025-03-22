<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
            background-image: linear-gradient(rgba(4,9,30,0.7),rgba(4,9,30,0.7)),url(images/ashen.jpg);
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
		String transportid = request.getParameter("tid");
		String busNo = request.getParameter("busno");
		String condition = request.getParameter("condt");
		String Dname = request.getParameter("dname");
		String noOfpass = request.getParameter("noofpass");
		String statloc = request.getParameter("statloc");
		String endloc = request.getParameter("endloc");
	%>

    <!-- Centered Form Container -->
    <div class="container">
        <div class="form-container mt-5">
            <h1><i class="fas fa-user-plus"></i> Remove Transport Service</h1>
            <form action="DeleteTransportServlet" method="post">
                <div class="mb-3">
                    <input type="text" class="form-control" name="tid" placeholder="InquiryID" required readonly value="<%= transportid %>">
                </div>
                <div class="mb-3">
                    <input type="text" class="form-control" name="BNo" placeholder="BusNo" required readonly value="<%= busNo %>">
                </div>
                <div class="mb-3">
                    <input type="text" class="form-control" name="Dname" placeholder="Email" required readonly value="<%= condition %>">
                </div>
                <div class="mb-3">
                    <input type="text" class="form-control" name="Dname" placeholder="Email" required readonly value="<%= Dname %>">
                </div>
                <div class="mb-3">
                    <input type="text" class="form-control" name="Dname" placeholder="Email" required readonly value="<%= noOfpass %>">
                </div>
                <div class="mb-3">
                    <input type="text" class="form-control" name="Dname" placeholder="Email" required readonly value="<%= statloc %>">
                </div>
                <div class="mb-3">
                    <input type="text" class="form-control" name="Dname" placeholder="Email" required readonly value="<%= endloc %>">
                </div>
                
                <button type="submit" class="btn btn-success">
                    <i class="fas fa-check"></i> Remove transport service
                </button>
            </form>
        </div>
    </div>

</body>
</html>
