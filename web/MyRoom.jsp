<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html id="body">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <title>DELUXE HOTEL</title>

        <!-- FAVICONS ICON -->
        <link rel="shortcut icon" type="image/png" href="Admin/images/favicon.png" />
        <link href="jquery-nice-select/css/nice-select.css" rel="stylesheet">
        <link href="Admin/vendor/datatables/css/jquery.dataTables.min.css" rel="stylesheet">
        <link rel="stylesheet" href="Admin/vendor/dotted-map/css/contrib/jquery.smallipop-0.3.0.min.css" type="text/css" media="all" />
        <!-- Style css -->
        <link href="Admin/vendor/datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet">
        <link href="Admin/vendor/swiper/css/swiper-bundle.min.css" rel="stylesheet">
        <link href="Admin/css/style.css" rel="stylesheet">
        <script src="https://cdn.tailwindcss.com"></script>
        <style>

            #company-name{
                font-size: 2.3rem;
                padding-left: 5%;
            }
            #img-background{
                background-image: url('Asset/images/back-ground-myroom.jpg');
                max-width: 100%;
                height: auto;
            }
        </style>
    </head>
    <body id="img-background">

        <nav class="bg-gray-800 ">
            <div class="mx-auto max-w-7xl px-2 sm:px-6 lg:px-8">
                <div class="relative flex h-16 items-center justify-between">
                    <div class="absolute inset-y-0 left-0 flex items-center sm:hidden">
                        <!-- Mobile menu button-->
                        <button type="button" class="inline-flex items-center justify-center rounded-md p-2 text-gray-400 hover:bg-gray-700 hover:text-white focus:outline-none focus:ring-2 focus:ring-inset focus:ring-white" aria-controls="mobile-menu" aria-expanded="false">
                            <span class="sr-only">Open main menu</span>
                            <!--
                              Icon when menu is closed.
                  
                              Menu open: "hidden", Menu closed: "block"
                            -->
                            <svg class="block h-6 w-6" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" aria-hidden="true">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M3.75 6.75h16.5M3.75 12h16.5m-16.5 5.25h16.5" />
                            </svg>
                            <!--
                              Icon when menu is open.
                  
                              Menu open: "block", Menu closed: "hidden"
                            -->
                            <svg class="hidden h-6 w-6" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" aria-hidden="true">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12" />
                            </svg>
                        </button>
                    </div>
                    <div class="flex flex-1 items-center justify-center sm:items-stretch sm:justify-start">
                        <div class="flex flex-shrink-0 items-center">
                            <a href="Home.jsp" class=" text-white block rounded-md px-4 py-2 text-base font-medium" id="company-name" aria-current="page">Deluxe</a>
                        </div>
                        <div class="hidden sm:ml-6 sm:block">
                            <div class="flex space-x-4">
                                <!-- Current: "bg-gray-900 text-white", Default: "text-gray-300 hover:bg-gray-700 hover:text-white" -->
                                c
                                <a href="list" class="text-gray-300 hover:bg-gray-700 hover:text-white block rounded-md px-3 py-2 text-base font-medium">Rooms</a>
                                <a href="Restaurant.jsp" class="text-gray-300 hover:bg-gray-700 hover:text-white block rounded-md px-3 py-2 text-base font-medium">Restaurant</a>
                                <a href="About.jsp" class="text-gray-300 hover:bg-gray-700 hover:text-white block rounded-md px-3 py-2 text-base font-medium">About</a>
                                <a href="Blog.jsp" class="text-gray-300 hover:bg-gray-700 hover:text-white block rounded-md px-3 py-2 text-base font-medium">Blog</a>
                                <a href="Contact.jsp" class="text-gray-300 hover:bg-gray-700 hover:text-white block rounded-md px-3 py-2 text-base font-medium">Contact</a>
                            </div>
                        </div>
                    </div>
                    <div class="absolute inset-y-0 right-0 flex items-center pr-2 sm:static sm:inset-auto sm:ml-6 sm:pr-0">
                        <button type="button" class="rounded-full bg-gray-800 p-1 text-gray-400 hover:text-white focus:outline-none focus:ring-2 focus:ring-white focus:ring-offset-2 focus:ring-offset-gray-800">
                            <span class="sr-only">View notifications</span>
                            <svg class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" aria-hidden="true">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M14.857 17.082a23.848 23.848 0 005.454-1.31A8.967 8.967 0 0118 9.75v-.7V9A6 6 0 006 9v.75a8.967 8.967 0 01-2.312 6.022c1.733.64 3.56 1.085 5.455 1.31m5.714 0a24.255 24.255 0 01-5.714 0m5.714 0a3 3 0 11-5.714 0" />
                            </svg>
                        </button>
                        <!-- Profile dropdown -->
                        <div class="relative ml-3">
                            <div>
                                <button type="button" class="flex rounded-full bg-gray-800 text-sm focus:outline-none focus:ring-2 focus:ring-white focus:ring-offset-2 focus:ring-offset-gray-800" id="user-menu-button" aria-expanded="false" aria-haspopup="true">
                                    <span class="sr-only">Open user menu</span>
                                    <img class="h-8 w-8 rounded-full" src="https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80" alt="">
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Mobile menu, show/hide based on menu state. -->
            <div class="sm:hidden" id="mobile-menu">
                <div class="space-y-1 px-2 pb-3 pt-2">
                    <!-- Current: "bg-gray-900 text-white", Default: "text-gray-300 hover:bg-gray-700 hover:text-white" -->
                    <a href="Home.jsp" class="bg-gray-900 text-white block rounded-md px-3 py-2 text-base font-medium" aria-current="page">Home</a>
                    <a href="list" class="text-gray-300 hover:bg-gray-700 hover:text-white block rounded-md px-3 py-2 text-base font-medium">Rooms</a>
                    <a href="Restaurant.jsp" class="text-gray-300 hover:bg-gray-700 hover:text-white block rounded-md px-3 py-2 text-base font-medium">Restaurant</a>
                    <a href="About.jsp" class="text-gray-300 hover:bg-gray-700 hover:text-white block rounded-md px-3 py-2 text-base font-medium">About</a>
                    <a href="Blog.jsp" class="text-gray-300 hover:bg-gray-700 hover:text-white block rounded-md px-3 py-2 text-base font-medium">Blog</a>
                    <a href="Contact.jsp" class="text-gray-300 hover:bg-gray-700 hover:text-white block rounded-md px-3 py-2 text-base font-medium">Contact</a>
                </div>
            </div>
        </nav>

        <div class="container"  ">
            <div class="card mt-4 ">
                <div class="card-header d-block border-0">
                    <div class="form-head d-flex align-items-center">
                        <div class="me-auto">
                            <h2 class="p-title font-w500 mb-0">Rooms are being booked</h2>
                        </div>
                    </div>
                </div>
                <div class="card-body py-0">
                    <div class="table-responsive">
                        <div class="table-responsive">
                            <table class="table card-table  display mb-4 dataTablesCard booking-table table-responsive-lg " id="guestTable-all3">
                                <thead>
                                    <tr>
                                        <th class="bg-none">
                                        </th>
                                        <th>Room Name</th>
                                        <th>Beds</th>
                                        <th>Capacity</th>
                                        <th>View</th>
                                        <th>Room Size</th>
                                        <th>Book Date</th>
                                        <th>Check In</th>
                                        <th>Check Out</th>
                                        <th>Total</th>
                                        <th class="bg-none"></th>
                                    </tr>
                                </thead>
                                <c:forEach items="${list}" var="r">
                                    <tbody>
                                        <tr>
                                            <td>
                                            </td>
                                            <td>
                                                <div class="guest-bx">
                                                    <table>
                                                        <tr>
                                                            <td><img class="me-sm-4 me-2" src="${r.roomImg}" alt=""></td>
                                                        </tr>
                                                        <tr>
                                                            <td><h4 class="mb-0 mt-1 fs-18 font-w500 text-nowrap"><a class="text-black" href="detail?rid=${r.roomId}&status=1">${r.roomName}</a></h4></td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </td>
                                            <td>
                                                <div>
                                                    <span class="fs-15 font-w500 text-nowrap">${r.roomBed} Bed</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div>
                                                    <span class="fs-15 font-w500 text-nowrap">${r.roomMax} Persons</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div>
                                                    <span class="fs-15 font-w500 text-nowrap">${r.roomView} View</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div>
                                                    <span class="fs-15 font-w500 text-nowrap">${r.roomSize} m2</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div>
                                                    <span class="fs-15 font-w500 text-nowrap">${r.bookDate}</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div>
                                                    <span class="fs-15 font-w500 text-nowrap">${r.inDate}</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div>
                                                    <span class="fs-15 font-w500 text-nowrap">${r.outDate}</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div>
                                                    <span class="fs-14 font-w500 text-nowrap">${r.total} $</span>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </c:forEach>
                            </table>
                            <div class="d-flex align-items-center justify-content-between flex-wrap mt-4 mb-5">
                                <div class="mb-sm-0 mb-3">
                                    <h5 class="mb-0"></h5>
                                </div>
                                <nav>
                                    <ul class="pagination pagination-gutter pagination-primary style-1">
                                        <li class="page-item page-indicator job-search-page">
                                            <a class="page-link" href="javascript:void(0)">Prev</a>
                                        </li>
                                        <li class="page-item active"><a class="page-link" href="javascript:void(0)">1</a>
                                        </li>
                                        <li class="page-item"><a class="page-link" href="javascript:void(0)">2</a></li>
                                        <li class="page-item"><a class="page-link" href="javascript:void(0)">3</a></li>
                                        <li class="page-item"><a class="page-link" href="javascript:void(0)">4</a></li>
                                        <li class="page-item page-indicator job-search-page">
                                            <a class="page-link" href="javascript:void(0)">Next</a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
