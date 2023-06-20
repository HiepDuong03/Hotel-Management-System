<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <title>Sign Up</title>
    </head>
    <style>
        *{
            font-family: 'Poppins',sans-serif;
        }
        body{
            background-image: url(Asset/images/beach-1761410_1920.jpg);
            background-size: cover;
            background-repeat: no-repeat;
            background-position: bottom left;
            background-attachment: fixed;
            opacity:1;
        }
        .box{
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 80vh;

        }
        .container{
            width: 350px;
            display: flex;
            flex-direction: column;
            padding: 0 15px 0 15px;
        }
        span{
            color: #FFF;
            font-size: small;
            display: flex;
            justify-content: center;
            padding: 10px 0 10px 0;
        }
        header{
            color: #fff;
            font-size: 35px;
            display: flex;
            justify-content: center;
            padding: 10px 0 10px 0;
        }
        .input{
            display: inline-block;
            height:45px;
            width: 87%;
            border: none;
            outline: none;
            border-radius: 30px;
            color: #fff;
            padding: 0 0 0 42px;
            background: rgba(255,255,255,0.6);
        }
        .input-field{
            display: flex;
            flex-direction: column;
        }
        i{
            position: relative;
            top:-31px;
            left: 17px;
            color: #000;
        }
        ::-webkit-input-placehoder{
            color: #fff;
        }
        .submit{
            border: none;
            border-radius: 30px;
            font-size: 15px;
            height: 45px;
            outline: none;
            width: 100%;
            background: rgba(255,255,255,0.7);
            cursor: pointer;
            transition: .3s;
        }
        .submit:hover{
            box-shadow: 1px 5px 7px 1px rgba(0,0,0,0.4);
        }
        .bottom{
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            font-size: small;
            color: #fff;
            margin-top: 10px;
        }
        .left{
            display: flex;

        }
        label a{
            color: #fff;
            text-decoration: none;
        }
        .return-home-btn {
            position: relative;
            top: 36px;
            right: -12px;
            padding: 12px 10px 12px 25px;

            background-color: #f44336;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            margin-right: 50px;
        }
        .return-home-btn i {
            position: absolute;
            right: 0;
            top:12px;
            left: 3px;
        }
        .return-home-btn:hover {
            background-color: #d32f2f;
        }
        .text-alert{
            display: flex;
            justify-content: center;
            align-items: center;
            color : red;
        }
        ::placeholder {
            color: #000;
        }
        .msg{
            color: red;
            display: inline-block;
            justify-content: right;
            margin: 0 15px 0 281px;
        }
    </style>
    <body> 
        <a href="home" class="return-home-btn">Return Home
            <i class="fa-solid fa-house"></i>
        </a>
        <div class="box">
            <div class="container">  

                <form action="signup"  method="post" ">
                    <div class="top-header">
                        <span>Don't Have an account?</span>
                        <form action="login"  method="post">
                            <header>Sign Up</header>
                            <p class="text-alert">${errorMessage}</p> 
                            <p class="text-alert">${mess}</p> 
                            <p class="text-alert">${phoneError}</p>
                            <p class="text-alert">${emailError}</p>
                    </div>
                    <div class="input-field" >
                        <input type="text" class="input" id="name" name="name" placeholder="Full Name" required value="<%= request.getParameter("name") != null ? request.getParameter("name") : "" %>">
                        <i class="fa-solid fa-signature"></i>
                    </div>
                    <div class="input-field">
                        <input type="text" class="input" id="user" name="user" placeholder="User Name" required value="<%= request.getParameter("user") != null ? request.getParameter("user") : "" %>">
                        <i class="fa-solid fa-user"></i>
                    </div>
                    <span class="msg" id="password-strength"></span> 
                    <div class="input-field">
                        <input type="password" class="input" id="password" onkeyup="showHidePasswordStrength()" name="password" placeholder="Password" required>
                        <i class="fa-solid fa-lock"></i>
                    </div>

                    <div class="input-field">
                        <input type="password" class="input" id="repeat-password" onkeyup="checkRepeatPass()" name="repeat" placeholder="Repeat" required>
                        <i class="fa-solid fa-lock"></i>
                    </div>
                    <div class="input-field ">
                        <input type="tel" class="input" id="phone" name="phone" placeholder="Phone Number" required value="<%= request.getParameter("phone") != null ? request.getParameter("phone") : "" %>">
                        <i class="fa-solid fa-phone"></i>
                    </div>
                    <div class="input-field">
                        <input type="email" class="input" id="email" name="email" placeholder="Email" required value="<%= request.getParameter("email") != null ? request.getParameter("email") : "" %>">
                        <i class="fa-solid fa-envelope"></i>
                    </div>
                    <div class="input-field">
                        <input type="submit" class="submit" name="submit" value="Submit">
                    </div>
                </form>

            </div>
        </div>
    </body> 
    <script>
        function checkRepeatPass() {
            password = document.getElementById("password").value;
            repeat - password = document.getElementById("repeat-password").value;
                    if (password != repeat - password) {
                document.getElementById("msg").innerHTML = "Password not match";
                return false;
            } else {
                document.getElementById("msg").innerHTML = "";
                return  true;
            }

        }
    </script>
    <script>
        function validateForm() {
            let phone = document.getElementById("phone").value;
            let email = document.getElementById("email").value;
            let phoneRegex = /^[0-9]{10}$/;
            let emailRegex = /^[a-zA-Z][a-zA-Z0-9\\-_]+@[a-zA-Z]+(\\.[a-zA-Z]+){1,3}$/;

            let phoneValid = phoneRegex.test(phone);
            let emailValid = emailRegex.test(email);

            if (!phoneValid) {
                document.getElementById("phoneError").textContent = "Invalid phone number";
            } else {
                document.getElementById("phoneError").textContent = "";
            }

            if (!emailValid) {
                document.getElementById("emailError").textContent = "Email address is not valid";
            } else {
                document.getElementById("emailError").textContent = "";
            }

            return phoneValid && emailValid;
        }
        window.addEventListener('DOMContentLoaded', (event) => {
            hideErrorMessage();

            function hideErrorMessage() {
                var mess = document.querySelector('.text-alert');
                if (mess && mess.textContent === '') {
                    mess.style.display = 'none';
                }
            }
        });
        window.addEventListener('DOMContentLoaded', (event) => { 
            hidePasswordStrength();

            function hidePasswordStrength() {
                var passwordStrength = document.getElementById('password-strength');
                if (passwordStrength.textContent === '') {
                    passwordStrength.style.display = 'none';
                }
            }
        });
    </script>
    <script>
        function checkPasswordStrength() {
            var password = document.getElementById("password").value;
            var strengthIndicator = document.getElementById("password-strength");

            if (password.length >= 8 && /[A-Z]/.test(password)) {
                strengthIndicator.innerHTML = "Strong";
                strengthIndicator.style.color = "green";
            } else if (password.length >= 8 || /[A-Z]/.test(password)) {
                strengthIndicator.innerHTML = "Medium";
                strengthIndicator.style.color = "orange";
            } else {
                strengthIndicator.innerHTML = "Weak";
                strengthIndicator.style.color = "red";
            }
        }
    </script>
    <script>
        function showHidePasswordStrength() {
            var password = document.getElementById("password").value;
            var strengthIndicator = document.getElementById("password-strength");

            if (password.length >= 1) {
                strengthIndicator.style.display = "block";
            } else {
                strengthIndicator.style.display = "none";
            }

            checkPasswordStrength();
        }
    </script>

</html>