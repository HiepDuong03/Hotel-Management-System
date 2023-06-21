<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@page import="entity.Search" %>
<%@page import="entity.User" %>
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
        <style>
            #status{
                padding: 0.5rem 0.875rem 0.5rem 0.875rem;
                border-radius: 0.5rem;
                font-size: 0.75rem;
                font-weight: 400;
                color: #fff;
            }
        </style>
    </head>
    <c:set var="page" value="${param.page}"/>
    <c:set var="pagesize" value="6"/>
    <c:if test="${page == null}">
        <c:set var="page" value="1"/>
    </c:if>
    <body>
        <jsp:include page="_HeaderLayout.jsp"></jsp:include>
            <!-- END nav -->
            <div class="hero-wrap" style="background-image: url('Asset/images/bg_1.jpg');">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row no-gutters slider-text d-flex align-itemd-end justify-content-center">
                        <div class="col-md-9 ftco-animate text-center d-flex align-items-end justify-content-center">
                            <div class="text">
                                <p class="breadcrumbs mb-2"><span class="mr-2"><a href="Home.jsp">Home</a></span> <span>About</span></p>
                                <h1 class="mb-4 bread">Rooms</h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <section class="ftco-section bg-light">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-9">
                            <div class="row">
                                <!--fron-end 1 sản phẩm--> 
                            <c:forEach items="${list}" var="r" begin="${(page-1) * pagesize}" end="${page * pagesize -1}">
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
                                            <ul class="list">
                                                <li><span>Max:</span> ${r.roomMax} Persons</li>
                                                <li><span>Size:</span> ${r.roomSize} m2</li>
                                                <li><span>View:</span> ${r.roomView} View</li>
                                                <li><span>Bed:</span> ${r.roomBed}</li>
                                                <li><span>Star:</span> ${r.roomStar} <i class="icon-star"></i></li>
                                                <li><span class=" badge ${r.status == 2 ? "badge-danger" : r.status == 1 ? "badge-warning" : "badge-success"}" id="status">
                                                        ${r.status == 2 ? "Occupied" : r.status == 1 ? "Booked" : "Available"}</span> </li>
                                            </ul>
                                            <hr>
                                            <c:if test="${sessionScope.acc==null}">
                                                <p class="pt-1"><a href="SignIn.jsp" class="btn-custom" onclick="return ${r.status == 3 ? "true":"false"}">Book Now <i class="fa-solid fa-right-to-bracket"></i></a></p>
                                                    </c:if>
                                                    <c:if test="${sessionScope.acc != null}"> 
                                                <p class="pt-1"><a href="confirm?rid=${r.roomId}" class="btn-custom" onclick="return ${r.status == 3 ? "true":"false"}">Book Now <i class="fa-solid fa-right-to-bracket"></i></a></p>
                                                    </c:if>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                        <ul class="pagination pagination-gutter pagination-primary style-1">
                            <c:if test="${page > 1}">
                                <li class="page-item page-indicator job-search-page">
                                    <a class="page-link" href='search?page=<fmt:formatNumber value="1" type="number"/>'><<</a>
                                </li>
                                <li class="page-item page-indicator job-search-page">
                                    <a class="page-link" href='search?page=<fmt:formatNumber value="${page - 1}" type="number"/>'><</a>
                                </li>
                            </c:if>
                            <c:if test="${page == 1}">
                                <li class="page-item page-indicator job-search-page">
                                    <a class="page-link"><<</a>
                                </li> 
                                <li class="page-item page-indicator job-search-page"><a class="page-link"><</a>
                                </li>
                            </c:if>
                            <li class="page-item active" ><p class="page-link">${page}</p></li>
                                <c:if test="${page < (list.size() div pagesize)}">
                                <li class="page-item page-indicator job-search-page"><a class="page-link" href='search?page=<fmt:formatNumber value="${page + 1}" type="number"/>'>></a>
                                </li>
                                <li class="page-item page-indicator job-search-page">
                                    <a class="page-link" href='search?page=<fmt:formatNumber value="${Math.ceil(list.size() / pagesize)}" type="number"/>'>>></a>
                                </li>
                            </c:if>
                            <c:if test="${page == Math.ceil(list.size() / pagesize)}">
                                <li class="page-item page-indicator job-search-page"><a class="page-link" >></a>
                                </li>
                                <li class="page-item page-indicator job-search-page">
                                    <a class="page-link">>></a>
                                </li>
                            </c:if>
                        </ul>
                    </div>
                    <div class="col-lg-3 sidebar">
                        <div class="sidebar-wrap bg-light ftco-animate">
                            <h3 class="heading mb-4">Advanced Search</h3>
                            <p style="color: red;">${mess}</p>
                            <%
                                HttpSession sessionObj = request.getSession(true);
                                Search search = null;
                                Object o = sessionObj.getAttribute("search");
                                String cate = request.getParameter("cate"); 
                                String adult = request.getParameter("adult");
                                String children = request.getParameter("children");
                                if (o != null) {
                                    search = (Search) o;
                                    cate = search.getCate();
                                    adult = search.getAdult();
                                    children = search.getChildren();
                                }
                            %>
                            <form action="search" method="post">
                                <div class="fields">
                                    <div class="form-group">
                                        <input type="text" id="checkin_date" class="form-control checkin_date" placeholder="Check In Date" name="indate" value="${indate}">
                                    </div>  
                                    <div class="form-group">
                                        <input type="text" id="checkin_date" class="form-control checkout_date" placeholder="Check Out Date" name="outdate" value="${outdate}">
                                    </div>
                                    <div class="form-group">
                                        <div class="select-wrap one-third">
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
                                    <div class="form-group">
                                        <div class="select-wrap one-third">
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
                                    <div class="form-group">
                                        <div class="select-wrap one-third">
                                            <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                            <select name="children" id="" class="form-control">
                                                <option value="0"<%= (children == null || children.equals("0")) ? "selected" : ""%>>0 Children</option>
                                                <option value="1"<%= (children != null && children.equals("1")) ? "selected" : ""%>>1 Children</option>
                                                <option value="2"<%= (children != null && children.equals("2")) ? "selected" : ""%>>2 Children</option>
                                                <option value="3"<%= (children != null && children.equals("3")) ? "selected" : ""%>>3 Children</option>
                                                <option value="4"<%= (children != null && children.equals("4")) ? "selected" : ""%>>4 Children</option>
                                                <option value="5"<%= (children != null && children.equals("5")) ? "selected" : ""%>>5 Children</option>
                                                <option value="6"<%= (children != null && children.equals("6")) ? "selected" : ""%>>6 Children</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <input type="submit" value="Search" class="btn btn-primary py-3 px-5">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>


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
