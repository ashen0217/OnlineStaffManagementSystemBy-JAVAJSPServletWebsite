<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>StaffManagement</title>
    <link rel="stylesheet" href="web.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" >
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,500;0,600;1,100;1,200;1,300&family=Rubik+Bubbles&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="web.js"></script>
</head>
<body>
    <section class="sub-header">
        <nav>
            <a href="web.html"><img src="images/logo2.jpeg"></a>
            <div class="nav-links" id="navLinks">
                <i class="fa fa-times" onclick="hideMenu()"></i>
                <ul>
                    <li><a href="web.jsp">HOME</a></li>
                    <li><a href="about.jsp">ABOUT</a></li>
					<li><a href="blog.jsp">BLOG</a></li>
                    <li><a href="contact.jsp">CONTACT</a></li>
                    
                </ul>
            </div>
            <i class="fa fa-bars" onclick="showMenu()"></i>
        </nav>
        <h1>About us</h1>
    </section>

    <!--about us content-->
    <section class="about-us">
        <div class="row">
            <div class="about-col">
                <h1>We are the world's largest Staff management community</h1>
                <p>lorem ipsum dolor sit amet, consectetur adipiscing elit.
                    pellentesque aliquet turpis nulla, eleifend faucibus easiest
                    sollicitudin ut. Maecenas ut venenatis ex, et dapibus pursus
                    Donec sit amet nisl non justo malesuada formentum. Donec eget felis dolor.
                    Suspendise condimentum vestibulum ex ac cursus. Nam pharetra viverra efficitur.
                    Sed pellentesque luctus arcu,quris finibus nibh luctus mattis
                </p>
                <a href="" class="hero-btn red-btn">Explore now</a>
            </div>
            <div class="about-col">
                <img src="images/about.jpg" >
            </div>

        </div>

    </section>
    
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

    <script src="web.js"></script>
</body>
</html>