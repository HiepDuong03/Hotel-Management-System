<%-- 
    Document   : MyRoom
    Created on : May 30, 2023, 10:57:42 AM
    Author     : ASUS
--%>

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
                background-image: url('Asset/images/back-ground-myroom.jpg');max-width: 100%;height: auto;
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

                            <!--
                              Dropdown menu, show/hide based on menu state.
                  
                              Entering: "transition ease-out duration-100"
                                From: "transform opacity-0 scale-95"
                                To: "transform opacity-100 scale-100"
                              Leaving: "transition ease-in duration-75"
                                From: "transform opacity-100 scale-100"
                                To: "transform opacity-0 scale-95"
                            -->
                          
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
                            <h2 class="p-title font-w500 mb-0">Purchase History</h2>
                        </div>
                        <div class="input-group search-area1">
                            <input type="text" class="form-control" placeholder="Search here">
                            <span class="input-group-text"><a href="javascript:void(0)"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M9.65925 19.3102C11.8044 19.3102 13.8882 18.5945 15.5806 17.2764L21.9653 23.6611C22.4423 24.1218 23.2023 24.1086 23.663 23.6316C24.1123 23.1663 24.1123 22.4287 23.663 21.9635L17.2782 15.5787C20.5491 11.3682 19.7874 5.3033 15.5769 2.0324C11.3663 -1.23851 5.30149 -0.476829 2.03058 3.73371C-1.24033 7.94425 -0.478646 14.0091 3.73189 17.2801C5.42702 18.5969 7.51269 19.3113 9.65925 19.3102ZM4.52915 4.52727C7.36245 1.69391 11.9561 1.69386 14.7895 4.52717C17.6229 7.36047 17.6229 11.9542 14.7896 14.7875C11.9563 17.6209 7.36261 17.6209 4.52925 14.7876C4.5292 14.7876 4.5292 14.7876 4.52915 14.7875C1.69584 11.9749 1.67915 7.39791 4.49181 4.56461C4.50424 4.55213 4.51667 4.5397 4.52915 4.52727Z" fill="#717579"/>
                                    </svg>
                                </a></span>
                        </div>
                        <select class="form-control default-select style-1 me-0 me-sm-3 border w-auto">
                            <option>Sort by Newest</option>
                            <option>Oldest</option>
                            <option>Newest</option>
                        </select>
                    </div>
                </div>
                <div class="card-body py-0">
                    <div class="table-responsive">
                        <div class="table-responsive">
                            <table class="table card-table  display mb-4 dataTablesCard booking-table table-responsive-lg " id="guestTable-all3">
                                <thead>
                                    <tr>
                                        <th class="bg-none">
                                            <div class="form-check style-1">
                                                <input class="form-check-input" type="checkbox" value="" id="checkAll">
                                            </div>
                                        </th>
                                        <th>Room Name</th>
                                        <th>Bed Type</th>
                                        <th>Room Floor</th>
                                        <th>Room Facility</th>
                                        <th>Book Date</th>
                                        <th class="bg-none"></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <div class="form-check  style-1">
                                                <input class="form-check-input" type="checkbox" value="">
                                            </div>
                                        </td>
                                        <td>
                                            <div class="guest-bx">
                                                <img class="me-sm-4 me-2" src="Admin/images/guest-img/pic-1.jpg" alt="">
                                                <div>
                                                    <span class="text-primary fs-16 font-w400 text-nowrap">#0005</span>
                                                    <h4 class="mb-0 mt-1 fs-18 font-w500 text-nowrap"><a class="text-black" href="javascript:void(0);">Queen A-0001</a></h4>
                                                </div>
                                            </div>
                                        </td>
                                        <td>
                                            <div>
                                                <span class="fs-15 font-w500 text-nowrap">Single Bed</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div>
                                                <span class="fs-15 font-w500 text-nowrap">Floor G-05</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div>

                                                <span class="fs-15 font-w500 text-nowrap">AC, Shower, Double Bed, Towel, Bathup,<br>Coffee Set, LED TV, Wifi</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div>
                                                <h5 class="fs-15 font-w500 text-nowrap">Oct 29th, 2020</h5>
                                                <span class="fs-14 font-w500 text-nowrap">08:29 AM</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="dropdown dropstart">
                                                <a href="javascript:void(0);" class="btn-link" data-bs-toggle="dropdown" aria-expanded="false">
                                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M11 12C11 12.5523 11.4477 13 12 13C12.5523 13 13 12.5523 13 12C13 11.4477 12.5523 11 12 11C11.4477 11 11 11.4477 11 12Z" stroke="#262626" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                                    <path d="M18 12C18 12.5523 18.4477 13 19 13C19.5523 13 20 12.5523 20 12C20 11.4477 19.5523 11 19 11C18.4477 11 18 11.4477 18 12Z" stroke="#262626" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                                    <path d="M4 12C4 12.5523 4.44772 13 5 13C5.55228 13 6 12.5523 6 12C6 11.4477 5.55228 11 5 11C4.44772 11 4 11.4477 4 12Z" stroke="#262626" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                                    </svg>
                                                </a>
                                                <div class="dropdown-menu">
                                                    <a class="dropdown-item" href="javascript:void(0);">Edit</a>
                                                    <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-check style-1">
                                                <input class="form-check-input" type="checkbox" value="">
                                            </div>
                                        </td>
                                        <td>
                                            <div class="guest-bx">
                                                <div id="carouselExampleControls" class="carousel slide me-sm-4 me-2" data-bs-ride="carousel">
                                                    <div class="carousel-inner">
                                                        <div class="carousel-item active">
                                                            <img src="Admin/images/guest-img/pic-2.jpg" class="d-block" alt="...">
                                                        </div>
                                                        <div class="carousel-item">
                                                            <img src="Admin/images/guest-img/pic-3.jpg" class="d-block" alt="...">
                                                        </div>
                                                        <div class="carousel-item">
                                                            <img src="Admin/images/guest-img/pic-1.jpg" class="d-block" alt="...">
                                                        </div>
                                                    </div>
                                                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                                                        <i class="fas fa-chevron-left text-black"></i>
                                                    </button>
                                                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                                                        <i class="fas fa-chevron-right text-black"></i>
                                                    </button>
                                                </div>
                                                <div>
                                                    <span class="text-primary fs-16 font-w400 text-nowrap">#0002</span>
                                                    <h4 class="mb-0 mt-1 fs-18 font-w500 text-nowrap"><a class="text-black" href="javascript:void(0);">Deluxe B-0004</a></h4>
                                                </div>
                                            </div> 
                                        </td>
                                        <td>
                                            <div>
                                                <span class="fs-15 font-w500 text-nowrap">Double Bed</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div>
                                                <span class="fs-15 font-w500 text-nowrap">Floor G-05</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div>
                                                <span class="fs-15 font-w500 text-nowrap">AC, Shower, Double Bed, Towel, Bathup,<br>Coffee Set, LED TV, Wifi</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div>
                                                <h5 class="fs-15 font-w500 text-nowrap">Oct 29th, 2020</h5>
                                                <span class="fs-14 font-w500 text-nowrap">08:29 AM</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="dropdown dropstart">
                                                <a href="javascript:void(0);" class="btn-link" data-bs-toggle="dropdown" aria-expanded="false">
                                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M11 12C11 12.5523 11.4477 13 12 13C12.5523 13 13 12.5523 13 12C13 11.4477 12.5523 11 12 11C11.4477 11 11 11.4477 11 12Z" stroke="#262626" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                                    <path d="M18 12C18 12.5523 18.4477 13 19 13C19.5523 13 20 12.5523 20 12C20 11.4477 19.5523 11 19 11C18.4477 11 18 11.4477 18 12Z" stroke="#262626" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                                    <path d="M4 12C4 12.5523 4.44772 13 5 13C5.55228 13 6 12.5523 6 12C6 11.4477 5.55228 11 5 11C4.44772 11 4 11.4477 4 12Z" stroke="#262626" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                                    </svg>
                                                </a>
                                                <div class="dropdown-menu">
                                                    <a class="dropdown-item" href="javascript:void(0);">Edit</a>
                                                    <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-check style-1">
                                                <input class="form-check-input" type="checkbox" value="">
                                            </div>
                                        </td>
                                        <td>
                                            <div class="guest-bx">
                                                <img class="me-sm-4 me-2" src="Admin/images/guest-img/pic-2.jpg" alt="">
                                                <div>
                                                    <span class="text-primary fs-16 font-w400 text-nowrap">#0001</span>
                                                    <h4 class="mb-0 mt-1 fs-18 font-w500 text-nowrap"><a class="text-black" href="javascript:void(0);">Queen A-0001</a></h4>
                                                </div>
                                            </div>
                                        </td>
                                        <td>
                                            <div>
                                                <span class="fs-15 font-w500 text-nowrap">Double Bed</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div>
                                                <span class="fs-15 font-w500 text-nowrap">Floor G-05</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div>
                                                <span class="fs-15 font-w500 text-nowrap">AC, Shower, Double Bed, Towel, Bathup,<br>Coffee Set, LED TV, Wifi</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div>
                                                <h5 class="fs-15 font-w500 text-nowrap">Oct 29th, 2020</h5>
                                                <span class="fs-14 font-w500 text-nowrap">08:29 AM</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="dropdown dropstart">
                                                <a href="javascript:void(0);" class="btn-link" data-bs-toggle="dropdown" aria-expanded="false">
                                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M11 12C11 12.5523 11.4477 13 12 13C12.5523 13 13 12.5523 13 12C13 11.4477 12.5523 11 12 11C11.4477 11 11 11.4477 11 12Z" stroke="#262626" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                                    <path d="M18 12C18 12.5523 18.4477 13 19 13C19.5523 13 20 12.5523 20 12C20 11.4477 19.5523 11 19 11C18.4477 11 18 11.4477 18 12Z" stroke="#262626" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                                    <path d="M4 12C4 12.5523 4.44772 13 5 13C5.55228 13 6 12.5523 6 12C6 11.4477 5.55228 11 5 11C4.44772 11 4 11.4477 4 12Z" stroke="#262626" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                                    </svg>
                                                </a>
                                                <div class="dropdown-menu">
                                                    <a class="dropdown-item" href="javascript:void(0);">Edit</a>
                                                    <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                             <div class="d-flex align-items-center justify-content-between flex-wrap mt-4 mb-5">
                                        <div class="mb-sm-0 mb-3">
                                            <h5 class="mb-0">Showing 5 of 102 Data</h5>
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
