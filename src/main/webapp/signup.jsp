<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script  src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    <script src="web.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" >
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,500;0,600;1,100;1,200;1,300&family=Rubik+Bubbles&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="login.css">
    <script src="web.js"></script>
</head>
<body>
    <section class="sub-header">
        <nav>
            <img class="img-tag" src="images/logo2.jpeg">
            <div class="nav-links" id="navLinks">
                <i class="fa fa-times" onclick="hideMenu()"></i>
                <ul>
                    <li><a href="web.jsp">HOME</a></li>
                    <li><a href="about.jsp">ABOUT</a></li>
                    <li><a href="services.jsp">COURSE</a></li>
                    <li><a href="blog.jsp">BLOG</a></li>
                    <li><a href="contact.jsp">CONTACT</a></li>
                    <li><a href="login.jsp">LOGIN</a></li>
                </ul>
            </div>
            <i class="fa fa-bars" onclick="showMenu()"></i>
        </nav>
    </section><br><br>
 

    <div class="form-wrapper sign-up">
        <form action="StaffmemberInsert" method="post">
            <h2>Sign Up</h2>
            <div class="input-group">
                <input type="text" name="name" required>
                <label> Name</label>
            </div>
            <div class="input-group">
                <input type="text" name="email" required>
                <label>Email</label>
            </div>
            <div class="input-group">
                <input type="text" name="phone" required>
                <label>Phone</label>
            </div>
            <div class="input-group">
                <input type="email" name="uid" required>
                <label>User name</label>
            </div>
            <div class="input-group">
                <input type="password" name="psw" required>
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