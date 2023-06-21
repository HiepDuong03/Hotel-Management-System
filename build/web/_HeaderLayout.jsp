<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Deluxe - Free Bootstrap 4 Template by Colorlib</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i" rel="stylesheet">
        <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
        <link rel="stylesheet" href="css/animate.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">
        <link rel="stylesheet" href="css/aos.css">
        <link rel="stylesheet" href="css/ionicons.min.css">
        <link rel="stylesheet" href="css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="css/jquery.timepicker.css">
        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/styles.css">
    </head>
    <style>
        .search-container {
            display: flex;
            align-items: center;
        }

        .search-box {
            width: 0;
            overflow: hidden;
            transition: width 0.3s ease-in-out;
        }

        .search-box.show {
            width: 200px;
        }

        #search-input {
            padding: 8px;
            border: none;
            border-radius: 4px;
            outline: none;
            width: 100%;
            box-sizing: border-box;
        }

        #search-toggle,
        #search-button {
            background-color: transparent;
            border: none;
            cursor: pointer;
        }

        #search-toggle {
            margin-right: 8px;
        }

        #search-button {
            display: none;
        }

        @media (max-width: 768px) {
            .search-container {
                flex-direction: column;
                align-items: flex-end;
            }

            #search-toggle {
                margin-bottom: 8px;
            }

            #search-input {
                width: auto;
            }

            #search-button {
                display: inline-block;
            }
        }
        .header-cart{
            width: 150px;
            text-align: center;
        }
        .header-cart-wrap{
            position: relative;
            padding: 0 8px;
            display: inline-block;

        }
        .header-cart-wrap:hover .header-cart-list{
            display: block;
            cursor: pointer;
        }
        .header-cart-list::after{
            content: '';
            position: absolute;
            right: 8px;
            top: -33px;
            border-width: 20px ;
            border-style: solid;
            border-color: transparent transparent #fff transparent;
        }
        .header-cart-icon{
            font-size: 20px;
            color: red;
            margin-top: 6px;
        }
        .header-cart-list{
            position: absolute;
            top: 100%;
            right: 4px;
            background-color:#FFF;
            width: 400px;
            border-radius: 2px ;
            box-shadow: 0 1px 3.123rem 0 rgba(0,0,0,0.2);
            display: none;
            transition: 0.3s;
        }
        .header-cart-list--no-cart-img {
            width: 40%;
        }
        .header-cart-list--no-cart{
            padding: 28px 0;
            margin-top: 7px;
        }
        .header-cart-list--no-cart-msg{
            display: block;
            font-size: 15px;
            margin-top: 12px;
        }
        .nav-link {
            position: relative;
            transition: all 0.4s ease;
        }

        .nav-link::before,
        .nav-link::after {
            content: '';
            position: absolute;
            width: 0;
            height: 2px;
            background-color: #fff;
            transition: all 0.4s ease;
        }

        .nav-link::before {
            top: 0;
            right: 100%;
        }

        .nav-link::after {
            bottom: 0;
            left: 100%;
        }

        .nav-link:hover::before {
            width: 100%;
            right: 0;
        }

        .nav-link:hover::after {
            width: 100%;
            left: 0;
        }

    </style>
    <body>

        <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
            <div class="container">
                <a class="navbar-brand" href="about">Deluxe</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="oi oi-menu"></span> Menu
                </button> 
                <c:set var="userRole" value="${sessionScope.acc.role}" />
                <div class="collapse navbar-collapse" id="ftco-nav">
                    <ul class="navbar-nav ml-auto">  
                        <li class="nav-item active"><a href="home" class="nav-link">Home</a></li>
                        <li class="nav-item"><a href="search" class="nav-link">Rooms</a></li>
                        <li class="nav-item"><a href="Restaurant.jsp" class="nav-link">Restaurant</a></li>
                        <li class="nav-item"><a href="about" class="nav-link">About</a></li> 
                            <c:if  test="${userRole == 2}">
                            <li class="nav-item"><a href="Contact.jsp" class="nav-link">Contact</a></li>
                            </c:if>
                        <div class="search-container">
                            <button type="button" id="search-toggle"><i class="fa-solid fa-search"></i></button>
                            <div class="search-box">
                                <input type="text" id="search-input" placeholder="Tìm kiếm...">
                                <button type="button" id="search-button"><i class="fa-solid fa-search"></i></button>
                            </div>
                        </div>
                        <c:if test="${sessionScope.acc==null}">
                            <li class="nav-item"><a href="SignIn.jsp" class="nav-link">Log In</a></li>
                            <li class="nav-item"><a href="Signup.jsp" class="nav-link">Sign Up</a></li>
                            </c:if>
                            <c:if test="${sessionScope.acc != null}"> 
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0 bg-infor ">
                                <li class="nav-item dropdown dropstart"> 
                                    <a class="nav-link dropdown-toggle" href="#" role="button" ata-bs-toggle="dropdown" aria-expanded="false"><i class="fa-solid fa-user"></i></a>
                                <!--<input type="hidden" class="form-control" name="user" value="${sessionScope.acc.name}">-->
                                    <ul class="dropdown-menu"> 
                                        <li><a
                                                class="nav-link dropdown-toggle" href="#" role="button" ata-bs-toggle="dropdown" aria-expanded="false"><span style="color: red;display: flex;justify-content: center"> Welcome ${sessionScope.acc.name}</span></a></li>
                                        <li><a class="dropdown-item" href="Notification.jsp">Notification</a></li>
                                        <li><a class="dropdown-item" href="ChangeInformation.jsp">Change information</a></li>
                                        <li><a class="dropdown-item" href="ChangePass.jsp">Change password</a></li>
                                        <li><a class="dropdown-item" href="myroom?uid=${sessionScope.acc.userId}">My room</a></li>
                                        <li><hr class="dropdown-divider"></li>
                                        <li><a class="dropdown-item" href="logout">Logout</a></li> 
                                    </ul>
                                </li>
                            </ul>
                        </c:if> 
                    </ul>

                </div>

                <div class="header-cart"> 
                </div>

            </div>
        </nav>
    </body>
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery-migrate-3.0.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/jquery.stellar.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/aos.js"></script>
    <script src="js/jquery.animateNumber.min.js"></script>
    <script src="js/bootstrap-datepicker.js"></script>
    <script src="js/jquery.timepicker.min.js"></script>
    <script src="js/scrollax.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
    <script src="js/google-map.js"></script>
    <script src="js/main.js"></script>
    <script>
        const searchToggle = document.getElementById('search-toggle');
        const searchBox = document.querySelector('.search-box');

        searchToggle.addEventListener('click', function () {
            searchBox.classList.toggle('show');
        });
    </script>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var cartIcon = document.querySelector('.cart-icon');
            var cartContent = document.querySelector('.cart-content');

            cartIcon.addEventListener('click', function () {
                cartContent.style.display = cartContent.style.display === 'block' ? 'none' : 'block';
            });
        });
    </script>
</html>
