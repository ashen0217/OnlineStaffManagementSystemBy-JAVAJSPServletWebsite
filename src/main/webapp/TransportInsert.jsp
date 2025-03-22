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
    </style>

    <script>
        function showAlert() {
            alert("Form submitted successfully!");
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
    
    <div class="container">
        <div class="form-container mt-5">
            <h1><i class="fas fa-user-plus"></i> Insert Transport Service</h1>
            <form action="TransportInsertServlet" method="post" onsubmit="showAlert()">
                <label>Bus</label>
                <input type="text" name="busNo" class="form-control" placeholder="Enter the bus numberplate" required>
                <br>
                <label>Condition</label>
                <input type="text" name="condt" class="form-control" placeholder="Enter the bus condition" required>
                <br>
                <label>Driver NIC</label>
                <input type="text" name="dnic" class="form-control" placeholder="Enter the driver NIC" required>
                <br>
                <label>NO Of Passengers</label>
                <input type="text" name="noOfpass" class="form-control" placeholder="Enter the number of passengers" required>
                <br>
                <label>Start Location</label>
                <input type="text" name="statloc" class="form-control" placeholder="Enter the start location" required>
                <br>
                <label>End Location</label>
                <input type="text" name="endloc" class="form-control" placeholder="Enter the end location" required>
                <br>
                <input type="submit" name="submit" class="btn btn-success" value="Enter details">
            </form>
            <a href="TransportView.jsp" class="btn btn-success">View Transport</a>
        </div>
    </div>              

</body>
</html>
