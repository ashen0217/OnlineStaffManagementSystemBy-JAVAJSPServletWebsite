//Javascript for toggle menu

var navLinks = document.getElementById("navLinks");

function showMenu()
{
    navLinks.style.right = "0";
}

function hideMenu()
{
    navLinks.style.right = "-200px";
}

// Function to validate login form
function validateLogin() {
    let email = document.getElementById('email').value;
    let password = document.getElementById('pass').value;

    if (email === "") {
        alert("Please enter your email");
        return false;
    }

    if (!validateEmail(email)) {
        alert("Please enter a valid email address");
        return false;
    }

    if (password === "") {
        alert("Please enter your password");
        return false;
    }

    alert("Login Successful!");
    return true; // Continue with form submission
}

// Helper function to validate email pattern
function validateEmail(email) {
    const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return re.test(String(email).toLowerCase());
}



