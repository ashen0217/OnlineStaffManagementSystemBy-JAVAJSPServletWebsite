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
    <section class="header">
        <nav>
            <a href="web.jsp"><img src="images/logo2.jpeg"></a>
            <nav>
            <div class="nav-links" id="navLinks">
            	<ul>
            	 <li><a href="login.jsp">LOGIN</a></li>
                 <li><a href="signup02.jsp">SIGNUP</a></li>
                </ul>
                <i class="fa fa-times" onclick="hideMenu()"></i>
                <ul>
                </ul>
            </div>
            </nav>
            <i class="fa fa-bars" onclick="showMenu()"></i>
        </nav>
        <br><br><br>
        <div class="text-box">
            <h1>World's Biggest Software development community</h1>
            <p>
                This is our website regarding online staff management system 
               <br>We will guide and help you to achieve your goal.
            </p>
            <a href="about.jsp" class="hero-btn">Visit us to Know more</a>
        </div>
    </section>
    <!--course-->
    <section class="course">
        <h1>We are hiring</h1>
        <p>
            We are hire software engineers,graphic designers, full satck developers, web developers
        </p>

        <div class="row">
            <a class="crs" href="about.jsp">
                <div class="course-col">
                    <h3>Web developers</h3>
                    <p>
                        To develop real world web applications 
                    
                    </p>
                </div>
            </a>

            <a class="crs" href="about.jsp">
                <div class="course-col">
                    <h3>Software Engineers</h3>
                    <p>
                        To develop real world softwares
                   
                    </p>
               </div>
            </a>

            <a class="crs" href="about.jsp">
                <div class="course-col">
                    <h3>Graphic designers</h3>
                    <p>
                        To enhance creativity 
                    </p>
            </div>
            </a>
        </div>

    </section>
    
    <!--campus-->

    <section class="campus">
        <h1>Our Global Institutes</h1>
        

        <div class="row">
            <div class="campus-col">
                <img src="images/london.png">
                <div class="layer">
                    <h3>LONDON</h3>
                </div>
            </div>
            <div class="campus-col">
                <img src="images/newyork.png">
                <div class="layer">
                    <h3>NEW-YORK</h3>
                </div>
            </div>
            <div class="campus-col">
                <img src="images/washington.png">
                <div class="layer">
                    <h3>WASHINTON</h3>
                </div>
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

    <!--texttimonials-->
    <section class="testimonials">
        <h1>What our staff members says</h1>
        <p><p>Lorem ipsum dolor amet,consectetur adipiscing elit.</p>
        <div class="row">
            <div class="testimonial-col">
                <img src="images/user1.jpg">
                <div>
                    <p>
                        Great place for achieving goals
                    </p>
                    <h3>Christine Berkley</h3>
                    <i class="fa fa-star" ></i>
                    <i class="fa fa-star" ></i>
                    <i class="fa fa-star" ></i>
                    <i class="fa fa-star" ></i>
                    <i class="fa fa-star-o" ></i>
                </div>
            </div>
            <div class="testimonial-col">
                <img src="images/user2.jpg">
                <div>
                    <p>
                        I am impressed, your service and guidamce to become a software engineer and I finally
                        got my dream job! Thanks! I am highly recommend this staff management system to achieve
                        their dream. 
                    </p>
                    <h3>David Byer</h3>
                    <i class="fa fa-star" ></i>
                    <i class="fa fa-star" ></i>
                    <i class="fa fa-star" ></i>
                    <i class="fa fa-star" ></i>
                    <i class="fa fa-star-half-o" ></i>
                </div>
            </div>
        </div>

    </section>

    <!--comment-->
    <section class="cta">
        <h1>Provide your CV and join with US <br> </h1>
        <a href="contact.jsp" class="hero-btn"> contact us</a>
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
        <p>Made with <i class="fa fa-heart-o" ></i> by project group</p>
    </section>

    <script src="web.js"></script>
</body>
</html>