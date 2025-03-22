<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.memberLogin.staffMember" %>

<html>
<head>
    <title>Update Staff Details</title>
    
    <!-- Bootstrap and Tailwind CDN Links -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.tailwindcss.com"></script>
    
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f9fafb;
        }

               /* Navigation Bar Styles */
        .navbar {
            background-color: #333;
            padding: 5px;
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
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



        h2 {
            margin-top: 10px;
            color: #333;
            text-align: center;
            font-weight: 600;
        }

        form {
            background-color: white;
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            margin-top: 1rem;
        }

        input[type="submit"] {
            background-color: #38bdf8;
            border: none;
        }

        input[type="submit"]:hover {
            background-color: #0ea5e9;
        }
        
        
    </style>
</head>
<body class="bg-gray-100">

        <!-- Navigation Bar -->
    <nav class="navbar">
        <div class="navbar-left">
            <a href="#">Staff Management</a>
        </div>
        <div class="navbar-right">
            <a href="adminDashboard.jsp">Home</a>
            <a href="adminDashboard.jsp">Dashboard</a>
            <a href="logout">Logout</a>
        </div>
    </nav>
    <%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String userName = request.getParameter("uname");
		String password = request.getParameter("pass");
	%>
    

    <!-- Main Content -->
    <div class="container">

        <form action="UpdateStaffServlet" method="post" class="w-full max-w-lg mx-auto">
            <input type="hidden" name="id" value="<%= id %>" />
            
            <div class="mb-4">
                <label for="name" class="block text-gray-700 font-bold mb-2">Name:</label>
                <input type="text" name="name" value="<%= name %>" required 
                       class="form-control p-2 border border-gray-300 rounded-md w-full">
            </div>

            <div class="mb-4">
                <label for="address" class="block text-gray-700 font-bold mb-2">Address:</label>
                <input type="text" name="address" value="<%= email %>" required 
                       class="form-control p-2 border border-gray-300 rounded-md w-full">
            </div>

            <div class="mb-4">
                <label for="email" class="block text-gray-700 font-bold mb-2">Email:</label>
                <input type="email" name="email" value="<%= phone %>" required 
                       class="form-control p-2 border border-gray-300 rounded-md w-full">
            </div>

            <div class="mb-4">
                <label for="phone" class="block text-gray-700 font-bold mb-2">Phone:</label>
                <input type="text" name="phone" value="<%= userName %>" required 
                       class="form-control p-2 border border-gray-300 rounded-md w-full">
            </div>

            <div class="mb-4">
                <label for="department" class="block text-gray-700 font-bold mb-2">Department:</label>
                <input type="text" name="department" value="<%= password %>" required 
                       class="form-control p-2 border border-gray-300 rounded-md w-full">
            </div>

            <div class="flex justify-center">
                <input type="submit" value="Update" class="btn btn-primary w-full py-2 px-4 rounded-md shadow-md">
            </div>
        </form>
    </div>

</body>
</html>
