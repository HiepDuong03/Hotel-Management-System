<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

        <title>Change Pass</title>
    </head>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
            padding: 15px;
            background-image: url(https://cdn.pixabay.com/photo/2022/07/26/02/06/tea-plantation-7344887_1280.jpg);
            background-size: cover;
            background-repeat: no-repeat;
            background-position:  center;
            background-attachment: fixed;
            opacity: 0.8;
            width: 100%;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            align-items: center;
            justify-content: center;
            height: 80vh;
            overflow: hidden;
        }
        .container {
            width: 500px;
            height: 300px;
            margin: auto;
        }

        main {
            text-align: center;
        }

        h1 {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        form {
            max-width: 450px;
            margin: auto;
            padding: 40px;
            background: linear-gradient(135deg, rgba(255,255,255,0.1), rgba(255,255,255,0));
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(10px);
            border-radius: 20px;
            border: 1px solid rgba(255,255,255,0.18);
            box-shadow: 0 8px 0 rgba(0,0,0,0.37);
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .form-control {
            width: 300px;
            height: 42px;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            margin-bottom: 20px;
            background: linear-gradient(135deg, rgba(255,255,255,0.9), rgba(255,255,255,0.4));
        }

        button {
            margin-top: 15px;
            width: 150px;
        }
        .layer:hover {
            background-color:  #dc3545;
            cursor: pointer;
        }
        .return-home-btn {
            position: fixed;
            top: 20px;
            right: 20px;
            padding: 10px 20px;
            background-color: #f44336;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }

        .return-home-btn:hover {
            background-color: #d32f2f;
        }
        .box{
            position: relative;
            width:350px;
            display: flex;
            justify-content: center;

        }
        input{
            width: 100%;
            height: 100%;
            padding: 10px;
            font-size: 25px;
            border-radius: 10px;
            border: 1px solid red;
            outline: none;
        }
        label {
            position: absolute;
            font-size: 18px;
            color: #000;
            use-select: text;
            top: 15%;
            left: 28px;
            transition: all .1s linear;
        }
        input:focus ~ label, input:not(:placeholder-shown)~label{
            top: -16px;
            font-size: 18px;
            color: red; 
            padding: 2px 3px;
        }

    </style>   
    <body>  
        <!-- END nav -->
        <main>
            <div class="container">
                <a href="home" class="return-home-btn">Return Home</a>
                <h1>Change Password</h1>
                <span>
                    <h3>${requestScope.ms}</h3>
                </span>
                <form action="changepass" method="get">
                    <input type="hidden" class="form-control" name="user" value="${sessionScope.acc.username}">
                    <input type="hidden" class="form-control" name="user" value="${sessionScope.acc.password}">
                    <div class="box"> 
                        <input  type="password" class="form-control" id="opass" name="opass"   placeholder=" " > 
                        <label  class="label" style=" font-size: 16px;" for="enter-text">Current Password</label>
                    </div>
                    <div class="box"> 
                        <input type="password" class="form-control" id="pass" name="pass" placeholder=" "> 
                        <label class="label" style=" font-size: 16px;" for="enter-text">New password</label>
                    </div>
                    <div class="box"> 
                        <input type="password" class="form-control" id="repass" name="repass" placeholder=" "> 
                        <label class="label" style=" font-size: 16px;" for="enter-text">Repeat new password</label>
                    </div>
                    <button type="submit" class="btn btn-primary layer">Submit</button>
                </form>
            </div>
        </main>    
    </body>

</html>
