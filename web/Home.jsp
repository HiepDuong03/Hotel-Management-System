<%-- 
    Document   : Home
    Created on : May 14, 2023, 12:47:11 PM
    Author     : Admin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Deluxe - Free Bootstrap 4 Template by Colorlib</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i" rel="stylesheet">

        <link rel="stylesheet" href="Asset/css/open-iconic-bootstrap.min.css">
        <link rel="stylesheet" href="Asset/css/animate.css">

        <link rel="stylesheet" href="Asset/css/owl.carousel.min.css">
        <link rel="stylesheet" href="Asset/css/owl.theme.default.min.css">
        <link rel="stylesheet" href="Asset/css/magnific-popup.css">

        <link rel="stylesheet" href="Asset/css/aos.css">

        <link rel="stylesheet" href="Asset/css/ionicons.min.css">

        <link rel="stylesheet" href="Asset/css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="Asset/css/jquery.timepicker.css">


        <link rel="stylesheet" href="Asset/css/flaticon.css">
        <link rel="stylesheet" href="Asset/css/icomoon.css">
        <link rel="stylesheet" href="Asset/css/style.css">
    </head>
    <body>

        <jsp:include page="_HeaderLayout.jsp"></jsp:include>

            <section class="home-slider owl-carousel">
                <div class="slider-item" style="background-image:url(Asset/images/bg_1.jpg);">
                    <div class="overlay"></div>
                    <div class="container">
                        <div class="row no-gutters slider-text align-items-center justify-content-center">
                            <div class="col-md-12 ftco-animate text-center">
                                <div class="text mb-5 pb-3">
                                    <h1 class="mb-3">Welcome To Deluxe</h1>
                                    <h2>Hotels &amp; Resorts</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="slider-item" style="background-image:url(Asset/images/bg_2.jpg);">
                    <div class="overlay"></div>
                    <div class="container">
                        <div class="row no-gutters slider-text align-items-center justify-content-center">
                            <div class="col-md-12 ftco-animate text-center">
                                <div class="text mb-5 pb-3">
                                    <h1 class="mb-3">Enjoy A Luxury Experience</h1>
                                    <h2>Join With Us</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="ftco-booking">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <%
                            String cate = request.getParameter("cate"); 
                            String adult = request.getParameter("adult");
                            String children = request.getParameter("children");
                            %>
                            <form action="search" method="post" class="booking-form">
                                <div class="row">
                                    <div class="col-md-3 d-flex">
                                        <div class="form-group p-4 align-self-stretch d-flex align-items-end">
                                            <div class="wrap">
                                                <label for="#">Check-in Date
                                                    <i class="fa-solid fa-calendar-days"></i>
                                                </label>
                                                <input type="text" name="indate" class="form-control checkin_date" placeholder="Check-in date">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3 d-flex">
                                        <div class="form-group p-4 align-self-stretch d-flex align-items-end">
                                            <div class="wrap">
                                                <label for="#">Check-out Date
                                                    <i class="fa-solid fa-calendar-days"></i>
                                                </label>
                                                <input type="text" name="outdate" class="form-control checkout_date" placeholder="Check-out date">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md d-flex">
                                        <div class="form-group p-4 align-self-stretch d-flex align-items-end">
                                            <div class="wrap">
                                                <label for="#">Room</label>
                                                <div class="form-field">
                                                    <div class="select-wrap">
                                                        <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                                        <select name="cate" id="" class="form-control">
                                                            <option value="0"<%= (cate == null || cate.equals("0")) ? "selected" : ""%>>Room Type</option>
                                                        <option value="6"<%= (cate != null && cate.equals("6")) ? "selected" : "" %>>Suite</option>
                                                        <option value="1"<%= (cate != null && cate.equals("1")) ? "selected" : ""%>>Family Room</option>
                                                        <option value="2"<%= (cate != null && cate.equals("2")) ? "selected" : "" %>>Deluxe Room</option>
                                                        <option value="3"<%= (cate != null && cate.equals("3")) ? "selected" : "" %>>Classic Room</option>
                                                        <option value="4"<%= (cate != null && cate.equals("4")) ? "selected" : "" %>>Superior Room</option>
                                                        <option value="5"<%= (cate != null && cate.equals("5")) ? "selected" : "" %>>Luxury Room</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md d-flex">
                                    <div class="form-group p-4 align-self-stretch d-flex align-items-end">
                                        <div class="wrap">
                                            <label for="#">Customer</label>
                                            <div class="form-field">
                                                <div class="select-wrap">
                                                    <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                                    <select name="adult" id="" class="form-control">
                                                        <option value="0"<%= (adult == null || adult.equals("0")) ? "selected" : ""%>>0 Adult</option>
                                                        <option value="1"<%= (adult != null && adult.equals("1")) ? "selected" : ""%>>1 Adult</option>
                                                        <option value="2"<%= (adult != null && adult.equals("2")) ? "selected" : ""%>>2 Adult</option>
                                                        <option value="3"<%= (adult != null && adult.equals("3")) ? "selected" : ""%>>3 Adult</option>
                                                        <option value="4"<%= (adult != null && adult.equals("4")) ? "selected" : ""%>>4 Adult</option>
                                                        <option value="5"<%= (adult != null && adult.equals("5")) ? "selected" : ""%>>5 Adult</option>
                                                        <option value="6"<%= (adult != null && adult.equals("6")) ? "selected" : ""%>>6 Adult</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md d-flex">
                                    <div class="form-group d-flex align-self-stretch">
                                        <input type="submit" value="Check Availability" class="btn btn-primary py-3 px-4 align-self-stretch">
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>


        <section class="ftco-section ftc-no-pb ftc-no-pt">
            <div class="container">
                <div class="row">
                    <div class="col-md-5 p-md-5 img img-2 d-flex justify-content-center align-items-center" style="background-image: url(Asset/images/bg_2.jpg);">
                        <a href="https://vimeo.com/45830194" class="icon popup-vimeo d-flex justify-content-center align-items-center">
                            <span class="icon-play"></span>
                        </a>
                    </div>
                    <div class="col-md-7 py-5 wrap-about pb-md-5 ftco-animate">
                        <div class="heading-section heading-section-wo-line pt-md-5 pl-md-5 mb-5">
                            <div class="ml-md-0">
                                <span class="subheading">Welcome to Deluxe Hotel</span>
                                <h2 class="mb-4">Welcome To Our Hotel</h2>
                            </div>
                        </div>
                        <div class="pb-md-5">
                            <p>On her way she met a copy. The copy warned the Little Blind Text, that where it came from it would have been rewritten a thousand times and everything that was left from its origin would be the word "and" and the Little Blind Text should turn around and return to its own, safe country. But nothing the copy said could convince her and so it didn’t take long until a few insidious Copy Writers ambushed her, made her drunk with Longe and Parole and dragged her into their agency, where they abused her for their.</p>
                            <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>
                            <ul class="ftco-social d-flex">
                                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                                <li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>
                                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section">
            <div class="container">
                <div class="row d-flex">
                    <div class="col-md-3 d-flex align-self-stretch ftco-animate">
                        <div class="media block-6 services py-4 d-block text-center">
                            <div class="d-flex justify-content-center">
                                <div class="icon d-flex align-items-center justify-content-center">
                                    <span class="flaticon-reception-bell"></span>
                                </div>
                            </div>
                            <div class="media-body p-2 mt-2">
                                <h3 class="heading mb-3">25/7 Front Desk</h3>
                                <p>A small river named Duden flows by their place and supplies.</p>
                            </div>
                        </div>      
                    </div>
                    <div class="col-md-3 d-flex align-self-stretch ftco-animate">
                        <div class="media block-6 services py-4 d-block text-center">
                            <div class="d-flex justify-content-center">
                                <div class="icon d-flex align-items-center justify-content-center">
                                    <span class="flaticon-serving-dish"></span>
                                </div>
                            </div>
                            <div class="media-body p-2 mt-2">
                                <h3 class="heading mb-3">Restaurant Bar</h3>
                                <p>A small river named Duden flows by their place and supplies.</p>
                            </div>
                        </div>    
                    </div>
                    <div class="col-md-3 d-flex align-sel Searchf-stretch ftco-animate">
                        <div class="media block-6 services py-4 d-block text-center">
                            <div class="d-flex justify-content-center">
                                <div class="icon d-flex align-items-center justify-content-center">
                                    <span class="flaticon-car"></span>
                                </div>
                            </div>
                            <div class="media-body p-2 mt-2">
                                <h3 class="heading mb-3">Transfer Services</h3>
                                <p>A small river named Duden flows by their place and supplies.</p>
                            </div>
                        </div>      
                    </div>
                    <div class="col-md-3 d-flex align-self-stretch ftco-animate">
                        <div class="media block-6 services py-4 d-block text-center">
                            <div class="d-flex justify-content-center">
                                <div class="icon d-flex align-items-center justify-content-center">
                                    <span class="flaticon-spa"></span>
                                </div>
                            </div>
                            <div class="media-body p-2 mt-2">
                                <h3 class="heading mb-3">Spa Suites</h3>
                                <p>A small river named Duden flows by their place and supplies.</p>
                            </div>
                        </div>      
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section bg-light">
            <div class="container">
                <div class="row justify-content-center mb-5 pb-3">
                    <div class="col-md-7 heading-section text-center ftco-animate">
                        <h2 class="mb-4">Our Rooms</h2>
                    </div>
                </div>    		
                <div class="row">
                    <c:forEach items="${list}" var="r">
                        <div class="col-sm col-md-6 col-lg-4 ftco-animate">
                        <div class="room">
                            <a href="detail?rid=${r.roomId}&status=${r.status}" class="img d-flex justify-content-center align-items-center" style="background-image: url(${r.roomImg});">
                                <div class="icon d-flex justify-content-center align-items-center">
                                    <span class="icon-search2"></span>
                                </div>
                            </a>
                            <div class="text p-3 text-center">
                                <h3 class="mb-3"><a href="detail?rid=${r.roomId}&status=${r.status}">${r.roomName}</a></h3>
                                <p><span class="price mr-2">$${r.roomPrice}</span> <span class="per">per night</span></p>
                                <hr>
                                <p class="pt-1"><a href="detail?rid=${r.roomId}&status=${r.status}" class="btn-custom">View Room Details<i class="fa-solid fa-right-to-bracket"></i></a></p>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                </div>
            </div>
        </section>

        <section class="ftco-section ftco-counter img" id="section-counter" style="background-image: url(Asset/images/bg_1.jpg);">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-10">
                        <div class="row">
                            <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
                                <div class="block-18 text-center">
                                    <div class="text">
                                        <strong class="number" data-number="${guest}">0</strong>
                                        <span>Happy Guests</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
                                <div class="block-18 text-center">
                                    <div class="text">
                                        <strong class="number" data-number="${room}">0</strong>
                                        <span>Rooms</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
                                <div class="block-18 text-center">
                                    <div class="text">
                                        <strong class="number" data-number="40">0</strong>
                                        <span>Staffs</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
                                <div class="block-18 text-center">
                                    <div class="text">
                                        <strong class="number" data-number="${view}">0</strong>
                                        <span>View</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <section class="ftco-section testimony-section bg-light">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-8 ftco-animate">
                        <div class="row ftco-animate">
                            <div class="col-md-12">
                                <div class="carousel-testimony owl-carousel ftco-owl">
                                    <div class="item">
                                        <div class="testimony-wrap py-4 pb-5">
                                            <div class="user-img mb-4" style="background-image: url(Asset/images/person_1.jpg)">
                                                <span class="quote d-flex align-items-center justify-content-center">
                                                    <i class="icon-quote-left"></i>
                                                </span>
                                            </div>
                                            <div class="text text-center">
                                                <p class="mb-4">A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
                                                <p class="name">Nathan Smith</p>
                                                <span class="position">Guests</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="testimony-wrap py-4 pb-5">
                                            <div class="user-img mb-4" style="background-image: url(Asset/images/person_2.jpg)">
                                                <span class="quote d-flex align-items-center justify-content-center">
                                                    <i class="icon-quote-left"></i>
                                                </span>
                                            </div>
                                            <div class="text text-center">
                                                <p class="mb-4">A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
                                                <p class="name">Nathan Smith</p>
                                                <span class="position">Guests</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="testimony-wrap py-4 pb-5">
                                            <div class="user-img mb-4" style="background-image: url(Asset/images/person_3.jpg)">
                                                <span class="quote d-flex align-items-center justify-content-center">
                                                    <i class="icon-quote-left"></i>
                                                </span>
                                            </div>
                                            <div class="text text-center">
                                                <p class="mb-4">A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
                                                <p class="name">Nathan Smith</p>
                                                <span class="position">Guests</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="testimony-wrap py-4 pb-5">
                                            <div class="user-img mb-4" style="background-image: url(Asset/images/person_1.jpg)">
                                                <span class="quote d-flex align-items-center justify-content-center">
                                                    <i class="icon-quote-left"></i>
                                                </span>
                                            </div>
                                            <div class="text text-center">
                                                <p class="mb-4">A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
                                                <p class="name">Nathan Smith</p>
                                                <span class="position">Guests</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="testimony-wrap py-4 pb-5">
                                            <div class="user-img mb-4" style="background-image: url(Asset/images/person_1.jpg)">
                                                <span class="quote d-flex align-items-center justify-content-center">
                                                    <i class="icon-quote-left"></i>
                                                </span>
                                            </div>
                                            <div class="text text-center">
                                                <p class="mb-4">A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
                                                <p class="name">Nathan Smith</p>
                                                <span class="position">Guests</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <section class="ftco-section">
            <div class="container">
                <div class="row justify-content-center mb-5 pb-3">
                    <div class="col-md-7 heading-section text-center ftco-animate">
                        <h2>Recent Blog</h2>
                    </div>
                </div>
                <div class="row d-flex">
                    <div class="col-md-3 d-flex ftco-animate">
                        <div class="blog-entry align-self-stretch">
                            <a href="blog-single.html" class="block-20" style="background-image: url('Asset/images/image_1.jpg');">
                            </a>
                            <div class="text mt-3 d-block">
                                <h3 class="heading mt-3"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                                <div class="meta mb-3">
                                    <div><a href="#">Dec 6, 2018</a></div>
                                    <div><a href="#">Admin</a></div>
                                    <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 d-flex ftco-animate">
                        <div class="blog-entry align-self-stretch">
                            <a href="blog-single.html" class="block-20" style="background-image: url('Asset/images/image_2.jpg');">
                            </a>
                            <div class="text mt-3">
                                <h3 class="heading mt-3"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                                <div class="meta mb-3">
                                    <div><a href="#">Dec 6, 2018</a></div>
                                    <div><a href="#">Admin</a></div>
                                    <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 d-flex ftco-animate">
                        <div class="blog-entry align-self-stretch">
                            <a href="blog-single.html" class="block-20" style="background-image: url('Asset/images/image_3.jpg');">
                            </a>
                            <div class="text mt-3">
                                <h3 class="heading mt-3"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                                <div class="meta mb-3">
                                    <div><a href="#">Dec 6, 2018</a></div>
                                    <div><a href="#">Admin</a></div>
                                    <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 d-flex ftco-animate">
                        <div class="blog-entry align-self-stretch">
                            <a href="blog-single.html" class="block-20" style="background-image: url('Asset/images/image_4.jpg');">
                            </a>
                            <div class="text mt-3">
                                <h3 class="heading mt-3"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                                <div class="meta mb-3">
                                    <div><a href="#">Dec 6, 2018</a></div>
                                    <div><a href="#">Admin</a></div>
                                    <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="instagram">
            <div class="container-fluid">
                <div class="row no-gutters justify-content-center pb-5">
                    <div class="col-md-7 text-center heading-section ftco-animate">
                        <h2><span>Instagram</span></h2>
                    </div>
                </div>
                <div class="row no-gutters">
                    <div class="col-sm-12 col-md ftco-animate">
                        <a href="Asset/images/insta-1.jpg" class="insta-img image-popup" style="background-image: url(Asset/images/insta-1.jpg);">
                            <div class="icon d-flex justify-content-center">
                                <span class="icon-instagram align-self-center"></span>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-12 col-md ftco-animate">
                        <a href="Asset/images/insta-2.jpg" class="insta-img image-popup" style="background-image: url(Asset/images/insta-2.jpg);">
                            <div class="icon d-flex justify-content-center">
                                <span class="icon-instagram align-self-center"></span>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-12 col-md ftco-animate">
                        <a href="Asset/images/insta-3.jpg" class="insta-img image-popup" style="background-image: url(Asset/images/insta-3.jpg);">
                            <div class="icon d-flex justify-content-center">
                                <span class="icon-instagram align-self-center"></span>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-12 col-md ftco-animate">
                        <a href="Asset/images/insta-4.jpg" class="insta-img image-popup" style="background-image: url(Asset/images/insta-4.jpg);">
                            <div class="icon d-flex justify-content-center">
                                <span class="icon-instagram align-self-center"></span>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-12 col-md ftco-animate">
                        <a href="Asset/images/insta-5.jpg" class="insta-img image-popup" style="background-image: url(Asset/images/insta-5.jpg);">
                            <div class="icon d-flex justify-content-center">
                                <span class="icon-instagram align-self-center"></span>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </section>

        <jsp:include page="_FooterLayout.jsp"></jsp:include>
            <!-- loader -->
        <jsp:include page="_LoadLayout.jsp"></jsp:include>

    </body>
</html>