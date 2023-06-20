<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Update Information</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f7f7f7;
                padding: 15px;
                background-image: url(https://cdn.pixabay.com/photo/2015/07/05/13/44/beach-832346_1280.jpg);
                background-size: cover;
                background-repeat: no-repeat;
                background-position:  center;
                background-attachment: fixed;
                opacity: 0.8;
                width: 100%;
                display: flex;
                align-items: center;
                justify-content: center;
                height: 30vh;
                overflow: hidden;

            }

            .container {
                width: 500px;
                height: 300px;
                margin: auto;
            }
            .glass{
                background: linear-gradient(135deg, rgba(255,255,255,0.1), rgba(255,255,255,0));
                backdrop-filter:blur(10px);
                -webkit-backdrop-filter:blur(10px);
                border-radius: 20px;
                border: 1px solid  rgba(255,255,255,0.18);
                box-shadow: 0 8px 0 rgba(0,0,0,0.37);
            }
            h1 {
                margin-top: 4rem;
                color: #000;
                margin-bottom: 10px;
                display: flex;
                align-items: center;
                justify-content: center;
            }


            form {
                max-width: 450px;
                margin: auto;
                padding: 40px;

                background: linear-gradient(135deg, rgba(255,255,255,0.1), rgba(255,255,255,0));
                backdrop-filter:blur(10px);
                -webkit-backdrop-filter:blur(10px);
                border-radius: 20px;
                border: 1px solid  rgba(255,255,255,0.18);
                box-shadow: 0 8px 0 rgba(0,0,0,0.37);
            }

            label {
                display: block;
                margin-bottom: 20px;
                font-weight: bold;
                color: #555;
            }

            input[type="text"],
            input[type="password"],
            input[type="email"] {
                width: 100%;
                padding: 10px;
                border: none;
                border-bottom: 2px solid #ddd;
                font-size: 16px;
                margin-bottom: 20px;
                transition: border-bottom-color 0.3s ease;
                background: linear-gradient(135deg, rgba(255,255,255,0.1), rgba(255,255,255,0));
            }

            input[type="text"]:focus,
            input[type="password"]:focus,
            input[type="email"]:focus {
                border-bottom-color: #ff8c00;
                outline: none;
            }

            input[type="submit"] {
                background-color: #ff8c00;
                color: #fff;
                padding: 12px 20px;
                border: none;
                border-radius: 25px;
                font-size: 16px;
                cursor: pointer;
                text-align: right;
                display: flex;
                justify-content: flex-end;
                margin: auto;
            }

            input[type="submit"]:hover {
                background-color: #ff6f00;
            }

            .error {
                color: red;
                margin-bottom: 10px;
            }
            .container{

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

        </style>
        <script>
            function enableEdit() {
                var inputs = document.getElementsByClassName('form-input');
                for (var i = 0; i < inputs.length; i++) {
                    inputs[i].removeAttribute('readonly');
                }
            }
        </script>
    </head>
    <body>
        <div class="container"> 
            <a href="home" class="return-home-btn">Return Home</a>
            <h1>Update User Information</h1>
            <p class="text-alert" style="color: red; display: flex; align-items: center; justify-content: center;    font-size: 20px;
               font-weight: bold;">
                ${requestScope.stt}
            </p>
            <form action="updateuser" method="POST">
                <input type="hidden" name="id" value="${sessionScope.acc.userId}">
                
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" value="${sessionScope.acc.username}" readonly="true"><br>
                
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" value="${sessionScope.acc.name}"><br>

                <label for="phone">Phone:</label>
                <input type="text" id="phone" name="phone" value="${sessionScope.acc.sdt}"><br>

                <label for="email">Identify Card:</label>
                <input type="text" id="cmnd" name="cmnd" value="${sessionScope.acc.cmnd}" ${sessionScope.acc.cmnd != null ? 'readonly="true"':''}><br>
                
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" value="${sessionScope.acc.email}" readonly="true"><br>

                <input type="submit" value="Update">
            </form>
        </div>
    </body>
</html>