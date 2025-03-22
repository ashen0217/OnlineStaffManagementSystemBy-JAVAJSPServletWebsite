<!DOCTYPE html>
<html lang="en">
<head>
    <title>Online Staff Management System</title>
    <link rel="stylesheet" href="inqform.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,500;0,600;1,100;1,200;1,300&family=Rubik+Bubbles&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="web.css">
</head>
<body style="background-image: linear-gradient(rgba(4,9,30,0.7),rgba(4,9,30,0.7)),url(images/ashen.jpg)">

    <h1>Online Staff Management System</h1>
    <p>Please complete this form and one of our agents will reply to you by email as soon as possible.</p>

    <form action="InquiryInsertServlet" method="post" onsubmit="return validateForm()">

        <label for="name">Name:</label>
        <input type="text" id="name" name="name" placeholder="Enter your name"><br>

        <span id="nameError"></span><br>  <label for="email">Email:</label>
        <input type="email" id="email" name="email" placeholder="Enter your email"><br>

        <span id="emailError"></span><br>  <label for="inquiry">Inquiry</label>
        <input type="text" id="inquiry" name="inquiry" placeholder="Enter your inquiry"><br>

        <span id="inquiryError"></span><br>  <br>

        <label for="inquiry">Inquiry type:</label> <br>
        <label>ex: Request official document/Registration problem/other</label>
        <input type="text" id="inquiryTyp" name="inquiryTyp" placeholder="Enter your inquiry type"><br>

        <script>
            function validateForm() { 
                var name = document.getElementById("name").value.trim(); 
                var email = document.getElementById("email").value;
                var inquiry = document.getElementById("inquiry").value.trim();
                var inquiryType = document.getElementById("inquiryTyp").value;

                var isValid = true;

                if (name === "") {
                    nameError.textContent = "Please enter your name.";                 //name validation
                    isValid = false;
                } else {
                    nameError.textContent = "";
                }

                if (!isValidEmail(email)) {
                    emailError.textContent = "Please enter a valid email address.";                 //email validation
                    isValid = false;
                } else {
                    emailError.textContent = "";
                }

                if (inquiry === "") {
                    inquiryError.textContent = "Please enter your inquiry.";                     //inquiry validation
                    isValid = false;
                } else {
                    inquiryError.textContent = "";
                }

                if (inquiryType === "") {
                    alert("Please select your inquiry type.");                         //inquiry type validation
                    isValid = false;
                }

                return isValid;
            }

            function isValidEmail(email) {
                var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                return emailRegex.test(email);
            }
        </script>

        <input type="submit" value="Submit" name="submit" id="submit">
    </form>

</body>
</html>