<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from kamr.dexignlab.com/xhtml/room.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 15 May 2023 03:46:20 GMT -->
    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="keywords" content="" />
        <meta name="author" content="" />
        <meta name="robots" content="" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Kamr Hotel Admin Dashboard" />
        <meta property="og:title" content="Kamr Hotel Admin Dashboard" />
        <meta property="og:description" content="Kamr Hotel Admin Dashboard" />
        <meta property="og:image" content="social-image.png" />
        <meta name="format-detection" content="telephone=no">
        <link href="Admin/vendor/owl-carousel/owl.carousel.css" rel="stylesheet">
        <link href="Admin/vendor/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet">

        <!-- PAGE TITLE HERE -->
        <title>Kamr Hotel Admin Dashboard</title>

        <!-- FAVICONS ICON -->
        <link rel="shortcut icon" type="Admin/image/png" href="Admin/Admin/images/favicon.png" />
        <link href="Admin/vendor/jquery-nice-select/css/nice-select.css" rel="stylesheet">
        <link rel="stylesheet" href="Admin/vendor/dotted-map/css/contrib/jquery.smallipop-0.3.0.min.css" type="text/css" media="all" />
        <!-- Style css -->
        <link href="Admin/css/style.css" rel="stylesheet">
        <link href="Admin/vendor/datatables/css/jquery.dataTables.min.css" rel="stylesheet">
        <link href="Admin/vendor/datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet">


    </head>
    <c:set var="page" value="${param.page}"/>
    <c:set var="pageAvailable" value="${param.pageAvailable}"/>
    <c:set var="pageBooked" value="${param.pageBooked}"/>
    <c:set var="pageOccupied" value="${param.pageOccupied}"/>
    <c:set var="pagesize" value="8"/>
    <c:if test="${page == null}">
        <c:set var="page" value="1"/>
        <c:set var="pageAvailable" value="1"/>
        <c:set var="pageBooked" value="1"/>
        <c:set var="pageOccupied" value="1"/>
    </c:if>
    <body>
        <div id="preloader">
            <div class="lds-ripple">
                <div></div>
                <div></div>
            </div>
        </div>
        <div id="main-wrapper">
            <div class="nav-header">
                <a href="home" class="brand-logo">
                    <svg class="logo-abbr" width="57" height="57" viewBox="0 0 57 57" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <rect width="57" height="57" rx="14" fill="#FFD482"/>
                    <path d="M33.8661 45.3198L34.016 45.5H34.2504H42H43.0867L42.3797 44.6747L29.6972 29.8694L42.0311 15.3234L42.7292 14.5H41.6497H34.2504H34.015L33.8651 14.6814L23.6296 27.0631V15V14.5H23.1296H17H16.5V15V45V45.5H17H23.1296H23.6296V45V33.016L33.8661 45.3198Z" fill="#2D3134" stroke="#2D3134"/>
                    <path d="M49.609 37.1129L49.6065 37.1153L45.8935 40.7348L46.7704 45.847L46.7705 45.8478C46.8764 46.468 46.622 47.0949 46.113 47.4658L49.609 37.1129ZM49.609 37.1129C50.0552 36.6749 50.222 36.0196 50.0254 35.4164L49.0746 35.7263L50.0254 35.4164C49.8302 34.8175 49.3123 34.3807 48.6885 34.2897L48.6878 34.2896L43.5562 33.5445L41.2613 28.8938C41.2613 28.8938 41.2612 28.8938 41.2612 28.8938C40.9426 28.248 40.2969 28 39.7756 28C39.2543 28 38.6085 28.248 38.2899 28.8938L35.995 33.5445L30.8633 34.2896L30.8626 34.2897C30.2377 34.3808 29.721 34.8192 29.526 35.4156C29.3292 36.0177 29.4952 36.6758 29.9435 37.1142L29.9447 37.1154L33.6583 40.7342L32.7814 45.8463L32.7813 45.8471M49.609 37.1129L32.7813 45.8471M32.7813 45.8471C32.6755 46.4673 32.9299 47.0942 33.4388 47.4652M32.7813 45.8471L33.4388 47.4652M33.4388 47.4652C33.9498 47.8383 34.6282 47.8867 35.1863 47.5918C35.1868 47.5915 35.1873 47.5913 35.1878 47.591L39.7756 45.1795L44.3657 47.5925L33.4385 47.4649C33.4386 47.465 33.4387 47.4651 33.4388 47.4652ZM45.1374 47.7835C45.4783 47.7835 45.822 47.6782 46.1129 47.4659L44.3668 47.5931C44.6093 47.7208 44.8745 47.7835 45.1374 47.7835Z" fill="url(#paint0_linear_33_278)" stroke="#FFD482" stroke-width="2"/>
                    <defs>
                    <linearGradient id="paint0_linear_33_278" x1="39.7756" y1="29" x2="39.7756" y2="46.7835" gradientUnits="userSpaceOnUse">
                    <stop offset="2" stop-color="#FF9D43"/>
                    <stop offset="1" stop-color="#F66F4D"/>
                    </linearGradient>
                    </defs>
                    </svg>
                    <svg  class="brand-title" width="110" height="33" viewBox="0 0 110 33" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M0.5 31.6275V32.1275H1H6.77194H7.27194V31.6275V23.2943L14.1312 31.9383L14.2813 32.1275H14.5228H22.0264H23.1389L22.4002 31.2955L12.5506 20.2017L22.3203 9.02737L23.0452 8.19826H21.9439H14.4404H14.1979L14.0477 8.3887L7.27194 16.9828V1V0.5H6.77194H1H0.5V1V31.6275ZM41.0678 10.605C39.5233 9.04976 37.1689 7.82577 34.0231 7.82577C27.8956 7.82577 23.0924 12.6836 23.0924 20.0801C23.0924 27.4655 27.8854 32.5 33.9819 32.5C37.0937 32.5 39.5015 31.2757 41.0678 29.6684V31.6275V32.1275H41.5678H47.381H47.881V31.6275V8.69826V8.19826H47.381H41.5678H41.0678V8.69826V10.605ZM84.4701 31.6275V32.1275H84.9701H90.7421H91.2421V31.6275V18.1762C91.2421 14.9065 90.2393 12.3172 88.4732 10.5442C86.7078 8.77197 84.2313 7.86715 81.3833 7.86715C78.175 7.86715 75.2441 9.42776 73.5593 11.8096C71.8164 9.22484 68.9104 7.86715 65.5104 7.86715C63.0449 7.86715 60.8509 8.72757 59.2903 10.1773V8.69826V8.19826H58.7903H53.0183H52.5183V8.69826V31.6275V32.1275H53.0183H58.7903H59.2903V31.6275V18.9626C59.2903 17.2319 59.769 15.9839 60.5522 15.1706C61.3334 14.3592 62.479 13.9166 63.9438 13.9166C65.3637 13.9166 66.4889 14.3571 67.2612 15.1685C68.0361 15.9825 68.5148 17.2319 68.5148 18.9626V31.6275V32.1275H69.0148H74.7868H75.2868V31.6275V18.9626C75.2868 17.2319 75.7655 15.9832 76.5445 15.1695C77.3213 14.3582 78.4567 13.9166 79.8991 13.9166C81.319 13.9166 82.4441 14.3571 83.2165 15.1685C83.9913 15.9825 84.4701 17.2319 84.4701 18.9626V31.6275ZM109 14.9513H109.5V14.4513V8.36715V7.86715H109C106.248 7.86715 104.04 8.96175 102.491 10.7325V8.69826V8.19826H101.991H96.2193H95.7193V8.69826V31.6275V32.1275H96.2193H101.991H102.491V31.6275V20.2043C102.491 18.0564 102.992 16.782 103.792 16.0317C104.598 15.2759 105.812 14.9513 107.475 14.9513H109ZM41.0678 20.1629C41.0678 22.221 40.387 23.7769 39.3706 24.8161C38.3515 25.858 36.9676 26.4092 35.5073 26.4092C32.71 26.4092 29.988 24.1688 29.988 20.0801C29.988 18.0245 30.6774 16.4904 31.6924 15.4715C32.7111 14.4488 34.0859 13.9166 35.5073 13.9166C36.9676 13.9166 38.3515 14.4678 39.3706 15.5097C40.387 16.5488 41.0678 18.1048 41.0678 20.1629Z" fill="#2D3134" stroke="#2D3134"/>
                    </svg>
                </a>
            </div>
            <jsp:include page="_HeaderLayoutAd.jsp"></jsp:include>
            <jsp:include page="_MenuLayoutAd.jsp"></jsp:include>
                <div class="content-body">
                    <!-- row -->
                    <div class="container-fluid">
                        <div class=" d-block d-lg-flex align-items-center justify-content-between mb-5">
                            <div class="coin-tabs">
                                <ul class="nav nav-tabs d-none" id="ListViewTabLink" role="tablist">
                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link active" id="all-status-tab" data-bs-toggle="tab" data-bs-target="#all-status" type="button" role="tab" aria-controls="all-status" aria-selected="true">All Status</button>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link" id="available-tab" data-bs-toggle="tab" data-bs-target="#available" type="button" role="tab" aria-controls="available" aria-selected="false">Available</button>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link" id="booked-tab" data-bs-toggle="tab" data-bs-target="#booked" type="button" role="tab" aria-controls="booked" aria-selected="false">Booked</button>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link" id="occupied-tab" data-bs-toggle="tab" data-bs-target="#occupied" type="button" role="tab" aria-controls="occupied" aria-selected="false">Occupied</button>
                                    </li>
                                </ul>

                                <ul class="nav nav-tabs" id="BoxedViewTabLink" role="tablist">
                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link active" id="boxed-all-status-tab" data-bs-toggle="tab" data-bs-target="#boxed-all-status" type="button" role="tab" aria-controls="boxed-all-status" aria-selected="true">All Status</button>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link" id="boxed-available-tab" data-bs-toggle="tab" data-bs-target="#boxed-available" type="button" role="tab" aria-controls="boxed-available" aria-selected="false">Available</button>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link" id="boxed-booked-tab" data-bs-toggle="tab" data-bs-target="#boxed-booked" type="button" role="tab" aria-controls="boxed-booked" aria-selected="false">Booked</button>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link" id="boxed-occupied-tab" data-bs-toggle="tab" data-bs-target="#boxed-occupied" type="button" role="tab" aria-controls="boxed-occupied" aria-selected="false">Occupied</button>
                                    </li>
                                </ul>
                            </div>

                            <div class="form-head d-inline-block d-sm-flex align-items-center mt-2 mt-lg-0">
                                <a href="AddNewRoom.jsp" class="btn btn-primary ms-sm-3 ms-0 mt-2 mt-sm-0">Add New Room</a>
                            </div>
                        </div>
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade" id="list" aria-labelledby="list-tab" >
                                <div class="tab-content" id="ListViewTabLinkContent">
                                    <div class="tab-pane fade active show" id="all-status" aria-labelledby="boxed-all-status-tab" >
                                    </div>
                                </div>
                            </div>
                            <!--                                    all status-->
                            <div class="tab-pane fade show active" id="boxed" aria-labelledby="boxed-tab" >
                                <div class="tab-content" id="BoxedViewTabLinkContent">
                                    <div class="tab-pane fade active show" id="boxed-all-status" aria-labelledby="boxed-all-status-tab" >
                                        <div class="row">
                                        <c:forEach items="${list}" var="r" begin="${(page-1) * pagesize}" end="${page * pagesize -1}">
                                            <div class="main-grid">
                                                <div class="grid-info">
                                                    <div class="popular-rooms">
                                                        <div class="dropdown dropstart">
                                                            <a href="javascript:void(0);" class="btn-link" data-bs-toggle="dropdown" aria-expanded="false">
                                                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M11 12C11 12.5523 11.4477 13 12 13C12.5523 13 13 12.5523 13 12C13 11.4477 12.5523 11 12 11C11.4477 11 11 11.4477 11 12Z" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                                                <path d="M18 12C18 12.5523 18.4477 13 19 13C19.5523 13 20 12.5523 20 12C20 11.4477 19.5523 11 19 11C18.4477 11 18 11.4477 18 12Z" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                                                <path d="M4 12C4 12.5523 4.44772 13 5 13C5.55228 13 6 12.5523 6 12C6 11.4477 5.55228 11 5 11C4.44772 11 4 11.4477 4 12Z" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                                                </svg>
                                                            </a>
                                                            <div class="dropdown-menu">
                                                                <a class="dropdown-item" href="EditRoom.jsp?rid=${r.roomId}">Edit</a>
                                                                <a class="dropdown-item" href="deleteroom?rid=${r.roomId}">Delete</a>
                                                            </div>
                                                        </div>
                                                        <img src="${r.roomImg}" alt="image">
                                                        <div class="content">
                                                            <span class=" badge ${r.status == 2 ? "badge-danger" : r.status == 1 ? "badge-warning" : "badge-success"}" id="status">
                                                                ${r.status == 2 ? "Occupied" : r.status == 1 ? "Booked" : "Available"}</span> 
                                                            <h3 class="font-w500 text-white pt-3 pb-2 m-0"><a href="detailad?rid=${r.roomId}&status=${r.status}">${r.roomName}</a></h3>
                                                            <span class="font-w400 text-white">Room number: ${r.roomId}</span>
                                                        </div>
                                                    </div>
                                                    <div class="review-area">
                                                        <div class="star-rate">
                                                            <h4 class="mb-0 font-w500">Star: ${r.roomStar} <i class="fa-solid fa-star"></i></h4>
                                                        </div>
                                                        <p class="mb-0 font-w400">245 Reviews</p>
                                                    </div>
                                                    <ul class="feature-list">
                                                        <li>Max <span>${r.roomMax} Persons</span></li>
                                                        <li>Number Of Beds <span>${r.roomBed} Bed</span></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </div>
                                    <div class="d-flex align-items-center justify-content-between flex-wrap mt-4">
                                        <div class="mb-sm-0 mb-3">
                                            <h5 class="mb-0">Showing ${pagesize > list.size() ? list.size(): pagesize} of ${list.size()} Data</h5>
                                        </div>
                                        <nav>
                                            <ul class="pagination pagination-gutter pagination-primary style-1">
                                                <c:if test="${page > 1}">
                                                    <li class="page-item page-indicator job-search-page">
                                                        <a class="page-link" href='listroomad?page=<fmt:formatNumber value="1" type="number"/>&pageAvailable=${pageAvailable}&pageBooked=${pageBooked}&pageOccupied=${pageOccupied}'><<</a>
                                                    </li>
                                                    <li class="page-item page-indicator job-search-page">
                                                        <a class="page-link" href='listroomad?page=<fmt:formatNumber value="${page - 1}" type="number"/>&pageAvailable=${pageAvailable}&pageBooked=${pageBooked}&pageOccupied=${pageOccupied}'><</a>
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
                                                    <li class="page-item page-indicator job-search-page"><a class="page-link" href='listroomad?page=<fmt:formatNumber value="${page + 1}" type="number"/>&pageAvailable=${pageAvailable}&pageBooked=${pageBooked}&pageOccupied=${pageOccupied}'>></a>
                                                    </li>
                                                    <li class="page-item page-indicator job-search-page">
                                                        <a class="page-link" href='listroomad?page=<fmt:formatNumber value="${Math.ceil(list.size() / pagesize)}" type="number"/>&pageAvailable=${pageAvailable}&pageBooked=${pageBooked}&pageOccupied=${pageOccupied}'>>></a>
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
                                        </nav>
                                    </div>
                                </div>
                                <!--                                                    Availble room-->

                                <div class="tab-pane fade" id="boxed-available" aria-labelledby="boxed-available-tab" >
                                    <div class="row">
                                        <c:forEach items="${listAvailble}" var="r" begin="${(pageAvailable-1) * pagesize}" end="${pageAvailable * pagesize -1}">
                                            <div class="main-grid">
                                                <div class="grid-info">
                                                    <div class="popular-rooms">
                                                        <div class="dropdown dropstart">
                                                            <a href="javascript:void(0);" class="btn-link" data-bs-toggle="dropdown" aria-expanded="false">
                                                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M11 12C11 12.5523 11.4477 13 12 13C12.5523 13 13 12.5523 13 12C13 11.4477 12.5523 11 12 11C11.4477 11 11 11.4477 11 12Z" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                                                <path d="M18 12C18 12.5523 18.4477 13 19 13C19.5523 13 20 12.5523 20 12C20 11.4477 19.5523 11 19 11C18.4477 11 18 11.4477 18 12Z" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                                                <path d="M4 12C4 12.5523 4.44772 13 5 13C5.55228 13 6 12.5523 6 12C6 11.4477 5.55228 11 5 11C4.44772 11 4 11.4477 4 12Z" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                                                </svg>
                                                            </a>
                                                            <div class="dropdown-menu">
                                                                <a class="dropdown-item" href="EditRoom.jsp?rid=${r.roomId}">Edit</a>
                                                                <a class="dropdown-item" href="deleteroom?rid=${r.roomId}">Delete</a>
                                                            </div>
                                                        </div>
                                                        <img src="${r.roomImg}" alt="image">
                                                        <div class="content">
                                                            <span class=" badge ${r.status == 2 ? "badge-danger" : r.status == 1 ? "badge-warning" : "badge-success"}" id="status">
                                                                ${r.status == 2 ? "Occupied" : r.status == 1 ? "Booked" : "Available"}</span> 
                                                            <h3 class="font-w500 text-white pt-3 pb-2 m-0"><a href="detailad?rid=${r.roomId}&status=${r.status}">${r.roomName}</a></h3>
                                                            <span class="font-w400 text-white">Room number: ${r.roomId}</span>
                                                        </div>
                                                    </div>
                                                    <div class="review-area">
                                                        <div class="star-rate">
                                                            <h4 class="mb-0 font-w500">Star: ${r.roomStar} <i class="fa-solid fa-star"></i></h4>
                                                        </div>
                                                        <p class="mb-0 font-w400">245 Reviews</p>
                                                    </div>
                                                    <ul class="feature-list">
                                                        <li>Max <span>${r.roomMax} Persons</span></li>
                                                        <li>Number Of Beds <span>${r.roomBed} Bed</span></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </div>
                                    <div class="d-flex align-items-center justify-content-between flex-wrap mt-4">
                                        <div class="mb-sm-0 mb-3">
                                            <h5 class="mb-0">Showing ${pagesize > listAvailble.size() ? listAvailble.size(): pagesize} of ${listAvailble.size()} Data</h5>
                                        </div>
                                        <nav>
                                            <ul class="pagination pagination-gutter pagination-primary style-1">
                                                <c:if test="${pageAvailable > 1}">
                                                    <li class="page-item page-indicator job-search-page">
                                                        <a class="page-link" href='listroomad?page=${page}&pageAvailable=<fmt:formatNumber value="1" type="number"/>&pageBooked=${pageBooked}&pageOccupied=${pageOccupied}'><<</a>
                                                    </li>
                                                    <li class="page-item page-indicator job-search-page">
                                                        <a class="page-link" href='listroomad?page=${page}&pageAvailable=<fmt:formatNumber value="${pageAvailable - 1}" type="number"/>&pageBooked=${pageBooked}&pageOccupied=${pageOccupied}'><</a>
                                                    </li>
                                                </c:if>
                                                <c:if test="${pageAvailable == 1}">
                                                    <li class="page-item page-indicator job-search-page">
                                                        <a class="page-link"><<</a>
                                                    </li> 
                                                    <li class="page-item page-indicator job-search-page"><a class="page-link"><</a>
                                                    </li>
                                                </c:if>
                                                <li class="page-item active" ><p class="page-link">${pageAvailable}</p></li>
                                                    <c:if test="${pageAvailable < (listAvailble.size() div pagesize)}">
                                                    <li class="page-item page-indicator job-search-page"><a class="page-link" href='listroomad?page=${page}&pageAvailable=<fmt:formatNumber value="${pageAvailable + 1}" type="number"/>&pageBooked=${pageBooked}&pageOccupied=${pageOccupied}'>></a>
                                                    </li>
                                                    <li class="page-item page-indicator job-search-page">
                                                        <a class="page-link" href='listroomad?page=${page}&pageAvailable=<fmt:formatNumber value="${Math.ceil(listAvailble.size() / pagesize)}" type="number"/>&pageBooked=${pageBooked}&pageOccupied=${pageOccupied}'>>></a>
                                                    </li>
                                                </c:if>
                                                <c:if test="${pageAvailable == Math.ceil(listAvailble.size() / pagesize)}">
                                                    <li class="page-item page-indicator job-search-page"><a class="page-link" >></a>
                                                    </li>
                                                    <li class="page-item page-indicator job-search-page">
                                                        <a class="page-link">>></a>
                                                    </li>
                                                </c:if>
                                            </ul>
                                        </nav>
                                    </div>
                                </div>

                                <!--Booked Rooms-->

                                <div class="tab-pane fade" id="boxed-booked" aria-labelledby="boxed-booked-tab" >
                                    <div class="row">
                                        <c:forEach items="${listBooked}" var="r" begin="${(pageBooked-1) * pagesize}" end="${pageBooked * pagesize -1}">
                                            <div class="main-grid">
                                                <div class="grid-info">
                                                    <div class="popular-rooms">
                                                        <div class="dropdown dropstart">
                                                            <a href="javascript:void(0);" class="btn-link" data-bs-toggle="dropdown" aria-expanded="false">
                                                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M11 12C11 12.5523 11.4477 13 12 13C12.5523 13 13 12.5523 13 12C13 11.4477 12.5523 11 12 11C11.4477 11 11 11.4477 11 12Z" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                                                <path d="M18 12C18 12.5523 18.4477 13 19 13C19.5523 13 20 12.5523 20 12C20 11.4477 19.5523 11 19 11C18.4477 11 18 11.4477 18 12Z" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                                                <path d="M4 12C4 12.5523 4.44772 13 5 13C5.55228 13 6 12.5523 6 12C6 11.4477 5.55228 11 5 11C4.44772 11 4 11.4477 4 12Z" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                                                </svg>
                                                            </a>
                                                            <div class="dropdown-menu">
                                                                <a class="dropdown-item" href="EditRoom.jsp?rid=${r.roomId}">Edit</a>
                                                                <a class="dropdown-item" href="deleteroom?rid=${r.roomId}">Delete</a>
                                                            </div>
                                                        </div>
                                                        <img src="${r.roomImg}" alt="image">
                                                        <div class="content">
                                                            <span class=" badge ${r.status == 2 ? "badge-danger" : r.status == 1 ? "badge-warning" : "badge-success"}" id="status">
                                                                ${r.status == 2 ? "Occupied" : r.status == 1 ? "Booked" : "Available"}</span> 
                                                            <h3 class="font-w500 text-white pt-3 pb-2 m-0"><a href="detailad?rid=${r.roomId}&status=${r.status}">${r.roomName}</a></h3>
                                                            <span class="font-w400 text-white">Room number: ${r.roomId}</span>
                                                        </div>
                                                    </div>
                                                    <div class="review-area">
                                                        <div class="star-rate">
                                                            <h4 class="mb-0 font-w500">Star: ${r.roomStar} <i class="fa-solid fa-star"></i></h4>
                                                        </div>
                                                        <p class="mb-0 font-w400">245 Reviews</p>
                                                    </div>
                                                    <ul class="feature-list">
                                                        <li>Max <span>${r.roomMax} Persons</span></li>
                                                        <li>Number Of Beds <span>${r.roomBed} Bed</span></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </div>
                                    <div class="d-flex align-items-center justify-content-between flex-wrap mt-4">
                                        <div class="mb-sm-0 mb-3">
                                            <h5 class="mb-0">Showing ${pagesize > listBooked.size() ? listBooked.size(): pagesize} of ${listBooked.size()} Data</h5>
                                        </div>
                                        <nav>
                                            <ul class="pagination pagination-gutter pagination-primary style-1">
                                                <c:if test="${pageBooked > 1}">
                                                    <li class="page-item page-indicator job-search-page">
                                                        <a class="page-link" href='listroomad?page=${page}&pageAvailable=${pageAvailable}&pageBooked=<fmt:formatNumber value="1" type="number"/>&pageOccupied=${pageOccupied}'><<</a>
                                                    </li>
                                                    <li class="page-item page-indicator job-search-page">
                                                        <a class="page-link" href='listroomad?page=${page}&pageAvailable=${pageAvailable}&pageBooked=<fmt:formatNumber value="${pageBooked - 1}" type="number"/>&pageOccupied=${pageOccupied}'><</a>
                                                    </li>
                                                </c:if>
                                                <c:if test="${pageBooked == 1}">
                                                    <li class="page-item page-indicator job-search-page">
                                                        <a class="page-link"><<</a>
                                                    </li> 
                                                    <li class="page-item page-indicator job-search-page"><a class="page-link"><</a>
                                                    </li>
                                                </c:if>
                                                <li class="page-item active" ><p class="page-link">${pageBooked}</p></li>
                                                    <c:if test="${pageBooked < (listBooked.size() div pagesize)}">
                                                    <li class="page-item page-indicator job-search-page"><a class="page-link" href='listroomad?page=${page}&pageAvailable=${pageAvailable}&pageBooked=<fmt:formatNumber value="${pageBooked + 1}" type="number"/>&pageOccupied=${pageOccupied}'>></a>
                                                    </li>
                                                    <li class="page-item page-indicator job-search-page">
                                                        <a class="page-link" href='listroomad?page=${page}&pageAvailable=${pageAvailable}&pageBooked=<fmt:formatNumber value="${Math.ceil(listBooked.size() / pagesize)}" type="number"/>&pageOccupied=${pageOccupied}'>>></a>
                                                    </li>
                                                </c:if>
                                                <c:if test="${pageBooked == Math.ceil(listBooked.size() / pagesize)}">
                                                    <li class="page-item page-indicator job-search-page"><a class="page-link" >></a>
                                                    </li>
                                                    <li class="page-item page-indicator job-search-page">
                                                        <a class="page-link">>></a>
                                                    </li>
                                                </c:if>
                                            </ul>
                                        </nav>
                                    </div>   
                                </div>

                                <!--Occupied Rooms-->

                                <div class="tab-pane fade" id="boxed-occupied" aria-labelledby="boxed-occupied-tab" >
                                    <div class="row">
                                        <c:forEach items="${listOccupied}" var="r" begin="${(pageOccupied-1) * pagesize}" end="${pageOccupied * pagesize -1}">
                                            <div class="main-grid">
                                                <div class="grid-info">
                                                    <div class="popular-rooms">
                                                        <div class="dropdown dropstart">
                                                            <a href="javascript:void(0);" class="btn-link" data-bs-toggle="dropdown" aria-expanded="false">
                                                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M11 12C11 12.5523 11.4477 13 12 13C12.5523 13 13 12.5523 13 12C13 11.4477 12.5523 11 12 11C11.4477 11 11 11.4477 11 12Z" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                                                <path d="M18 12C18 12.5523 18.4477 13 19 13C19.5523 13 20 12.5523 20 12C20 11.4477 19.5523 11 19 11C18.4477 11 18 11.4477 18 12Z" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                                                <path d="M4 12C4 12.5523 4.44772 13 5 13C5.55228 13 6 12.5523 6 12C6 11.4477 5.55228 11 5 11C4.44772 11 4 11.4477 4 12Z" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                                                </svg>
                                                            </a>
                                                            <div class="dropdown-menu">
                                                                <a class="dropdown-item" href="EditRoom.jsp?rid=${r.roomId}">Edit</a>
                                                                <a class="dropdown-item" href="deleteroom?rid=${r.roomId}">Delete</a>
                                                            </div>
                                                        </div>
                                                        <img src="${r.roomImg}" alt="image">
                                                        <div class="content">
                                                            <span class=" badge ${r.status == 2 ? "badge-danger" : r.status == 1 ? "badge-warning" : "badge-success"}" id="status">
                                                                ${r.status == 2 ? "Occupied" : r.status == 1 ? "Booked" : "Available"}</span> 
                                                            <h3 class="font-w500 text-white pt-3 pb-2 m-0"><a href="detailad?rid=${r.roomId}&status=${r.status}">${r.roomName}</a></h3>
                                                            <span class="font-w400 text-white">Room number: ${r.roomId}</span>
                                                        </div>
                                                    </div>
                                                    <div class="review-area">
                                                        <div class="star-rate">
                                                            <h4 class="mb-0 font-w500">Star: ${r.roomStar} <i class="fa-solid fa-star"></i></h4>
                                                        </div>
                                                        <p class="mb-0 font-w400">245 Reviews</p>
                                                    </div>
                                                    <ul class="feature-list">
                                                        <li>Max <span>${r.roomMax} Persons</span></li>
                                                        <li>Number Of Beds <span>${r.roomBed} Bed</span></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </div>
                                    <div class="d-flex align-items-center justify-content-between flex-wrap mt-4">
                                        <div class="mb-sm-0 mb-3">
                                            <h5 class="mb-0">Showing ${pagesize > listOccupied.size() ? listOccupied.size(): pagesize} of ${listOccupied.size()} Data</h5>
                                        </div>
                                        <nav>
                                            <ul class="pagination pagination-gutter pagination-primary style-1">
                                                <c:if test="${pageOccupied > 1}">
                                                    <li class="page-item page-indicator job-search-page">
                                                        <a class="page-link" href='listroomad?page=${page}&pageAvailable=${pageAvailable}&pageBooked=${pageBooked}&pageOccupied=<fmt:formatNumber value="1" type="number"/>&pageAvailable=${pageAvailable}&pageBooked=${pageBooked}'><<</a>
                                                    </li>
                                                    <li class="page-item page-indicator job-search-page">
                                                        <a class="page-link" href='listroomad?page=${page}&pageAvailable=${pageAvailable}&pageBooked=${pageBooked}&pageOccupied=<fmt:formatNumber value="${pageOccupied - 1}" type="number"/>&pageAvailable=${pageAvailable}&pageBooked=${pageBooked}'><</a>
                                                    </li>
                                                </c:if>
                                                <c:if test="${pageOccupied == 1}">
                                                    <li class="page-item page-indicator job-search-page">
                                                        <a class="page-link"><<</a>
                                                    </li> 
                                                    <li class="page-item page-indicator job-search-page"><a class="page-link"><</a>
                                                    </li>
                                                </c:if>
                                                <li class="page-item active" ><p class="page-link">${pageOccupied}</p></li>
                                                    <c:if test="${pageOccupied < (listOccupied.size() div pagesize)}">
                                                    <li class="page-item page-indicator job-search-page"><a class="page-link" href='listroomad?page=${page}&pageAvailable=${pageAvailable}&pageBooked=${pageBooked}&pageOccupied=<fmt:formatNumber value="${pageOccupied + 1}" type="number"/>&pageAvailable=${pageAvailable}&pageBooked=${pageBooked}'>></a>
                                                    </li>
                                                    <li class="page-item page-indicator job-search-page">
                                                        <a class="page-link" href='listroomad?page=${page}&pageAvailable=${pageAvailable}&pageBooked=${pageBooked}&pageOccupied=<fmt:formatNumber value="${Math.ceil(listOccupied.size() / pagesize)}" type="number"/>&pageAvailable=${pageAvailable}&pageBooked=${pageBooked}'>>></a>
                                                    </li>
                                                </c:if>
                                                <c:if test="${pageOccupied == Math.ceil(listOccupied.size() / pagesize)}">
                                                    <li class="page-item page-indicator job-search-page"><a class="page-link" >></a>
                                                    </li>
                                                    <li class="page-item page-indicator job-search-page">
                                                        <a class="page-link">>></a>
                                                    </li>
                                                </c:if>
                                            </ul>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--**********************************
                Content body end
            ***********************************-->



            <!--**********************************
                Footer start
            ***********************************-->
            <!--**********************************
                Footer end
            ***********************************-->

            <!--**********************************
       Support ticket button start
    ***********************************-->

            <!--**********************************
               Support ticket button end
            ***********************************-->


        </div>
        <!--**********************************
            Main wrapper end
        ***********************************-->

        <!--**********************************
            Scripts
        ***********************************-->
        <!-- Required vendors -->
        <script src="Admin/vendor/global/global.min.js"></script>
        <script src="Admin/vendor/chart.js/Chart.bundle.min.js"></script>
        <script src="Admin/vendor/jquery-nice-select/js/jquery.nice-select.min.js"></script>
        <script src="Admin/vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
        <script src="Admin/vendor/datepicker/js/bootstrap-datepicker.min.js"></script>
        <script src="Admin/vendor/owl-carousel/owl.carousel.js"></script>

        <!-- Apex Chart -->
        <script src="Admin/vendor/apexchart/apexchart.js"></script>

        <!-- Chart piety plugin files -->
        <script src="Admin/vendor/peity/jquery.peity.min.js"></script>

        <!-- Dashboard 1 -->
        <!--  <script src="./js/dashboard/dashboard-1.js"></script> 	 -->
        <!-- JS for dotted map -->
        <script src="Admin/vendor/dotted-map/js/contrib/jquery.smallipop-0.3.0.min.js"></script>
        <script src="Admin/vendor/dotted-map/js/contrib/suntimes.js"></script>
        <script src="Admin/vendor/dotted-map/js/contrib/color-0.4.1.js"></script>



        <script src="Admin/js/custom.min.js"></script>
        <script src="Admin/js/deznav-init.js"></script>
        <script src="Admin/js/demo.js"></script>
        <script src="Admin/js/styleSwitcher.js"></script>
        <script src="Admin/vendor/datatables/js/jquery.dataTables.min.js"></script>
        <script src="Admin/js/plugins-init/datatables.init.js"></script>
        <script>
            $(function () {
                $("#datepicker").datepicker({
                    autoclose: true,
                    todayHighlight: true
                }).datepicker('update', new Date());
            });


        </script>
        <script>
            function assignedDoctor()
            {

                /*  testimonial one function by = owl.carousel.js */
                jQuery('.front-view-slider').owlCarousel({
                    loop: true,
                    margin: 30,
                    nav: true,
                    center: true,
                    autoplaySpeed: 3000,
                    navSpeed: 3000,
                    paginationSpeed: 3000,
                    slideSpeed: 3000,
                    smartSpeed: 3000,
                    autoplay: false,
                    animateOut: 'fadeOut',
                    dots: true,
                    navText: ['', ''],
                    responsive: {
                        0: {
                            items: 1
                        },

                        480: {
                            items: 1
                        },

                        767: {
                            items: 5
                        },
                        1400: {
                            items: 5
                        },
                        1750: {
                            items: 5
                        }
                    }
                })

            }

            jQuery(window).on('load', function () {
                setTimeout(function () {
                    assignedDoctor();
                }, 1000);
            });
        </script>

    </body>


</html>