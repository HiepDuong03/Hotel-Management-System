<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@page import="entity.User" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>DELUXE HOTEL</title>
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

            <div class="hero-wrap" style="background-image: url('Asset/images/bg_1.jpg');">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row no-gutters slider-text d-flex align-itemd-end justify-content-center">
                        <div class="col-md-9 ftco-animate text-center d-flex align-items-end justify-content-center">
                            <div class="text">
                                <p class="breadcrumbs mb-2" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="Home.jsp">Home</a></span> <span class="mr-2"><a href="list">Room</a></span> <span>Room Single</span></p>
                                <h1 class="mb-4 bread">Room Detail</h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <section class="ftco-section">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8">
                            <div class="row">
                                <div class="col-md-12 ftco-animate">
                                    <h2 class="mb-4">${detail.roomName}</h2>
                                <div class="single-slider owl-carousel">
                                    <c:forEach items="${list}" var="r">
                                        <div class="item">
                                            <div class="room-img" style="background-image: url(${r});"></div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div> 
                            <div class="col-md-12 room-single mt-4 mb-5 ftco-animate">
                                <p>${detail.roomDescrip}</p>
                                <div class="d-md-flex mt-5 mb-5">
                                    <ul class="list">
                                        <li><span>Max:</span> ${detail.roomMax} Persons</li>
                                        <li><span>Size:</span> ${detail.roomSize} m2</li>
                                    </ul>
                                    <ul class="list ml-md-5">
                                        <li><span>View:</span> ${detail.roomView} View</li>
                                        <li><span>Bed:</span> ${detail.roomBed}</li>
                                    </ul>
                                    <ul class="list ml-md-5">
                                        <li><span>Star:</span> ${detail.roomStar} <i class="icon-star"></i></li>
                                        <li><span>Price: </span><span>${detail.roomPrice}$</span> <span class="per">/ night</span></li>
                                    </ul>
                                </div>
                            </div>
                            <c:if test="${sessionScope.acc==null}">
                                <div class="col-md-12 p-md-4 " style="position: relative">
                                    ${status == "3" ? '<button type="button" class="btn btn-outline-secondary" style="position: relative;
                                      left: 41%" onclick="window.location.href=\'SignIn.jsp\'">Booking Now</button>' : ''}
                                </div>
                            </c:if>
                            <c:if test="${(sessionScope.acc != null) and (status == '3')}"> 
                                <div class="col-md-12 p-md-4 " style="position: relative">
                                    <button type="button" class="btn btn-outline-secondary" style="position: relative;
                                            left: 41%" onclick="window.location.href = 'confirm?rid=${detail.roomId}'">Booking Now</button>
                                </div>
                            </c:if>
                            <div class="col-md-12 room-single ftco-animate mb-1 ">
                                <h3 class="mb-4">Take A Tour</h3>
                                <div class="block-16">
                                    <figure>
                                        <img src="Asset/images/room-4.jpg" alt="Image placeholder" class="img-fluid">
                                        <a href="${detail.roomVideo}" class="play-button popup-vimeo"><span class="icon-play"></span></a>
                                    </figure>
                                </div>
                            </div>
                            <!--Avartar review-->
                            <div class="col-md-12">
                                <h2 class="pb-3">Review</h2>
                                <div class="col-md-12">
                                    <div class="pricing-entry d-flex ftco-animate">
                                        <div class="img" id="avatar-review" style="background-image: url(https://vapa.vn/wp-content/uploads/2022/12/anh-dai-dien-dep-001.jpg); width: 50px;height: 50px;"></div>
                                        <div class="desc pl-3">
                                            <div class="d-flex mt-2">
                                                <p>A small river named Duden flows by their place and supplies</p>

                                            </div>
                                            <div class="d-block">

                                            </div>
                                        </div>
                                    </div>



                                </div>
                            </div>
                        </div>
                    </div>

                            <!-- .col-md-8 -->
                            <div class="col-lg-4 sidebar ftco-animate">
                                <div class="sidebar-box">

                                </div>
                                <div class="sidebar-box ftco-animate">


                                    <div class="sidebar-box ftco-animate">
                                        <h3>Recent Blog</h3>
                                        <div class="block-21 mb-4 d-flex">
                                            <a class="blog-img mr-4" style="background-image: url(Asset/images/image_1.jpg);"></a>
                                            <div class="text">
                                                <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                                                <div class="meta">
                                                    <div><a href="#"><span class="icon-calendar"></span> July 12, 2018</a></div>
                                                    <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                                                    <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="block-21 mb-4 d-flex">
                                            <a class="blog-img mr-4" style="background-image: url(Asset/images/image_2.jpg);"></a>
                                            <div class="text">
                                                <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                                                <div class="meta">
                                                    <div><a href="#"><span class="icon-calendar"></span> July 12, 2018</a></div>
                                                    <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                                                    <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="block-21 mb-4 d-flex">
                                            <a class="blog-img mr-4" style="background-image: url(Asset/images/image_3.jpg);"></a>
                                            <div class="text">
                                                <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                                                <div class="meta">
                                                    <div><a href="#"><span class="icon-calendar"></span> July 12, 2018</a></div>
                                                    <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                                                    <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="sidebar-box ftco-animate">
                                        <h3>Tag Cloud</h3>
                                        <div class="tagcloud">
                                            <a href="#" class="tag-cloud-link">dish</a>
                                            <a href="#" class="tag-cloud-link">menu</a>
                                            <a href="#" class="tag-cloud-link">food</a>
                                            <a href="#" class="tag-cloud-link">sweet</a>
                                            <a href="#" class="tag-cloud-link">tasty</a>
                                            <a href="#" class="tag-cloud-link">delicious</a>
                                            <a href="#" class="tag-cloud-link">desserts</a>
                                            <a href="#" class="tag-cloud-link">drinks</a>
                                        </div>
                                    </div>

                                    <div class="sidebar-box ftco-animate">
                                        <h3>Paragraph</h3>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus itaque, autem necessitatibus voluptate quod mollitia delectus aut, sunt placeat nam vero culpa sapiente consectetur similique, inventore eos fugit cupiditate numquam!</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </section> <!-- .section -->


                        <section class="instagram pt-5">
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