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
        <link rel="shortcut icon" type="image/png" href="Admin/images/favicon.png" />
        <link href="Admin/vendor/jquery-nice-select/css/nice-select.css" rel="stylesheet">
        <link rel="stylesheet" href="Admin/vendor/dotted-map/css/contrib/jquery.smallipop-0.3.0.min.css" type="text/css" media="all" />
        <!-- Style css -->
        <link href="Admin/css/style.css" rel="stylesheet">
        <link href="Admin/vendor/datatables/css/jquery.dataTables.min.css" rel="stylesheet">
        <link href="Admin/vendor/datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet">


    </head>
    <c:set var="page" value="${param.page}"/>
    <c:set var="pagesize" value="5"/>
    <c:if test="${page == null}">
        <c:set var="page" value="1"/>
    </c:if>
    <body>

        <!--*******************
            Preloader start
        ********************-->
        <div id="preloader">
            <div class="lds-ripple">
                <div></div>
                <div></div>
            </div>
        </div>
        <!--*******************
            Preloader end
        ********************-->

        <!--**********************************
            Main wrapper start
        ***********************************-->
        <div id="main-wrapper">

            <!--**********************************
                Nav header start
            ***********************************-->
            <div class="nav-header">
                <a href="index.html" class="brand-logo">
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
                <div class="nav-control">
                    <div class="hamburger">
                        <span class="line"></span><span class="line"></span><span class="line"></span>
                    </div>
                </div>
            </div>
            <!--**********************************
                Nav header end
            ***********************************-->

            <!--**********************************
        Chat box start
    ***********************************-->
            <div class="chatbox">
                <div class="chatbox-close"></div>
                <div class="custom-tab-1">
                    <ul class="nav nav-tabs">
                        <li class="nav-item">
                            <a class="nav-link" data-bs-toggle="tab" href="#notes">Notes</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-bs-toggle="tab" href="#alerts">Alerts</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" data-bs-toggle="tab" href="#chat">Chat</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane fade active show" id="chat" role="tabpanel">
                            <div class="card mb-sm-3 mb-md-0 contacts_card dz-chat-user-box">
                                <div class="card-header chat-list-header text-center">
                                    <a href="javascript:void(0);"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect fill="#000000" x="4" y="11" width="16" height="2" rx="1"/><rect fill="#000000" opacity="0.3" transform="translate(12.000000, 12.000000) rotate(-270.000000) translate(-12.000000, -12.000000) " x="4" y="11" width="16" height="2" rx="1"/></g></svg></a>
                                    <div>
                                        <h6 class="mb-1">Chat List</h6>
                                        <p class="mb-0">Show All</p>
                                    </div>
                                    <a href="javascript:void(0);"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg></a>
                                </div>
                                <div class="card-body contacts_body p-0 dz-scroll  " id="DZ_W_Contacts_Body">
                                    <ul class="contacts">
                                        <li class="name-first-letter">A</li>
                                        <li class="active dz-chat-user">
                                            <div class="d-flex bd-highlight">
                                                <div class="img_cont">
                                                    <img src="Admin/images/avatar/1.jpg" class="rounded-circle user_img" alt=""/>
                                                    <span class="online_icon"></span>
                                                </div>
                                                <div class="user_info">
                                                    <span>Archie Parker</span>
                                                    <p>Kalid is online</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="dz-chat-user">
                                            <div class="d-flex bd-highlight">
                                                <div class="img_cont">
                                                    <img src="Admin/images/avatar/2.jpg" class="rounded-circle user_img" alt=""/>
                                                    <span class="online_icon offline"></span>
                                                </div>
                                                <div class="user_info">
                                                    <span>Alfie Mason</span>
                                                    <p>Taherah left 7 mins ago</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="dz-chat-user">
                                            <div class="d-flex bd-highlight">
                                                <div class="img_cont">
                                                    <img src="Admin/images/avatar/3.jpg" class="rounded-circle user_img" alt=""/>
                                                    <span class="online_icon"></span>
                                                </div>
                                                <div class="user_info">
                                                    <span>AharlieKane</span>
                                                    <p>Sami is online</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="dz-chat-user">
                                            <div class="d-flex bd-highlight">
                                                <div class="img_cont">
                                                    <img src="Admin/images/avatar/4.jpg" class="rounded-circle user_img" alt=""/>
                                                    <span class="online_icon offline"></span>
                                                </div>
                                                <div class="user_info">
                                                    <span>Athan Jacoby</span>
                                                    <p>Nargis left 30 mins ago</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="name-first-letter">B</li>
                                        <li class="dz-chat-user">
                                            <div class="d-flex bd-highlight">
                                                <div class="img_cont">
                                                    <img src="Admin/images/avatar/5.jpg" class="rounded-circle user_img" alt=""/>
                                                    <span class="online_icon offline"></span>
                                                </div>
                                                <div class="user_info">
                                                    <span>Bashid Samim</span>
                                                    <p>Rashid left 50 mins ago</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="dz-chat-user">
                                            <div class="d-flex bd-highlight">
                                                <div class="img_cont">
                                                    <img src="Admin/images/avatar/1.jpg" class="rounded-circle user_img" alt=""/>
                                                    <span class="online_icon"></span>
                                                </div>
                                                <div class="user_info">
                                                    <span>Breddie Ronan</span>
                                                    <p>Kalid is online</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="dz-chat-user">
                                            <div class="d-flex bd-highlight">
                                                <div class="img_cont">
                                                    <img src="Admin/images/avatar/2.jpg" class="rounded-circle user_img" alt=""/>
                                                    <span class="online_icon offline"></span>
                                                </div>
                                                <div class="user_info">
                                                    <span>Ceorge Carson</span>
                                                    <p>Taherah left 7 mins ago</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="name-first-letter">D</li>
                                        <li class="dz-chat-user">
                                            <div class="d-flex bd-highlight">
                                                <div class="img_cont">
                                                    <img src="Admin/images/avatar/3.jpg" class="rounded-circle user_img" alt=""/>
                                                    <span class="online_icon"></span>
                                                </div>
                                                <div class="user_info">
                                                    <span>Darry Parker</span>
                                                    <p>Sami is online</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="dz-chat-user">
                                            <div class="d-flex bd-highlight">
                                                <div class="img_cont">
                                                    <img src="Admin/images/avatar/4.jpg" class="rounded-circle user_img" alt=""/>
                                                    <span class="online_icon offline"></span>
                                                </div>
                                                <div class="user_info">
                                                    <span>Denry Hunter</span>
                                                    <p>Nargis left 30 mins ago</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="name-first-letter">J</li>
                                        <li class="dz-chat-user">
                                            <div class="d-flex bd-highlight">
                                                <div class="img_cont">
                                                    <img src="Admin/images/avatar/5.jpg" class="rounded-circle user_img" alt=""/>
                                                    <span class="online_icon offline"></span>
                                                </div>
                                                <div class="user_info">
                                                    <span>Jack Ronan</span>
                                                    <p>Rashid left 50 mins ago</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="dz-chat-user">
                                            <div class="d-flex bd-highlight">
                                                <div class="img_cont">
                                                    <img src="Admin/images/avatar/1.jpg" class="rounded-circle user_img" alt=""/>
                                                    <span class="online_icon"></span>
                                                </div>
                                                <div class="user_info">
                                                    <span>Jacob Tucker</span>
                                                    <p>Kalid is online</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="dz-chat-user">
                                            <div class="d-flex bd-highlight">
                                                <div class="img_cont">
                                                    <img src="Admin/images/avatar/2.jpg" class="rounded-circle user_img" alt=""/>
                                                    <span class="online_icon offline"></span>
                                                </div>
                                                <div class="user_info">
                                                    <span>James Logan</span>
                                                    <p>Taherah left 7 mins ago</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="dz-chat-user">
                                            <div class="d-flex bd-highlight">
                                                <div class="img_cont">
                                                    <img src="Admin/images/avatar/3.jpg" class="rounded-circle user_img" alt=""/>
                                                    <span class="online_icon"></span>
                                                </div>
                                                <div class="user_info">
                                                    <span>Joshua Weston</span>
                                                    <p>Sami is online</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="name-first-letter">O</li>
                                        <li class="dz-chat-user">
                                            <div class="d-flex bd-highlight">
                                                <div class="img_cont">
                                                    <img src="Admin/images/avatar/4.jpg" class="rounded-circle user_img" alt=""/>
                                                    <span class="online_icon offline"></span>
                                                </div>
                                                <div class="user_info">
                                                    <span>Oliver Acker</span>
                                                    <p>Nargis left 30 mins ago</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="dz-chat-user">
                                            <div class="d-flex bd-highlight">
                                                <div class="img_cont">
                                                    <img src="Admin/images/avatar/5.jpg" class="rounded-circle user_img" alt=""/>
                                                    <span class="online_icon offline"></span>
                                                </div>
                                                <div class="user_info">
                                                    <span>Oscar Weston</span>
                                                    <p>Rashid left 50 mins ago</p>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="card chat dz-chat-history-box d-none">
                                <div class="card-header chat-list-header text-center">
                                    <a href="javascript:void(0);" class="dz-chat-history-back">
                                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><polygon points="0 0 24 0 24 24 0 24"/><rect fill="#000000" opacity="0.3" transform="translate(15.000000, 12.000000) scale(-1, 1) rotate(-90.000000) translate(-15.000000, -12.000000) " x="14" y="7" width="2" height="10" rx="1"/><path d="M3.7071045,15.7071045 C3.3165802,16.0976288 2.68341522,16.0976288 2.29289093,15.7071045 C1.90236664,15.3165802 1.90236664,14.6834152 2.29289093,14.2928909 L8.29289093,8.29289093 C8.67146987,7.914312 9.28105631,7.90106637 9.67572234,8.26284357 L15.6757223,13.7628436 C16.0828413,14.136036 16.1103443,14.7686034 15.7371519,15.1757223 C15.3639594,15.5828413 14.7313921,15.6103443 14.3242731,15.2371519 L9.03007346,10.3841355 L3.7071045,15.7071045 Z" fill="#000000" fill-rule="nonzero" transform="translate(9.000001, 11.999997) scale(-1, -1) rotate(90.000000) translate(-9.000001, -11.999997) "/></g></svg>
                                    </a>
                                    <div>
                                        <h6 class="mb-1">Chat with Khelesh</h6>
                                        <p class="mb-0 text-success">Online</p>
                                    </div>							
                                    <div class="dropdown">
                                        <a href="javascript:void(0);" data-bs-toggle="dropdown" aria-expanded="false"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg></a>
                                        <ul class="dropdown-menu dropdown-menu-end">
                                            <li class="dropdown-item"><i class="fa fa-user-circle text-primary me-2"></i> View profile</li>
                                            <li class="dropdown-item"><i class="fa fa-users text-primary me-2"></i> Add to  friends</li>
                                            <li class="dropdown-item"><i class="fa fa-plus text-primary me-2"></i> Add to group</li>
                                            <li class="dropdown-item"><i class="fa fa-ban text-primary me-2"></i> Block</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="card-body msg_card_body dz-scroll" id="DZ_W_Contacts_Body3">
                                    <div class="d-flex justify-content-start mb-4">
                                        <div class="img_cont_msg">
                                            <img src="Admin/images/avatar/1.jpg" class="rounded-circle user_img_msg" alt=""/>
                                        </div>
                                        <div class="msg_cotainer">
                                            Hi, how are you samim?
                                            <span class="msg_time">8:40 AM, Today</span>
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-end mb-4">
                                        <div class="msg_cotainer_send">
                                            Hi Khalid i am good tnx how about you?
                                            <span class="msg_time_send">8:55 AM, Today</span>
                                        </div>
                                        <div class="img_cont_msg">
                                            <img src="Admin/images/avatar/2.jpg" class="rounded-circle user_img_msg" alt=""/>
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-start mb-4">
                                        <div class="img_cont_msg">
                                            <img src="Admin/images/avatar/1.jpg" class="rounded-circle user_img_msg" alt=""/>
                                        </div>
                                        <div class="msg_cotainer">
                                            I am good too, thank you for your chat template
                                            <span class="msg_time">9:00 AM, Today</span>
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-end mb-4">
                                        <div class="msg_cotainer_send">
                                            You are welcome
                                            <span class="msg_time_send">9:05 AM, Today</span>
                                        </div>
                                        <div class="img_cont_msg">
                                            <img src="Admin/images/avatar/2.jpg" class="rounded-circle user_img_msg" alt=""/>
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-start mb-4">
                                        <div class="img_cont_msg">
                                            <img src="Admin/images/avatar/1.jpg" class="rounded-circle user_img_msg" alt=""/>
                                        </div>
                                        <div class="msg_cotainer">
                                            I am looking for your next templates
                                            <span class="msg_time">9:07 AM, Today</span>
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-end mb-4">
                                        <div class="msg_cotainer_send">
                                            Ok, thank you have a good day
                                            <span class="msg_time_send">9:10 AM, Today</span>
                                        </div>
                                        <div class="img_cont_msg">
                                            <img src="Admin/images/avatar/2.jpg" class="rounded-circle user_img_msg" alt=""/>
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-start mb-4">
                                        <div class="img_cont_msg">
                                            <img src="Admin/images/avatar/1.jpg" class="rounded-circle user_img_msg" alt=""/>
                                        </div>
                                        <div class="msg_cotainer">
                                            Bye, see you
                                            <span class="msg_time">9:12 AM, Today</span>
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-start mb-4">
                                        <div class="img_cont_msg">
                                            <img src="Admin/images/avatar/1.jpg" class="rounded-circle user_img_msg" alt=""/>
                                        </div>
                                        <div class="msg_cotainer">
                                            Hi, how are you samim?
                                            <span class="msg_time">8:40 AM, Today</span>
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-end mb-4">
                                        <div class="msg_cotainer_send">
                                            Hi Khalid i am good tnx how about you?
                                            <span class="msg_time_send">8:55 AM, Today</span>
                                        </div>
                                        <div class="img_cont_msg">
                                            <img src="Admin/images/avatar/2.jpg" class="rounded-circle user_img_msg" alt=""/>
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-start mb-4">
                                        <div class="img_cont_msg">
                                            <img src="Admin/images/avatar/1.jpg" class="rounded-circle user_img_msg" alt=""/>
                                        </div>
                                        <div class="msg_cotainer">
                                            I am good too, thank you for your chat template
                                            <span class="msg_time">9:00 AM, Today</span>
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-end mb-4">
                                        <div class="msg_cotainer_send">
                                            You are welcome
                                            <span class="msg_time_send">9:05 AM, Today</span>
                                        </div>
                                        <div class="img_cont_msg">
                                            <img src="Admin/images/avatar/2.jpg" class="rounded-circle user_img_msg" alt=""/>
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-start mb-4">
                                        <div class="img_cont_msg">
                                            <img src="Admin/images/avatar/1.jpg" class="rounded-circle user_img_msg" alt=""/>
                                        </div>
                                        <div class="msg_cotainer">
                                            I am looking for your next templates
                                            <span class="msg_time">9:07 AM, Today</span>
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-end mb-4">
                                        <div class="msg_cotainer_send">
                                            Ok, thank you have a good day
                                            <span class="msg_time_send">9:10 AM, Today</span>
                                        </div>
                                        <div class="img_cont_msg">
                                            <img src="Admin/images/avatar/2.jpg" class="rounded-circle user_img_msg" alt=""/>
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-start mb-4">
                                        <div class="img_cont_msg">
                                            <img src="Admin/images/avatar/1.jpg" class="rounded-circle user_img_msg" alt=""/>
                                        </div>
                                        <div class="msg_cotainer">
                                            Bye, see you
                                            <span class="msg_time">9:12 AM, Today</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer type_msg">
                                    <div class="input-group">
                                        <textarea class="form-control" placeholder="Type your message..."></textarea>
                                        <div class="input-group-append">
                                            <button type="button" class="btn btn-primary"><i class="fa fa-location-arrow"></i></button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="alerts" role="tabpanel">
                            <div class="card mb-sm-3 mb-md-0 contacts_card">
                                <div class="card-header chat-list-header text-center">
                                    <a href="javascript:void(0);"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><circle fill="#000000" cx="5" cy="12" r="2"/><circle fill="#000000" cx="12" cy="12" r="2"/><circle fill="#000000" cx="19" cy="12" r="2"/></g></svg></a>
                                    <div>
                                        <h6 class="mb-1">Notications</h6>
                                        <p class="mb-0">Show All</p>
                                    </div>
                                    <a href="javascript:void(0);"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><path d="M14.2928932,16.7071068 C13.9023689,16.3165825 13.9023689,15.6834175 14.2928932,15.2928932 C14.6834175,14.9023689 15.3165825,14.9023689 15.7071068,15.2928932 L19.7071068,19.2928932 C20.0976311,19.6834175 20.0976311,20.3165825 19.7071068,20.7071068 C19.3165825,21.0976311 18.6834175,21.0976311 18.2928932,20.7071068 L14.2928932,16.7071068 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"/><path d="M11,16 C13.7614237,16 16,13.7614237 16,11 C16,8.23857625 13.7614237,6 11,6 C8.23857625,6 6,8.23857625 6,11 C6,13.7614237 8.23857625,16 11,16 Z M11,18 C7.13400675,18 4,14.8659932 4,11 C4,7.13400675 7.13400675,4 11,4 C14.8659932,4 18,7.13400675 18,11 C18,14.8659932 14.8659932,18 11,18 Z" fill="#000000" fill-rule="nonzero"/></g></svg></a>
                                </div>
                                <div class="card-body contacts_body p-0 dz-scroll" id="DZ_W_Contacts_Body1">
                                    <ul class="contacts">
                                        <li class="name-first-letter">SEVER STATUS</li>
                                        <li class="active">
                                            <div class="d-flex bd-highlight">
                                                <div class="img_cont primary">KK</div>
                                                <div class="user_info">
                                                    <span>David Nester Birthday</span>
                                                    <p class="text-primary">Today</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="name-first-letter">SOCIAL</li>
                                        <li>
                                            <div class="d-flex bd-highlight">
                                                <div class="img_cont success">RU</div>
                                                <div class="user_info">
                                                    <span>Perfection Simplified</span>
                                                    <p>Jame Smith commented on your status</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="name-first-letter">SEVER STATUS</li>
                                        <li>
                                            <div class="d-flex bd-highlight">
                                                <div class="img_cont primary">AU</div>
                                                <div class="user_info">
                                                    <span>AharlieKane</span>
                                                    <p>Sami is online</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="d-flex bd-highlight">
                                                <div class="img_cont info">MO</div>
                                                <div class="user_info">
                                                    <span>Athan Jacoby</span>
                                                    <p>Nargis left 30 mins ago</p>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="card-footer"></div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="notes">
                            <div class="card mb-sm-3 mb-md-0 note_card">
                                <div class="card-header chat-list-header text-center">
                                    <a href="javascript:void(0);"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect fill="#000000" x="4" y="11" width="16" height="2" rx="1"/><rect fill="#000000" opacity="0.3" transform="translate(12.000000, 12.000000) rotate(-270.000000) translate(-12.000000, -12.000000) " x="4" y="11" width="16" height="2" rx="1"/></g></svg></a>
                                    <div>
                                        <h6 class="mb-1">Notes</h6>
                                        <p class="mb-0">Add New Nots</p>
                                    </div>
                                    <a href="javascript:void(0);"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="18px" height="18px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"/><path d="M14.2928932,16.7071068 C13.9023689,16.3165825 13.9023689,15.6834175 14.2928932,15.2928932 C14.6834175,14.9023689 15.3165825,14.9023689 15.7071068,15.2928932 L19.7071068,19.2928932 C20.0976311,19.6834175 20.0976311,20.3165825 19.7071068,20.7071068 C19.3165825,21.0976311 18.6834175,21.0976311 18.2928932,20.7071068 L14.2928932,16.7071068 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"/><path d="M11,16 C13.7614237,16 16,13.7614237 16,11 C16,8.23857625 13.7614237,6 11,6 C8.23857625,6 6,8.23857625 6,11 C6,13.7614237 8.23857625,16 11,16 Z M11,18 C7.13400675,18 4,14.8659932 4,11 C4,7.13400675 7.13400675,4 11,4 C14.8659932,4 18,7.13400675 18,11 C18,14.8659932 14.8659932,18 11,18 Z" fill="#000000" fill-rule="nonzero"/></g></svg></a>
                                </div>
                                <div class="card-body contacts_body p-0 dz-scroll" id="DZ_W_Contacts_Body2">
                                    <ul class="contacts">
                                        <li class="active">
                                            <div class="d-flex bd-highlight">
                                                <div class="user_info">
                                                    <span>New order placed..</span>
                                                    <p>10 Aug 2020</p>
                                                </div>
                                                <div class="ms-auto">
                                                    <a href="javascript:void(0);" class="btn btn-primary btn-xs sharp me-1"><i class="fas fa-pencil-alt"></i></a>
                                                    <a href="javascript:void(0);" class="btn btn-danger btn-xs sharp"><i class="fa fa-trash"></i></a>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="d-flex bd-highlight">
                                                <div class="user_info">
                                                    <span>Youtube, a video-sharing website..</span>
                                                    <p>10 Aug 2020</p>
                                                </div>
                                                <div class="ms-auto">
                                                    <a href="javascript:void(0);" class="btn btn-primary btn-xs sharp me-1"><i class="fas fa-pencil-alt"></i></a>
                                                    <a href="javascript:void(0);" class="btn btn-danger btn-xs sharp"><i class="fa fa-trash"></i></a>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="d-flex bd-highlight">
                                                <div class="user_info">
                                                    <span>john just buy your product..</span>
                                                    <p>10 Aug 2020</p>
                                                </div>
                                                <div class="ms-auto">
                                                    <a href="javascript:void(0);" class="btn btn-primary btn-xs sharp me-1"><i class="fas fa-pencil-alt"></i></a>
                                                    <a href="javascript:void(0);" class="btn btn-danger btn-xs sharp"><i class="fa fa-trash"></i></a>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="d-flex bd-highlight">
                                                <div class="user_info">
                                                    <span>Athan Jacoby</span>
                                                    <p>10 Aug 2020</p>
                                                </div>
                                                <div class="ms-auto">
                                                    <a href="javascript:void(0);" class="btn btn-primary btn-xs sharp me-1"><i class="fas fa-pencil-alt"></i></a>
                                                    <a href="javascript:void(0);" class="btn btn-danger btn-xs sharp"><i class="fa fa-trash"></i></a>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--**********************************
        Chat box End
    ***********************************-->

            <!--**********************************
        Header start
    ***********************************-->
            <jsp:include page="_HeaderLayoutAd.jsp"></jsp:include>
                <!--**********************************
                    Header end ti-comment-alt
                ***********************************-->

                <!--**********************************
                    Sidebar start
                ***********************************-->
            <jsp:include page="_MenuLayoutAd.jsp"></jsp:include>
                <!--**********************************
                    Sidebar end
                ***********************************-->

                <!--**********************************
            Content body start
        ***********************************-->
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
                                        <button class="nav-link" id="soldout-tab" data-bs-toggle="tab" data-bs-target="#soldout" type="button" role="tab" aria-controls="soldout" aria-selected="false">Soldout</button>
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
                                        <button class="nav-link" id="boxed-soldout-tab" data-bs-toggle="tab" data-bs-target="#boxed-soldout" type="button" role="tab" aria-controls="boxed-soldout" aria-selected="false">Soldout</button>
                                    </li>
                                </ul>
                            </div>
                            <div class="form-head d-inline-block d-sm-flex align-items-center mt-2 mt-lg-0">
                                <select class="form-control default-select style-1 border w-auto">
                                    <option>Sort by Newest</option>
                                    <option>Oldest</option>
                                    <option>Newest</option>
                                </select>
                                <ul class="grid-tabs nav nav-tabs border-0" id="nav-tab" role="tablist">
                                    <li class="nav-item">
                                        <button class="nav-link" id="list-tab" data-bs-toggle="tab" data-bs-target="#list" type="button" role="tab" aria-controls="list" aria-selected="false">
                                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M21.7908 3.01252H8.23302C7.01521 3.01252 6.02441 4.00331 6.02441 5.22263C6.02441 6.44044 7.01521 7.43123 8.23302 7.43123H21.7908C23.0086 7.43123 23.9994 6.44044 23.9994 5.22263C23.9994 4.00327 23.0086 3.01252 21.7908 3.01252Z" fill="#C1C1C1"/>
                                            <path d="M2.20941 3.01252C0.991172 3.01252 0 4.00364 0 5.22188C0 6.44011 0.991172 7.43123 2.20941 7.43123C3.42764 7.43123 4.41877 6.44011 4.41877 5.22188C4.41877 4.00364 3.42764 3.01252 2.20941 3.01252Z" fill="#C1C1C1"/>
                                            <path d="M2.20941 9.79064C0.991172 9.79064 0 10.7818 0 12C0 13.2182 0.991172 14.2094 2.20941 14.2094C3.42764 14.2094 4.41877 13.2182 4.41877 12C4.41877 10.7818 3.42764 9.79064 2.20941 9.79064Z" fill="#C1C1C1"/>
                                            <path d="M2.20941 16.5688C0.991172 16.5688 0 17.5599 0 18.7781C0 19.9964 0.991172 20.9875 2.20941 20.9875C3.42764 20.9875 4.41877 19.9964 4.41877 18.7781C4.41877 17.5599 3.42764 16.5688 2.20941 16.5688Z" fill="#C1C1C1"/>
                                            <path d="M21.7908 9.79064H8.23302C7.01521 9.79064 6.02441 10.7814 6.02441 12.0007C6.02441 13.2186 7.01521 14.2094 8.23302 14.2094H21.7908C23.0086 14.2094 23.9994 13.2186 23.9994 12.0007C23.9994 10.7814 23.0086 9.79064 21.7908 9.79064Z" fill="#C1C1C1"/>
                                            <path d="M21.7908 16.5688H8.23302C7.01521 16.5688 6.02441 17.5596 6.02441 18.7789C6.02441 19.9967 7.01521 20.9875 8.23302 20.9875H21.7908C23.0086 20.9875 23.9994 19.9967 23.9994 18.7789C23.9994 17.5596 23.0086 16.5688 21.7908 16.5688Z" fill="#C1C1C1"/>
                                            </svg>
                                        </button>
                                    </li>
                                    <li class="nav-item">
                                        <button class="nav-link active" id="boxed-tab" data-bs-toggle="tab" data-bs-target="#boxed" type="button" role="tab" aria-controls="boxed" aria-selected="false">
                                            <svg  width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M8 1H4C2.34315 1 1 2.34315 1 4V8C1 9.65685 2.34315 11 4 11H8C9.65685 11 11 9.65685 11 8V4C11 2.34315 9.65685 1 8 1Z" fill="#F66F4D"/>
                                            <path d="M20 1H16C14.3431 1 13 2.34315 13 4V8C13 9.65685 14.3431 11 16 11H20C21.6569 11 23 9.65685 23 8V4C23 2.34315 21.6569 1 20 1Z" fill="#F66F4D"/>
                                            <path d="M8 13H4C2.34315 13 1 14.3431 1 16V20C1 21.6569 2.34315 23 4 23H8C9.65685 23 11 21.6569 11 20V16C11 14.3431 9.65685 13 8 13Z" fill="#F66F4D"/>
                                            <path d="M20 13H16C14.3431 13 13 14.3431 13 16V20C13 21.6569 14.3431 23 16 23H20C21.6569 23 23 21.6569 23 20V16C23 14.3431 21.6569 13 20 13Z" fill="#F66F4D"/>
                                            </svg>
                                        </button>
                                    </li>
                                </ul>
                                <a href="javascript:void(0);" class="btn btn-primary ms-sm-3 ms-0 mt-2 mt-sm-0">Add New Room</a>
                            </div>
                        </div>
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade" id="list" aria-labelledby="list-tab" >
                                <div class="tab-content" id="ListViewTabLinkContent">
                                    <div class="tab-pane fade active show" id="all-status" aria-labelledby="boxed-all-status-tab" >
                                        <div class="table-responsive card">
                                            <div class="table-responsive">
                                                <table class="table border-0 display mb-4 dataTablesCard booking-table table-responsive-lg " id="guestTable-all6">
                                                    <thead>
                                                        <tr>
                                                            <th class="bg-none">
                                                                <div class="form-check style-3">
                                                                    <input class="form-check-input" type="checkbox" value="" id="checkAll">
                                                                </div>
                                                            </th>
                                                            <th>Room Name</th>
                                                            <th>Bed Type</th>
                                                            <th>Room Max</th>
                                                            <th>Status</th>
                                                            <th>Book Date</th>
                                                            <th class="bg-none"></th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                          <c:forEach items="${list}" var="r" begin="${(page-1) * pagesize}" end="${page * pagesize -1}">
                                                        <tr>
                                                   
                                                    <td>
                                                        <div class="form-check  style-3">
                                                            <input class="form-check-input" type="checkbox" value="">
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="guest-bx">
                                                            <img class="me-4" src="${r.roomImg}" alt="">
                                                            <div>

                                                                <h4 class="mb-0 mt-1 fs-18 font-w500 text-nowrap"><a class="text-black" href="javascript:void(0);">${r.roomName}</a></h4>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div>
                                                            <span class="fs-15 font-w500 text-nowrap">${r.roomBed}</span>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div>
                                                            <span class="fs-15 font-w500 text-nowrap">${r.roomMax} Persons</span>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div>
                                                            <span class="btn btn-success btn-sm">AVAILABLE</span>

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
</c:forEach>

                                                </tbody>
                                                
                                            </table>
                                                    <c:if test="${page > 1}">
                                                    <a href='roomAd?page=<fmt:formatNumber value="1" type="number"/>'>  <<  </a>
                                                    <a href='roomAd?page=<fmt:formatNumber value="${page - 1}" type="number"/>'>  <  </a>
                                                </c:if>
                                                <c:if test="${page == 1}"> <c:out value="<< <"/> </c:if>
                                                    ${page}
                                                <c:if test="${page < (list.size() div pagesize)}">
                                                    <a href='roomAd?page=<fmt:formatNumber value="${page + 1}" type="number"/>'>  >  </a>
                                                    <a href='roomAd?page=<fmt:formatNumber value="${Math.floor(list.size() / pagesize + 0.5)}" type="number"/>'>  >>  </a>
                                                </c:if>
                                                <c:if test="${page == (list.size() div pagesize)}"> <c:out value="> >>"/> </c:if>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="available" aria-labelledby="available-tab" >
                                    <div class="table-responsive card">
                                        <div class="table-responsive">
                                            <table class="table border-0 display mb-4 dataTablesCard booking-table table-responsive-lg " id="guestTable-all4">
                                                <thead>
                                                    <tr>
                                                        <th class="bg-none">
                                                            <div class="form-check style-3">
                                                                <input class="form-check-input" type="checkbox" value="" id="checkAll-1">
                                                            </div>
                                                        </th>
                                                        <th>Room Name</th>
                                                        <th>Bed Type</th>
                                                        <th>Room Floor</th>
                                                        <th>Status</th>
                                                        <th>Book Date</th>
                                                        <th class="bg-none"></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                     <c:forEach items="${list}" var="r" begin="${(page-1) * pagesize}" end="${page * pagesize -1}">
                                                    <tr>
                                                        <td>
                                                            <div class="form-check  style-3">
                                                                <input class="form-check-input" type="checkbox" value="">
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="guest-bx">
                                                                <img class="me-4" src="Admin/images/event-card-img/pic-1.jpg" alt="">
                                                                <div>
                                                                   
                                                                    <h4 class="mb-0 mt-1 fs-18 font-w500 text-nowrap"><a class="text-black" href="javascript:void(0);">${r.roomName}</a></h4>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div>
                                                                <span class="fs-15 font-w500 text-nowrap"> ${r.roomBed}</span>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div>
                                                                <span class="fs-15 font-w500 text-nowrap">${r.roomMax} Persons</span>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div>
                                                                <span class="btn btn-success btn-sm">AVAILABLE</span>

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
                                                            <div class="form-check  style-3">
                                                                <input class="form-check-input" type="checkbox" value="">
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="guest-bx">
                                                                <img class="me-4" src="Admin/images/event-card-img/pic-2.jpg" alt="">
                                                                <div>
                                                                    <span class="text-primary fs-16 font-w400 text-nowrap">#R-001235</span>
                                                                    <h4 class="mb-0 mt-1 fs-18 font-w500 text-nowrap"><a class="text-black" href="javascript:void(0);">Neoma Path</a></h4>
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
                                                                <span class="fs-15 font-w500 text-nowrap">Floor G-06</span>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div>
                                                                <span class="btn btn-primary btn-sm">BOOKED</span>

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
                                                        </c:forEach>
                                                    </tr>

                                                    
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                        
                                <div class="tab-pane fade" id="soldout" aria-labelledby="soldout-tab" >
                                    <div class="table-responsive card">
                                        <div class="table-responsive">
                                            <table class="table border-0 display mb-4 dataTablesCard booking-table table-responsive-lg " id="guestTable-all5">
                                                <thead>
                                                    <tr>
                                                        <th class="bg-none">
                                                            <div class="form-check style-3">
                                                                <input class="form-check-input" type="checkbox" value="" id="checkAll-2">
                                                            </div>
                                                        </th>
                                                        <th>Room Name</th>
                                                        <th>Bed Type</th>
                                                        <th>Room Floor</th>
                                                        <th>Status</th>
                                                        <th>Book Date</th>
                                                        <th class="bg-none"></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <div class="form-check  style-3">
                                                                <input class="form-check-input" type="checkbox" value="">
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="guest-bx">
                                                                <img class="me-4" src="Admin/images/event-card-img/pic-1.jpg" alt="">
                                                                <div>
                                                                    <span class="text-primary fs-16 font-w400 text-nowrap">#R-001235</span>
                                                                    <h4 class="mb-0 mt-1 fs-18 font-w500 text-nowrap"><a class="text-black" href="javascript:void(0);">404 Brrom Str, Fl2</a></h4>
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
                                                                <span class="btn btn-success btn-sm">AVAILABLE</span>

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
                                                            <div class="form-check  style-3">
                                                                <input class="form-check-input" type="checkbox" value="">
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="guest-bx">
                                                                <img class="me-4" src="Admin/images/event-card-img/pic-2.jpg" alt="">
                                                                <div>
                                                                    <span class="text-primary fs-16 font-w400 text-nowrap">#R-001235</span>
                                                                    <h4 class="mb-0 mt-1 fs-18 font-w500 text-nowrap"><a class="text-black" href="javascript:void(0);">Neoma Path</a></h4>
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
                                                                <span class="fs-15 font-w500 text-nowrap">Floor G-06</span>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div>
                                                                <span class="btn btn-primary btn-sm">BOOKED</span>

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
                                                            <div class="form-check style-3">
                                                                <input class="form-check-input" type="checkbox" value="">
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="guest-bx">
                                                                <img class="me-4" src="Admin/images/event-card-img/pic-3.jpg" alt="">
                                                                <div>
                                                                    <span class="text-primary fs-16 font-w400 text-nowrap">#R-001235</span>
                                                                    <h4 class="mb-0 mt-1 fs-18 font-w500 text-nowrap"><a class="text-black" href="javascript:void(0);">Godfrey Common</a></h4>
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
                                                                <span class="btn btn-success btn-sm">AVAILABLE</span>
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
                                        </div>
                                    </div>
                                </div>	
                            </div>
                        </div>
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
                                                            <a class="dropdown-item" href="javascript:void(0);">Edit</a>
                                                            <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                                                        </div>
                                                    </div>
                                                    <img src="Admin/images/roomgrid-img/pic-1.jpg" alt="image">
                                                    <div class="content">
                                                        <span class="badge badge-success">AVAILABLE</span>
                                                        <h3 class="font-w500 text-white pt-3 pb-2 m-0 text-nowrap"><a href="javascript:void(0);">404 Brrom Str, Fl2</a></h3>
                                                        <span class="font-w400 text-white">Type 234</span>
                                                    </div>
                                                </div>
                                                <div class="review-area">
                                                    <div class="star-rate">
                                                        <h4 class="mb-0 font-w500">3.4</h4>
                                                        <ul>
                                                            <li><i class="fa-solid fa-star"></i></li>
                                                            <li><i class="fa-solid fa-star"></i></li>
                                                            <li><i class="fa-solid fa-star"></i></li>
                                                        </ul>
                                                    </div>
                                                    <p class="mb-0 font-w400">245 Reviews</p>
                                                </div>
                                                <ul class="feature-list">
                                                    <li>Floor <span>G-05</span></li>
                                                    <li>Bed Type <span>Double Bed</span></li>
                                                </ul>
                                            </div>
                                        </div>
                                           </c:forEach>
                                       
                                       
                          
                                
                                     
                                    </div>
                                    <div class="d-flex align-items-center justify-content-between flex-wrap mt-4">
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
                                <div class="tab-pane fade" id="boxed-available" aria-labelledby="boxed-available-tab" >
                                    <div class="row">
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
                                                            <a class="dropdown-item" href="javascript:void(0);">Edit</a>
                                                            <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                                                        </div>
                                                    </div>
                                                    <img src="Admin/images/roomgrid-img/pic-15.jpg" alt="image">
                                                    <div class="content">
                                                        <span class="badge badge-success">AVAILABLE</span>
                                                        <h3 class="font-w500 text-white pt-3 pb-2 m-0"><a href="javascript:void(0);">404 Brrom Str, Fl2</a></h3>
                                                        <span class="font-w400 text-white">Type 234</span>
                                                    </div>
                                                </div>
                                                <div class="review-area">
                                                    <div class="star-rate">
                                                        <h4 class="mb-0 font-w500">3.4</h4>
                                                        <ul>
                                                            <li><i class="fa-solid fa-star"></i></li>
                                                            <li><i class="fa-solid fa-star"></i></li>
                                                            <li><i class="fa-solid fa-star"></i></li>
                                                        </ul>
                                                    </div>
                                                    <p class="mb-0 font-w400">245 Reviews</p>
                                                </div>
                                                <ul class="feature-list">
                                                    <li>Floor <span>G-05</span></li>
                                                    <li>Bed Type <span>Double Bed</span></li>
                                                </ul>
                                            </div>
                                        </div>
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
                                                            <a class="dropdown-item" href="javascript:void(0);">Edit</a>
                                                            <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                                                        </div>
                                                    </div>
                                                    <img src="Admin/images/roomgrid-img/pic-1.jpg" alt="image">
                                                    <div class="content">
                                                        <span class="badge badge-success">AVAILABLE</span>
                                                        <h3 class="font-w500 text-white pt-3 pb-2 m-0"><a href="javascript:void(0);">404 Brrom Str, Fl2</a></h3>
                                                        <span class="font-w400 text-white">Type 234</span>
                                                    </div>
                                                </div>
                                                <div class="review-area">
                                                    <div class="star-rate">
                                                        <h4 class="mb-0 font-w500">3.4</h4>
                                                        <ul>
                                                            <li><i class="fa-solid fa-star"></i></li>
                                                            <li><i class="fa-solid fa-star"></i></li>
                                                            <li><i class="fa-solid fa-star"></i></li>
                                                        </ul>
                                                    </div>
                                                    <p class="mb-0 font-w400">245 Reviews</p>
                                                </div>
                                                <ul class="feature-list">
                                                    <li>Floor <span>G-05</span></li>
                                                    <li>Bed Type <span>Double Bed</span></li>
                                                </ul>
                                            </div>
                                        </div>
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
                                                            <a class="dropdown-item" href="javascript:void(0);">Edit</a>
                                                            <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                                                        </div>
                                                    </div>
                                                    <img src="Admin/images/roomgrid-img/pic-2.jpg" alt="image">
                                                    <div class="content">
                                                        <span class="badge badge-success">AVAILABLE</span>
                                                        <h3 class="font-w500 text-white pt-3 pb-2 m-0"><a href="javascript:void(0);">404 Brrom Str, Fl2</a></h3>
                                                        <span class="font-w400 text-white">Type 234</span>
                                                    </div>
                                                </div>
                                                <div class="review-area">
                                                    <div class="star-rate">
                                                        <h4 class="mb-0 font-w500">3.4</h4>
                                                        <ul>
                                                            <li><i class="fa-solid fa-star"></i></li>
                                                            <li><i class="fa-solid fa-star"></i></li>
                                                            <li><i class="fa-solid fa-star"></i></li>
                                                        </ul>
                                                    </div>
                                                    <p class="mb-0 font-w400">245 Reviews</p>
                                                </div>
                                                <ul class="feature-list">
                                                    <li>Floor <span>G-05</span></li>
                                                    <li>Bed Type <span>Double Bed</span></li>
                                                </ul>
                                            </div>
                                        </div>
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
                                                            <a class="dropdown-item" href="javascript:void(0);">Edit</a>
                                                            <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                                                        </div>
                                                    </div>
                                                    <img src="Admin/images/roomgrid-img/pic-3.jpg" alt="image">
                                                    <div class="content">
                                                        <span class="badge badge-success">AVAILABLE</span>
                                                        <h3 class="font-w500 text-white pt-3 pb-2 m-0"><a href="javascript:void(0);">404 Brrom Str, Fl2</a></h3>
                                                        <span class="font-w400 text-white">Type 234</span>
                                                    </div>
                                                </div>
                                                <div class="review-area">
                                                    <div class="star-rate">
                                                        <h4 class="mb-0 font-w500">3.4</h4>
                                                        <ul>
                                                            <li><i class="fa-solid fa-star"></i></li>
                                                            <li><i class="fa-solid fa-star"></i></li>
                                                            <li><i class="fa-solid fa-star"></i></li>
                                                        </ul>
                                                    </div>
                                                    <p class="mb-0 font-w400">245 Reviews</p>
                                                </div>
                                                <ul class="feature-list">
                                                    <li>Floor <span>G-05</span></li>
                                                    <li>Bed Type <span>Double Bed</span></li>
                                                </ul>
                                            </div>
                                        </div>
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
                                                            <a class="dropdown-item" href="javascript:void(0);">Edit</a>
                                                            <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                                                        </div>
                                                    </div>
                                                    <img src="Admin/images/roomgrid-img/pic-4.jpg" alt="image">
                                                    <div class="content">
                                                        <span class="badge badge-success">AVAILABLE</span>
                                                        <h3 class="font-w500 text-white pt-3 pb-2 m-0"><a href="javascript:void(0);">404 Brrom Str, Fl2</a></h3>
                                                        <span class="font-w400 text-white">Type 234</span>
                                                    </div>
                                                </div>
                                                <div class="review-area">
                                                    <div class="star-rate">
                                                        <h4 class="mb-0 font-w500">3.4</h4>
                                                        <ul>
                                                            <li><i class="fa-solid fa-star"></i></li>
                                                            <li><i class="fa-solid fa-star"></i></li>
                                                            <li><i class="fa-solid fa-star"></i></li>
                                                        </ul>
                                                    </div>
                                                    <p class="mb-0 font-w400">245 Reviews</p>
                                                </div>
                                                <ul class="feature-list">
                                                    <li>Floor <span>G-05</span></li>
                                                    <li>Bed Type <span>Double Bed</span></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="boxed-soldout" aria-labelledby="boxed-soldout-tab" >
                                    <div class="row">
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
                                                            <a class="dropdown-item" href="javascript:void(0);">Edit</a>
                                                            <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                                                        </div>
                                                    </div>
                                                    <img src="Admin/images/roomgrid-img/pic-5.jpg" alt="image">
                                                    <div class="content">
                                                        <span class="badge badge-primary">BOOKED</span>
                                                        <h3 class="font-w500 text-white pt-3 pb-2 m-0"><a href="javascript:void(0);">404 Brrom Str, Fl2</a></h3>
                                                        <span class="font-w400 text-white">Type 234</span>
                                                    </div>
                                                </div>
                                                <div class="review-area">
                                                    <div class="star-rate">
                                                        <h4 class="mb-0 font-w500">3.4</h4>
                                                        <ul>
                                                            <li><i class="fa-solid fa-star"></i></li>
                                                            <li><i class="fa-solid fa-star"></i></li>
                                                            <li><i class="fa-solid fa-star"></i></li>
                                                        </ul>
                                                    </div>
                                                    <p class="mb-0 font-w400">245 Reviews</p>
                                                </div>
                                                <ul class="feature-list">
                                                    <li>Floor <span>G-05</span></li>
                                                    <li>Bed Type <span>Double Bed</span></li>
                                                </ul>
                                            </div>
                                        </div>
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
                                                            <a class="dropdown-item" href="javascript:void(0);">Edit</a>
                                                            <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                                                        </div>
                                                    </div>
                                                    <img src="Admin/images/roomgrid-img/pic-6.jpg" alt="image">
                                                    <div class="content">
                                                        <span class="badge badge-primary">BOOKED</span>
                                                        <h3 class="font-w500 text-white pt-3 pb-2 m-0"><a href="javascript:void(0);">404 Brrom Str, Fl2</a></h3>
                                                        <span class="font-w400 text-white">Type 234</span>
                                                    </div>
                                                </div>
                                                <div class="review-area">
                                                    <div class="star-rate">
                                                        <h4 class="mb-0 font-w500">3.4</h4>
                                                        <ul>
                                                            <li><i class="fa-solid fa-star"></i></li>
                                                            <li><i class="fa-solid fa-star"></i></li>
                                                            <li><i class="fa-solid fa-star"></i></li>
                                                        </ul>
                                                    </div>
                                                    <p class="mb-0 font-w400">245 Reviews</p>
                                                </div>
                                                <ul class="feature-list">
                                                    <li>Floor <span>G-05</span></li>
                                                    <li>Bed Type <span>Double Bed</span></li>
                                                </ul>
                                            </div>
                                        </div>
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
                                                            <a class="dropdown-item" href="javascript:void(0);">Edit</a>
                                                            <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                                                        </div>
                                                    </div>
                                                    <img src="Admin/images/roomgrid-img/pic-7.jpg" alt="image">
                                                    <div class="content">
                                                        <span class="badge badge-primary">BOOKED</span>
                                                        <h3 class="font-w500 text-white pt-3 pb-2 m-0"><a href="javascript:void(0);">404 Brrom Str, Fl2</a></h3>
                                                        <span class="font-w400 text-white">Type 234</span>
                                                    </div>
                                                </div>
                                                <div class="review-area">
                                                    <div class="star-rate">
                                                        <h4 class="mb-0 font-w500">3.4</h4>
                                                        <ul>
                                                            <li><i class="fa-solid fa-star"></i></li>
                                                            <li><i class="fa-solid fa-star"></i></li>
                                                            <li><i class="fa-solid fa-star"></i></li>
                                                        </ul>
                                                    </div>
                                                    <p class="mb-0 font-w400">245 Reviews</p>
                                                </div>
                                                <ul class="feature-list">
                                                    <li>Floor <span>G-05</span></li>
                                                    <li>Bed Type <span>Double Bed</span></li>
                                                </ul>
                                            </div>
                                        </div>
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
                                                            <a class="dropdown-item" href="javascript:void(0);">Edit</a>
                                                            <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                                                        </div>
                                                    </div>
                                                    <img src="Admin/images/roomgrid-img/pic-8.jpg" alt="image">
                                                    <div class="content">
                                                        <span class="badge badge-primary">BOOKED</span>
                                                        <h3 class="font-w500 text-white pt-3 pb-2 m-0"><a href="javascript:void(0);">404 Brrom Str, Fl2</a></h3>
                                                        <span class="font-w400 text-white">Type 234</span>
                                                    </div>
                                                </div>
                                                <div class="review-area">
                                                    <div class="star-rate">
                                                        <h4 class="mb-0 font-w500">3.4</h4>
                                                        <ul>
                                                            <li><i class="fa-solid fa-star"></i></li>
                                                            <li><i class="fa-solid fa-star"></i></li>
                                                            <li><i class="fa-solid fa-star"></i></li>
                                                        </ul>
                                                    </div>
                                                    <p class="mb-0 font-w400">245 Reviews</p>
                                                </div>
                                                <ul class="feature-list">
                                                    <li>Floor <span>G-05</span></li>
                                                    <li>Bed Type <span>Double Bed</span></li>
                                                </ul>
                                            </div>
                                        </div>
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
                                                            <a class="dropdown-item" href="javascript:void(0);">Edit</a>
                                                            <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                                                        </div>
                                                    </div>
                                                    <img src="Admin/images/roomgrid-img/pic-9.jpg" alt="image">
                                                    <div class="content">
                                                        <span class="badge badge-primary">BOOKED</span>
                                                        <h3 class="font-w500 text-white pt-3 pb-2 m-0"><a href="javascript:void(0);">404 Brrom Str, Fl2</a></h3>
                                                        <span class="font-w400 text-white">Type 234</span>
                                                    </div>
                                                </div>
                                                <div class="review-area">
                                                    <div class="star-rate">
                                                        <h4 class="mb-0 font-w500">3.4</h4>
                                                        <ul>
                                                            <li><i class="fa-solid fa-star"></i></li>
                                                            <li><i class="fa-solid fa-star"></i></li>
                                                            <li><i class="fa-solid fa-star"></i></li>
                                                        </ul>
                                                    </div>
                                                    <p class="mb-0 font-w400">245 Reviews</p>
                                                </div>
                                                <ul class="feature-list">
                                                    <li>Floor <span>G-05</span></li>
                                                    <li>Bed Type <span>Double Bed</span></li>
                                                </ul>
                                            </div>
                                        </div>
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
            <jsp:include page="_FooterLayoutAd.jsp"></jsp:include>
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
        <script src="Admin/vendor/chart.Admin/js/Chart.bundle.min.js"></script>
        <script src="Admin/vendor/jquery-nice-select/Admin/js/jquery.nice-select.min.js"></script>
        <script src="Admin/vendor/bootstrap-select/dist/Admin/js/bootstrap-select.min.js"></script>
        <script src="Admin/vendor/datepicker/Admin/js/bootstrap-datepicker.min.js"></script>
        <script src="Admin/vendor/owl-carousel/owl.carousel.js"></script>

        <!-- Apex Chart -->
        <script src="Admin/vendor/apexchart/apexchart.js"></script>

        <!-- Chart piety plugin files -->
        <script src="Admin/vendor/peity/jquery.peity.min.js"></script>

        <!-- Dashboard 1 -->
        <!--  <script src="./Admin/js/dashboard/dashboard-1.js"></script> 	 -->
        <!-- JS for dotted map -->
        <script src="Admin/vendor/dotted-map/Admin/js/contrib/jquery.smallipop-0.3.0.min.js"></script>
        <script src="Admin/vendor/dotted-map/Admin/js/contrib/suntimes.js"></script>
        <script src="Admin/vendor/dotted-map/Admin/js/contrib/color-0.4.1.js"></script>



        <script src="Admin/js/custom.min.js"></script>
        <script src="Admin/js/deznav-init.js"></script>
        <script src="Admin/js/demo.js"></script>
        <script src="Admin/js/styleSwitcher.js"></script>
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

    <!-- Mirrored from kamr.dexignlab.com/xhtml/room.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 15 May 2023 03:46:22 GMT -->
</html>