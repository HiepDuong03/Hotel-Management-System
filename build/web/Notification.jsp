<%-- 
    Document   : Notification
    Created on : May 24, 2023, 7:38:06 PM
    Author     : quocb
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>Notification</title>
    <style>
        /* CSS cho phần giao diện */
        body {
            font-family: Arial, sans-serif;
            background-color: #f1f1f1;
            padding: 20px;
        }

        .notification {
            background-color: #ffffff;
            border: 1px solid #dddddd;
            border-radius: 4px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-bottom: 20px;
        }

        .notification-title {
            font-size: 20px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .notification-message {
            font-size: 16px;
            line-height: 1.5;
            color: #555555;
        }

        .notification-info {
            background-color: #e7f3fe;
            border-color: #b0d8fe;
        }

        .notification-success {
            background-color: #e7fde7;
            border-color: #b2e8b2;
        }

        .notification-warning {
            background-color: #fef6e7;
            border-color: #fcd56d;
        }

        .notification-error {
            background-color: #ffe7e7;
            border-color: #feafaf;
        }
        .center{
            display: flex;
            align-items: center;
            justify-content: center;
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
</head>
<body>
    <a href="home" class="return-home-btn">Return Home</a>
    <h1 class="center">Notification</h1>

    <div class="notification notification-info">
        <div class="notification-title ">Information</div>
        <div class="notification-message">This is an informational message.</div>
    </div>

    <div class="notification notification-success">
        <div class="notification-title">Success</div>
        <div class="notification-message">This is a success message.</div>
    </div>

    <div class="notification notification-warning">
        <div class="notification-title">Warning</div>
        <div class="notification-message">This is a warning message.</div>
    </div>

    <div class="notification notification-error">
        <div class="notification-title">Error</div>
        <div class="notification-message">This is an error message.</div>
    </div>
</body>
</html>