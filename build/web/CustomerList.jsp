<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from kamr.dexignlab.com/xhtml/guest-list.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 15 May 2023 03:46:07 GMT -->
    <head>

        <meta charset="utf-8">

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

        <!-- PAGE TITLE HERE -->
        <title>DELUXE HOTEL</title>

        <!-- FAVICONS ICON -->
        <link rel="shortcut icon" type="image/png" href="Admin/images/favicon.png" />
        <link href="Admin/vendor/datatables/css/jquery.dataTables.min.css" rel="stylesheet">
        <link href="Admin/vendor/jquery-nice-select/css/nice-select.css" rel="stylesheet">
        <!-- Style css -->
        <link href="Admin/css/style.css" rel="stylesheet">
        <link href="Admin/vendor/datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet">
        <link href="Admin/vendor/datatables/css/jquery.dataTables.min.css" rel="stylesheet">
    </head>
</head>
<c:set var="page" value="${param.page}"/>
<c:set var="pagesize" value="6"/>
<c:if test="${page == null}">
    <c:set var="page" value="1"/>
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
            <a href="Home.jsp" class="brand-logo">
                <svg class="logo-abbr" width="57" height="57" viewBox="0 0 57 57" fill="none" xmlns="http://www.w3.org/2000/svg">
                <rect width="57" height="57" rx="14" fill="#FFD482"/>
                <path class="logo-k" d="M33.8661 45.3198L34.016 45.5H34.2504H42H43.0867L42.3797 44.6747L29.6972 29.8694L42.0311 15.3234L42.7292 14.5H41.6497H34.2504H34.015L33.8651 14.6814L23.6296 27.0631V15V14.5H23.1296H17H16.5V15V45V45.5H17H23.1296H23.6296V45V33.016L33.8661 45.3198Z" fill="#2D3134" stroke="#2D3134"/>
                <path d="M49.609 37.1129L49.6065 37.1153L45.8935 40.7348L46.7704 45.847L46.7705 45.8478C46.8764 46.468 46.622 47.0949 46.113 47.4658L49.609 37.1129ZM49.609 37.1129C50.0552 36.6749 50.222 36.0196 50.0254 35.4164L49.0746 35.7263L50.0254 35.4164C49.8302 34.8175 49.3123 34.3807 48.6885 34.2897L48.6878 34.2896L43.5562 33.5445L41.2613 28.8938C41.2613 28.8938 41.2612 28.8938 41.2612 28.8938C40.9426 28.248 40.2969 28 39.7756 28C39.2543 28 38.6085 28.248 38.2899 28.8938L35.995 33.5445L30.8633 34.2896L30.8626 34.2897C30.2377 34.3808 29.721 34.8192 29.526 35.4156C29.3292 36.0177 29.4952 36.6758 29.9435 37.1142L29.9447 37.1154L33.6583 40.7342L32.7814 45.8463L32.7813 45.8471M49.609 37.1129L32.7813 45.8471M32.7813 45.8471C32.6755 46.4673 32.9299 47.0942 33.4388 47.4652M32.7813 45.8471L33.4388 47.4652M33.4388 47.4652C33.9498 47.8383 34.6282 47.8867 35.1863 47.5918C35.1868 47.5915 35.1873 47.5913 35.1878 47.591L39.7756 45.1795L44.3657 47.5925L33.4385 47.4649C33.4386 47.465 33.4387 47.4651 33.4388 47.4652ZM45.1374 47.7835C45.4783 47.7835 45.822 47.6782 46.1129 47.4659L44.3668 47.5931C44.6093 47.7208 44.8745 47.7835 45.1374 47.7835Z" fill="url(#paint0_linear_33_278)" stroke="#FFD482" stroke-width="2"/>
                <defs>
                <linearGradient id="paint0_linear_33_278" x1="39.7756" y1="29" x2="39.7756" y2="46.7835" gradientUnits="userSpaceOnUse">
                <stop offset="2" stop-color="#FF9D43"/>
                <stop offset="1" stop-color="#F66F4D"/>
                </linearGradient>
                </defs>
                </svg>
                <svg  class="brand-title" width="110" height="33" viewBox="0 0 110 33" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="Afile:///C:/Users/Admin/AppData/Local/Temp/MicrosoftEdgeDownloads/89b48786-ee02-4ef5-8e2f-b8d6f48a1dea/Logo1.svg"</svg>
            </a>
            <div class="nav-control">
                <div class="hamburger">
                    <span class="line"></span><span class="line"></span><span class="line"></span>
                </div>
            </div>
        </div>
        <jsp:include page="_HeaderLayoutAd.jsp"></jsp:include>
        <jsp:include page="_MenuLayoutAd.jsp"></jsp:include>

            <div class="content-body">
                <!-- row -->
                <div class="container-fluid">
                    <div class=" d-block d-lg-flex align-items-center justify-content-between mb-5">
                        <div></div>
                        <div class="form-head d-inline-block d-sm-flex align-items-center mt-2 mt-lg-0">
                            <a href="Signup.jsp" class="btn btn-primary ms-sm-3 ms-0 mt-2 mt-sm-0">Add New Customer</a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="card">
                                <div class="card-body p-0">
                                    <div class="table-responsive">
                                        <table class="table table-list i-table style-1 mb-4 border-0" id="guestTable-all3">
                                            <thead>
                                                <tr>
                                                    <th>Guest</th>
                                                    <th>User Name</th>
                                                    <th>Password</th>
                                                    <th>Phone Number</th>
                                                    <th>Email</th>
                                                    <th class="bg-none"></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${list}" var="r" begin="${(page-1) * pagesize}" end="${page * pagesize -1}">
                                                <tr>
                                                    <td>
                                                        <div class="media-bx d-flex py-3 ">
                                                            <img class="me-3 rounded-circle" src="${r.image}" alt="images">
                                                            <div>
                                                                <span class="text-primary fs-16 font-w400 text-nowrap">${r.cmnd}</span>
                                                                <h4 class="mb-0 mt-1 fs-15 font-w500 text-nowrap text-nowrap"><a class="text-black" href="page-error-404.html">${r.name}</a></h4>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div>
                                                            <h5 class="fs-15 font-w500 text-nowrap">${r.username}</h5>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div>
                                                            <h5 class="fs-15 font-w500 text-nowrap">${r.password}</h5>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div>
                                                            <h5 class="fs-15 font-w500 text-nowrap">${r.sdt}</h5>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div>
                                                            <h5 class="fs-15 font-w500 text-nowrap">${r.email}</h5>
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
                                                                <a class="dropdown-item" href="EditCustomer.jsp?uid=${r.userId}">Edit</a>
                                                                <a class="dropdown-item" href="deleteuser?uid=${r.userId}">Delete</a>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                    <div class="d-flex align-items-center justify-content-between flex-wrap mt-4">
                                        <div class="mb-sm-0 mb-3">
                                            <h5 class="mb-0">Showing ${pagesize > list.size() ? list.size(): pagesize} of ${list.size()} Data</h5>
                                        </div>
                                        <nav>
                                            <ul class="pagination pagination-gutter pagination-primary style-1">
                                                <c:if test="${page > 1}">
                                                    <li class="page-item page-indicator job-search-page">
                                                        <a class="page-link" href='listcustomer?page=<fmt:formatNumber value="1" type="number"/>'><<</a>
                                                    </li>
                                                    <li class="page-item page-indicator job-search-page">
                                                        <a class="page-link" href='listcustomer?page=<fmt:formatNumber value="${page - 1}" type="number"/>'><</a>
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
                                                    <li class="page-item page-indicator job-search-page"><a class="page-link" href='listcustomer?page=<fmt:formatNumber value="${page + 1}" type="number"/>'>></a>
                                                    </li>
                                                    <li class="page-item page-indicator job-search-page">
                                                        <a class="page-link" href='listcustomer?page=<fmt:formatNumber value="${Math.ceil(list.size() / pagesize)}" type="number"/>'>>></a>
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
                            </div>
                        </div>
                    </div>
                </div>	
            </div>
        </div>
        <div class="footer">

            <div class="copyright">
                <p>Copyright © Designed &amp; Developed by <a href="https://dexignlab.com/" target="_blank">DexignLab</a> 2022</p>
            </div>
        </div>
    </div>
    <script src="Admin/vendor/global/global.min.js"></script>
    <script src="Admin/vendor/jquery-nice-select/Admin/js/jquery.nice-select.min.js"></script>

    <!-- Apex Chart -->
    <!-- Chart piety plugin files -->

    <!-- Date-picker -->
    <script src="Admin/vendor/datepicker/Admin/js/bootstrap-datepicker.min.js"></script>

    <!-- Dashboard 1 -->
    <!-- <script src="./Admin/js/dashboard/dashboard-1.js"></script> -->

    <script src="Admin/js/custom.min.js"></script>
    <script src="Admin/js/deznav-init.js"></script>
    <script src="Admin/js/demo.js"></script>
    <script src="Admin/js/styleSwitcher.js"></script>
    <!-- Datatable -->
    <script src="Admin/vendor/datatables/Admin/js/jquery.dataTables.min.js"></script>
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
        (function ($) {

            var table = $('#example5').DataTable({
                searching: false,
                paging: true,
                select: false,
                //info: false,         
                lengthChange: false

            });
            $('#example tbody').on('click', 'tr', function () {
                var data = table.row(this).data();

            });

        })(jQuery);
    </script>
</body>

<!-- Mirrored from kamr.dexignlab.com/xhtml/guest-list.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 15 May 2023 03:46:13 GMT -->
</html>