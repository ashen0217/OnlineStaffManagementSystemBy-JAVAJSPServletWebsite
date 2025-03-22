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
            <a href="web.html"><img src="images/logo2.jpeg"></a>
            <div class="nav-links" id="navLinks">
                <i class="fa fa-times" onclick="hideMenu()"></i>
                <ul>
                    <li><a href="web.jsp">HOME</a></li>
                    <li><a href="about.jsp">ABOUT</a></li>
                    <li><a href="services.jsp">SERVICES</a></li>
                   <li><a href="ResourceUpload.jsp">RESOURCES</a></li>
                    <li><a href="contact.jsp">CONTACT</a></li>
                    <li><a href="inquiryLogin.jsp">MY-INQUIRIES</a></li>
                    <li><a href="inqform.jsp">INQUIRIES-INSERT</a></li>
                    <li><a href="updateStaff.jsp">STAFF-PROFILE</a></li>
                </ul>
            </div>
            <i class="fa fa-bars" onclick="showMenu()"></i>
        </nav>
        <h1>Contact us</h1>
    </section>
    <!--contact us-->
    <section class="location">
       
        <img src="images/map.jpeg" alt="">   <img src="images/office3.jpeg" alt="">   <img src="images/office.jpeg" alt="">
        <hr>
    </section>
    
    <section class="contact-us">
        <div class="row">
            <div class="contact-col">
                <div>
                    <i class="fa fa-home" ></i>
                    <span>
                        <h5>XYZ Road,ABC Building</h5>
                        <p>Pothanegama Anuradhapura</p>
                    </span>
                </div>
                <div>
                    <i class="fa fa-phone" ></i>
                    <span>
                        <h5>+94766954545</h5>
                        <p>Monday to Saturday,10am to 6pm </p>
                    </span>
                </div>
                <div>
                    <i class="fa fa-envelope-o" ></i>
                    <span>
                        <h5>info@gmail.com</h5>
                        <p>Email us your query</p>
                    </span>
                </div>
            </div>
            <div class="contact-col">
                <form action="formAngular.php" method="post">
                    <input type="text" name="name" placeholder="Enter your name" required>
                    <input type="email"  name="email" placeholder="Enter your email address" required>
                    <input type="text" name="subject" placeholder="Enter your subject" required>
                    <textarea  rows="8" name="message" placeholder="message" required></textarea>
                    <button type="submit" class="hero btn  red-btn">Send message</button>
                </form>



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