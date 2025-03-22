<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign-Up</title>
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script  src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    <script src="web.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,500;0,600;1,100;1,200;1,300&family=Rubik+Bubbles&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <link rel="stylesheet" href="login.css"> 
</head>
<body>
<section class="sub-header">
        <nav>
            <img class="img-tag" src="images/logo2.jpeg">
            <i class="fa fa-bars" onclick="showMenu()"></i>
        </nav>
    </section><br><br>


	<div class="form-wrapper sign-up">
        <form action="StaffmemberInsert" method="post">
            <h2>Sign Up</h2>
            <div class="input-group">
                <input type="text" name="name" id="name" required>
                <label> Name</label>
            </div>
            <div class="input-group">
                <input type="text" name="email"  id="email" required>
                <label>Email</label>
            </div>
            <div class="input-group">
                <input type="text" name="phone" id="phone" required>
                <label>Phone</label>
            </div>
            <div class="input-group">
                <input type="text" name="uid"  id="uid" required>
                <label>User name</label>
            </div>
            <div class="input-group">
                <input type="password" name="psw" id="psw" required>
                <label> Password</label>
            </div>
           
            <div class="remember">
                <label for=""><input type="checkbox" name="agree">I agree the terms and conditions</label>
            </div>
            <button type="submit" name="submit" value="Sign-UP">Sign Up</button>
            <div class="signup-link">
                <p>Already have an account <a href="login.jsp" class="SignInBtn">Sign In</a></p>
            </div>
        </form>

    </div>
    
    <script>
    function validateForm(event) {
        // Prevent form submission until validation is complete
        var isValid = true;

        var name = document.getElementById("name").value.trim();
        var email = document.getElementById("email").value.trim();
        var phone = document.getElementById("phone").value.trim();
        var username = document.getElementById("uid").value.trim();
        var password = document.getElementById("psw").value.trim();

        if (name === "") {
            alert("Please enter your name."); // Name validation
            isValid = false;
        }

        if (!isValidEmail(email)) {
            alert("Please enter a valid email address."); // Email validation
            isValid = false;
        }

        // Phone number validation
        if (!isValidPhoneNumber(phone)) {
            alert("Please enter a valid phone number (10 digits, numbers only)."); // Phone validation
            isValid = false;
        }

        if (username === "") {
            alert("Please enter a username."); // Username validation
            isValid = false;
        }

        if (password === "") {
            alert("Please enter your password."); // Password validation
            isValid = false;
        }

        // If valid, submit the form
        if (isValid) {
            // Allow the form to be submitted
            return true;
        } else {
            // Prevent form submission
            event.preventDefault();
        }
    }

    function isValidEmail(email) {
        var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        return emailRegex.test(email);
    }

    function isValidPhoneNumber(phone) {
        var phoneRegex = /^\d{10}$/; // Matches exactly 10 digits
        return phoneRegex.test(phone);
    }

    // Attach validation to form submission
    document.querySelector("form").addEventListener("submit", validateForm);
</script>


        
	<!--Footer-->
    <section class="footer">
        <h4>About us</h4>

        <p>
            We are world largest students help desk and we support every students in the world
            to study or do their every projects successfully. We provide a large number of course
            materials and we guide them to achieve their goal
        </p>
        <div class="icons">
            <i class="fa fa-facebook" ></i>
            <i class="fa fa-twitter" ></i>
            <i class="fa fa-instagram" ></i>
            <i class="fa fa-linkedin" ></i>
        </div>
        <p>Made with <i class="fa fa-heart-o" ></i> by easy tutorials</p>
    </section>
    
    <script src="web.js"></Script>
</body>
</html>