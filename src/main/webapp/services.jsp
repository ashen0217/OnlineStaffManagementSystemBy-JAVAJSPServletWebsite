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
</head>
<body>
    <section class="sub-header">
        <nav>
            <a href="index.html"><img src="images/logo2.jpeg"></a>
            <div class="nav-links" id="navLinks">
                <i class="fa fa-times" onclick="hideMenu()"></i>
                <ul>
                    <li><a href="ResourceUpload.jsp">RESOURCES</a></li>
                    <li><a href="inquiryLogin.jsp">MY-INQUIRIES</a></li>
                    <li><a href="inqform.jsp">INQUIRIES-INSERT</a></li>
                    <li><a href="updateStaff.jsp">STAFF-PROFILE</a></li>
                    <li><a href="TransportInsert.jsp">INSERT-TRANSPORT-SERVICE</a></li>
                   
                </ul>
            </div>
            <i class="fa fa-bars" onclick="showMenu()"></i>
        </nav>
        <h1>Our contents</h1>
    </section>
    <!--courses-->
    <section class="course">
        <h1>Contents we offer</h1>
        <p>Contents that we ofer for students in the world to achieve their dream</p>

        <div class="row">
            <div class="course-col">
                <h3>Transport Facilities</h3>
                <p>lorem ipsum dolor sit amet, consectetur adipiscing elit.
                    pellentesque aliquet turpis nulla, eleifend faucibus easiest
                    sollicitudin ut. Maecenas ut venenatis ex, et dapibus pursus
                    Donec sit.
                </p>
            </div>
            <div class="course-col">
                <h3>Resources for working environment</h3>
                <p>lorem ipsum dolor sit amet, consectetur adipiscing elit.
                    pellentesque aliquet turpis nulla, eleifend faucibus easiest
                    sollicitudin ut. Maecenas ut venenatis ex, et dapibus pursus
                    Donec sit.
                </p>
            </div>
            <div class="course-col">
                <h3>Extra currcular activities</h3>
                <p>lorem ipsum dolor sit amet, consectetur adipiscing elit.
                    pellentesque aliquet turpis nulla, eleifend faucibus easiest
                    sollicitudin ut. Maecenas ut venenatis ex, et dapibus pursus
                    Donec sit.
                </p>
            </div>
        </div>

    </section>

    <!--facilities-->
    <section class="facilities">
        <h1>Our Facilities</h1>
        <p>Lorem ipsum dolor amet,consectetur adipiscing elit.</p>

        <div class="row">
            <div class="col-facilities">
                <img src="images/library.png" alt="">
                <h3>World class libraries</h3>
                <p>
                    We have both online and physical libraries
                </p>
            </div>
            <div class="col-facilities">
                <img src="images/basketball.png" alt="">
                <h3>Largest playground</h3>
                <p>
                    our institution have lot's of games to enjoy.
                </p>
            </div>
            <div class="col-facilities">
                <img src="images/cafeteria.png" alt="">
                <h3>Tasty and healthy food</h3>
                <p>
                    We have lot's of cafeterias
                </p>
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