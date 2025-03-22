<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login page</title>
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script  src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    <script src="web.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" >
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
    </section>
    <br><br> 
    <div class="describe">
        <h1 class="describe">Login or create an account here to explore our contents</h1>
        </div>
    <br><br>
    

    <div class="wrapper">
        <div class="form-wrapper sign in">
            <form action="loginServlet" method="post">
                <h2>Login</h2>
                <div class="input-group">
                    <input type="text" name="email" id="email" required>
                    <label for="">Email</label>
                </div>

                <div class="input-group">
                    <input type="password" name="pass" id="pass" required>
                    <label for="">Password</label>
                </div>

                <div class="remember">
                    <label for=""><input type="checkbox" name="remember">Remember Me</label>
                </div>
                <button type="submit" value="login" name="submit">Login</button>
                <div class="signup-link">
                    <p>Don't have an account <a href="signup02.jsp" class="SignUpBtn">Sign up</a></p>
                </div>
                </form>

        </div>
    </div>
    
    <!--Footer-->
    <section class="footer">
        <h4>About us</h4>

        <p>
            We are world largest Online Staff management System
            to provide a Quality service to people.Join with us to achieve your work experience
        </p>
        <div class="icons">
            <i class="fa fa-facebook" ></i>
            <i class="fa fa-twitter" ></i>
            <i class="fa fa-instagram" ></i>
            <i class="fa fa-linkedin" ></i>
        </div>
        <p>Made with <i class="fa fa-heart-o" ></i> by easy tutorials</p>
    </section>
    <script src="login.js"></script>
    <script>
		            function validateForm() { // Function name changed for clarity
		                var email = document.getElementById("email").value.trim(); // Use trim() to remove leading/trailing whitespace
		                var pasword = document.getElementById("pass").value;
		
		                var isValid = true;
		
		                if (email === "") {
		                    alert("Please enter the email");               //email validation
		                    isValid = false;
		                } else {
		                    nameError.textContent = "";
		                }
		
		                if (!isValidEmail(email)) {
		                    emailError.textContent = "Please enter a valid email address."; //email validation
		                    isValid = false;
		                } else {
		                    emailError.textContent = "";
		                }
		
		                if (password === "") {
		                    inquiryError.textContent = "Please enter your password.";  //password validation
		                    isValid = false;
		                } else {
		                    inquiryError.textContent = "";
		                }
		
		                return isValid;
		            }
		
		            function isValidEmail(email) {
		                var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
		                return emailRegex.test(email);
            		}
      </script>
</body>
</html>