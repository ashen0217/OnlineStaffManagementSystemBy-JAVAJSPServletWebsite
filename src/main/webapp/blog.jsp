<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>University Website Design Tutorial</title>
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
                    <li><a href="blog.jsp">BLOG</a></li>
                    <li><a href="contact.jsp">CONTACT</a></li>
                    <li><a href="login.jsp">LOGIN</a></li>
                    <li><a href="signup02.jsp">SIGNUP</a></li>
                    <li><a href="inquiryLogin.jsp">MY-INQUIRIES</a></li>
                    <li><a href="inqform.jsp">INQUIRIES-INSERT</a></li>
                    <li><a href="updateStaff.jsp">STAFF-PROFILE</a></li>
                </ul>
            </div>
            <i class="fa fa-bars" onclick="showMenu()"></i>
        </nav>
        <h1>Our services</h1>
    </section>

    <!--blog page content-->
    <section class="blog-content">
        <div class="row">
            <div class="blog-left">
                <img src="images/office.jpeg">
                <h2>Our certificates and Online Programs for 2024</h2>
                <p>
                    lorem ipsum dolor sit amet, consectetur adipiscing elit.
                    pellentesque aliquet turpis nulla, eleifend faucibus easiest
                    sollicitudin ut. Maecenas ut venenatis ex, et dapibus pursus
                    Donec sit amet nisl non justo malesuada formentum. Donec eget felis dolor.
                    Suspendise condimentum vestibulum ex ac cursus.
                </p>
                <br>
                <p>
                    Effective staff management is crucial for the success of any organization, as it 
                    involves overseeing and coordinating a team to achieve common goals. A good manager 
                    fosters a positive work environment by promoting clear communication, setting achievable 
                    expectations, and providing necessary resources and support. Additionally, staff management requires understanding each 
                    team member's strengths and weaknesses to allocate tasks appropriately, ensuring optimal productivity and job satisfaction. 
                    Regular feedback and professional development opportunities are also key to maintaining motivation and improving performance.
                     Ultimately, successful staff management builds a cohesive, motivated, and high-performing team that drives organizational success.
                </p>
                <br>
                <p>
                    Accessibility and Flexibility: Being cloud-based, online staff management systems allow managers and employees to access the platform 
                    from anywhere at any time, enabling flexible work arrangements and remote management.Centralized Information: 
                    All employee data, including performance records, attendance, and payroll, are stored in a single, easily 
                    accessible platform. This centralization reduces the time spent searching for information and helps maintain accurate records.
                </p>
                <br>

                <div class="comment-box">
                    <h3>Leave a comment</h3>

                    <form class="comment-form">
                        <input type="text" placeholder="Enter name">
                        <input type="email" placeholder="Enter email ">
                        <textarea  rows="5" placeholder="Your comment"></textarea>
                        <button type="submit" class="hero-btn">POST</button>
                    </form>
                </div>
            </div>

            <div class="blog-right">
                <h3>Our member types
                </h3>
                <div>
                    <span>Software Engineering</span>
                    <span>21</span>
                </div>
                <div>
                    <span>Machine Learning</span>
                    <span>34</span>
                </div>
                <div>
                    <span>Data science</span>
                    <span>42</span>
                </div>
                <div>
                    <span>Interactive media</span>
                    <span>22</span>
                </div>
                <div>
                    <span>Software Engineering</span>
                    <span>15</span>
                </div>
                <div>
                    <span>Cyber security</span>
                    <span>56</span>
                </div>
                <div>
                    <span>Interactive media</span>
                    <span>36</span>
                </div>
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