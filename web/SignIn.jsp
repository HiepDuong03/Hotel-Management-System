<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <script src="https://accounts.google.com/gsi/client" async defer></script>
        <title>Login</title>
    </head>
    <style>
        *{
            font-family: 'Poppins',sans-serif;
        }
        body{
            background-image: url(Asset/images/ocean-7961695_1920.jpg);
            
            background-size: cover;
            background-repeat: no-repeat;
            background-position: top right;
            background-attachment: fixed;
            opacity: 0.9;
        }
        .box{
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 90vh;

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
            background: rgba(255,255,255,0.3);
        }
        .input-field{
            display: flex;
            flex-direction: column;
        }
        i{

            position: relative;
            top:-31px;
            left: 17px;
            color: #fff;
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
            box-shadow: 1px 5px 7px 1px rgba(0,0,0,0.2);
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
        .google-btn i {
            color: red;
            display: inline-block;
            position: absolute;
        }


        .google-btn:hover {
            background-color: #d33333;
        }

        .google-btn img {
            vertical-align: middle;
            margin-right: 10px;
        }
        .google-btn {
            background-color: #d33333;
            color: white;
            border-radius: 4px;
            border: none;
            text-align: center;
            font-size: 16px;
            padding: 10px 24px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            display:block; 
            margin: auto;
            text-decoration: none;
            width: max-content; 
            margin-top: 10px; 
        }

        .google-btn a {
            display: inline-block;
            vertical-align: middle;  
        }
        .google-btn:hover {
            background-color: #ccc;
        }

        .google-btn img {
            vertical-align: middle;
            margin-right: 10px;
        }
    </style>    
    <body>

        <a href="home" class="return-home-btn">Return Home
            <i class="fa-solid fa-house"></i>
        </a>
        <div class="box">
            <div class="container">
                <c:set var="cookie" value="${pageContext.request.cookies}"/>
                <form action="signin"  method="post" ">


                    <div class="top-header">
                        <span>Have an account?</span>
                        <header>Login</header> 
                        <a href="https://accounts.google.com/o/oauth2/auth?scope=profile&redirect_uri=http://localhost:9999/ManageHotel/LoginGoogleHandler&response_type=code
                           &client_id=327965219167-5p92iq0g0nqkq1m80obvm2eh6rghag2m.apps.googleusercontent.com&approval_prompt=force" class="google-btn">
                            Login With Google
                        </a>
                        <p class="text-alert">${mess}</p> 
                    </div>   
                    <div class="input-field">
                        <input type="text" class="input"  name="user" value="${cookie.cuser.value}" placeholder="Username" required>
                        <i class="fa-solid fa-user"></i>
                    </div>   
                    <div class="input-field">
                        <input type="password" class="input" value="${cookie.cpass.value}" name="pass" placeholder="Password" required>
                        <i class="fa-solid fa-lock"></i>
                    </div> 
                    <div class="input-field">
                        <input type="submit" class="submit" name="submit" value="Login">
                    </div>
                    <div class="bottom">
                        <div class="left">
                            <input type="checkbox"  id="check" ${(cookie.crem!=null?'checked':'')}name="rem" value="ON">
                            <label for="check">Remember Me</label>
                        </div>
                        <div class="right"> 
                            <label><a href="ResetPassWord.jsp">Forgot password</a></label>
                        </div>
                    </div>
                </form>

            </div>   
        </div>    
    </body>
</html>
