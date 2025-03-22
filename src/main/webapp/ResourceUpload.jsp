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

        .form-container input, .form-container select {
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
    </style>

</head>
<body>

    <!-- Navigation Bar -->
    <nav class="navbar">
        <div class="navbar-left">
            <a href="web.jsp">Staff Management</a>
            <a href="resourceView.jsp">View Resources</a>
        </div>
    </nav>           
    
    <div class="container">
        <div class="form-container mt-5">
            <h1><i class="fas fa-user-plus"></i> Resources </h1>
            <form id="resourceForm" action="ResourceServlet" method="post" onsubmit="return showAlert();">
                <label>Resource:</label>
                <input type="text" name="res" class="form-control" placeholder="Enter resource name" required>
                <br>
                <label>Resource Type:</label>
                <select id="resourceType" name="restyp">  
                    <option value="material">Material</option>
                    <option value="employee">Employee</option>  
                    <option value="equipment">Equipment</option>  
                </select>
                <br><br>
                <label>Quantity:</label>
                <input type="text" name="qty" class="form-control" placeholder="Enter the quantity" required>
                <br>
                
                <label>Availability:</label>
                <select id="availability" name="avb">  
                    <option value="available">Available</option>  
                    <option value="unavailable">Unavailable</option>  
                    <option value="booked">Booked</option>
                    <option value="InMaintenance">In Maintenance</option>
                    <option value="OutOfOrder">Out Of Order</option>  
                </select>
                <br><br>
                <label>Upload Date:</label>
                <input type="text" name="uploadDate" id="updd" class="form-control" placeholder="YYYY-MM-DD" required>
                <br>
                <label>Description:</label>
                <input type="text" name="des" class="form-control" placeholder="Description" required>
                <br>
                <input type="submit" name="submit" class="btn btn-success" value="Enter the details">
            </form>
        </div>
    </div>

    <script>
        function showAlert() {
            const uploadDate = document.querySelector('input[name="uploadDate"]').value;
            const datePattern = /^\d{4}-\d{2}-\d{2}$/; // YYYY-MM-DD format
            
            // Check if upload date is empty
            if (!uploadDate) {
                alert("Please enter an upload date.");
                return false; // Prevent form submission
            }

            // Validate the date format
            if (!datePattern.test(uploadDate)) {
                alert("Please enter a valid upload date in the format YYYY-MM-DD.");
                return false; // Prevent form submission
            }

            alert("Form submitted successfully!");
            return true; // Allow the form to be submitted
        }
    </script>

</body>
</html>
