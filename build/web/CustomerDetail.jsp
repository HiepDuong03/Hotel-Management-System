<%-- 
    Document   : CustomerDetail
    Created on : May 18, 2023, 11:12:45 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from kamr.dexignlab.com/xhtml/guest-details.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 15 May 2023 03:46:13 GMT -->
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
        <style>
            .dropdown:hover>.dropdown-menu {
                display: block;
            }

            .dropdown>.dropdown-toggle:active {
                /*Without this, clicking will make it sticky*/
                pointer-events: none;
            }
            .image-container {
                width: 150px;
                height: 100px;
                overflow: hidden;
                padding-right: 15%;
            }

            .image {
                width: 100%;
                height: 100%;
                background-size: contain;
                background-position: center;
                background-repeat: no-repeat;

            }
            .quantity-container {
                display: flex;
                align-items: center;
            }

            .quantity {
                display: flex;
                align-items: center;
            }

            .btn-quantity {
                padding: 0.25rem 0.5rem;
                background-color: #f8f9fa;
                border: none;
                outline: none;
                cursor: pointer;
            }

            .input-quantity {
                width: 40px;
                text-align: center;
                border: none;
                outline: none;
            }

            .dropdown-container {
                position: relative;
                display: inline-block;
            }

            #dropdown-icon {
                cursor: pointer;
            }

            #dropdown-content {
                display: none;
                position: absolute;
                background-color: white;
                padding: 10px;
                border-radius: 5px;
                box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
                width: 200px;
                z-index: 1;
            }

            .dropdown-container:hover #dropdown-content {
                display: block;
            }

            .option {
                display: block;
                padding: 10px;
                cursor: pointer;
            }

            .option:hover {
                background-color: lightgray;
            }

        </style>
    </head>
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
                    <div class="row">
                        <div class="col-xl-4">
                            <div class="card h-auto">
                                <div class="card-body profile-bx">
                                    <div class="profile-media">
                                        <div class="d-flex align-items-center align-items-sm-start">
                                            <img src="Admin/images/user.jpg" alt="">
                                            <div class="media-content">
                                                <h3 class="fs-21">Thomas Braun</h3>
                                                <p class="fs-16 mb-0">#G-001234125</p>
                                            </div>
                                        </div>	
                                        <div class="dropdown dropstart">
                                            <a href="javascript:void(0);" class="btn-link" data-bs-toggle="dropdown" aria-expanded="false">
                                                <svg class="prof-icon" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
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
                                    </div>
                                </div>
                            </div>
                            <div class="card h-auto">
                                <div class="card-header border-0 pb-0">
                                    <h4 class="fs-24 font-w500">Marcella Court</h4>
                                    <div class="dropdown dropstart">
                                        <a href="javascript:void(0);" class="btn-link" data-bs-toggle="dropdown" aria-expanded="false">
                                            <svg class="prof-icon" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M11 12C11 12.5523 11.4477 13 12 13C12.5523 13 13 12.5523 13 12C13 11.4477 12.5523 11 12 11C11.4477 11 11 11.4477 11 12Z" stroke="#262626" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                            <path d="M18 12C18 12.5523 18.4477 13 19 13C19.5523 13 20 12.5523 20 12C20 11.4477 19.5523 11 19 11C18.4477 11 18 11.4477 18 12Z" stroke="#262626" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                            <path d="M4 12C4 12.5523 4.44772 13 5 13C5.55228 13 6 12.5523 6 12C6 11.4477 5.55228 11 5 11C4.44772 11 4 11.4477 4 12Z" stroke="#262626" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                            </svg>
                                        </a>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="javascript:void(0);">Edit</a>
                                            <a class="dropdown-item" href="javascript:void(0);">Confirm</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body pt-0">
                                    <div class="d-flex align-items-center justify-content-between mb-4 ">
                                        <p class="m-0">#R-245T345</p>
                                        <div class="dropdown">
                                            <a href="javascript:void(0);" class="btn btn-primary text-black btn-sm dropdown-toggle" id="dropdownButton">AVAILABLE</a>
                                            <ul class="dropdown-menu" aria-labelledby="dropdownButton">
                                                <li><a class="dropdown-item" onclick="changeButtonTextAndFilter('AVAILABLE', '#28A745')" href="#">AVAILABLE</a></li>
                                                <li><a class="dropdown-item" onclick="changeButtonTextAndFilter('CANCEL', 'orange')" href="#">CANCEL</a></li>
                                                <li><a class="dropdown-item" onclick="changeButtonTextAndFilter('WARMING', 'gray')" href="#">WARMING</a></li>
                                                <li><a class="dropdown-item" onclick="changeButtonTextAndFilter('OCCUPITE', 'red')" href="#">OCCUPITE</a></li>
                                                <li><a class="dropdown-item" onclick="changeButtonTextAndFilter('BOOKED', 'yellow')" href="#">BOOKED</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <div class="me-5">
                                            <p class="fs-12">Type</p>
                                            <div class="d-flex">
                                                <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M17.2917 9.37501H2.70833C2.25 9.37501 1.875 9.00001 1.875 8.54168V2.54168C1.875 1.25001 2.91667 0.208344 4.20833 0.208344H15.7917C17.0833 0.208344 18.125 1.25001 18.125 2.54168V8.54168C18.125 9.00001 17.75 9.37501 17.2917 9.37501ZM3.5 7.75001H16.4583V2.54168C16.4583 2.16668 16.1667 1.83334 15.75 1.83334H4.20833C3.83333 1.83334 3.5 2.12501 3.5 2.54168V7.75001Z" fill="#F66F4D"/>
                                                <path d="M18.958 17.375H1.04134C0.583008 17.375 0.208008 17 0.208008 16.5417V8.54168C0.208008 8.08334 0.583008 7.70834 1.04134 7.70834H18.9997C19.458 7.70834 19.833 8.08334 19.833 8.54168V16.5834C19.7913 17 19.4163 17.375 18.958 17.375ZM1.83301 15.75H18.1663V9.37501H1.83301V15.75Z" fill="#F66F4D"/>
                                                <path d="M9.7915 9.37502H5.24984C4.7915 9.37502 4.4165 9.00002 4.4165 8.54169C4.4165 6.45835 5.7915 4.79169 7.49984 4.79169C9.20817 4.79169 10.5832 6.45835 10.5832 8.54169C10.5832 9.00002 10.2498 9.37502 9.7915 9.37502ZM6.20817 7.75002H8.87484C8.6665 7.00002 8.12484 6.45835 7.5415 6.45835C6.95817 6.45835 6.4165 6.95835 6.20817 7.75002Z" fill="#F66F4D"/>
                                                <path d="M14.75 9.37502H10.2083C9.75 9.37502 9.375 9.00002 9.375 8.54169C9.375 6.45835 10.75 4.79169 12.4583 4.79169C14.1667 4.79169 15.5417 6.45835 15.5417 8.54169C15.5417 9.00002 15.1667 9.37502 14.75 9.37502ZM11.1667 7.75002H13.8333C13.625 7.00002 13.0833 6.45835 12.5 6.45835C11.875 6.41669 11.375 6.95835 11.1667 7.75002Z" fill="#F66F4D"/>
                                                <path d="M1.04134 19.7917C0.583008 19.7917 0.208008 19.4167 0.208008 18.9583V16.5417C0.208008 16.0833 0.583008 15.7083 1.04134 15.7083C1.49967 15.7083 1.87467 16.0833 1.87467 16.5417V18.9583C1.83301 19.4167 1.45801 19.7917 1.04134 19.7917Z" fill="#F66F4D"/>
                                                <path d="M18.9583 19.7917C18.5 19.7917 18.125 19.4167 18.125 18.9583V16.5417C18.125 16.0833 18.5 15.7083 18.9583 15.7083C19.4167 15.7083 19.7917 16.0833 19.7917 16.5417V18.9583C19.7917 19.4167 19.4167 19.7917 18.9583 19.7917Z" fill="#F66F4D"/>
                                                </svg>
                                                <h5 class="fs-15 mb-4 ms-3">Double Bed</h5>
                                            </div>
                                        </div>
                                        <div class="ms-3">
                                            <p class="fs-12">Room Capacity</p>
                                            <div class="d-flex">
                                                <svg width="18" height="20" viewBox="0 0 18 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M12.0837 9.76416C12.9036 9.12303 13.5029 8.24201 13.7982 7.24397C14.0935 6.24592 14.07 5.18061 13.7309 4.19658C13.3918 3.21255 12.7541 2.35886 11.9067 1.75455C11.0593 1.15024 10.0445 0.825439 9.00366 0.825439C7.96285 0.825439 6.94798 1.15024 6.10058 1.75455C5.25318 2.35886 4.61548 3.21255 4.27642 4.19658C3.93735 5.18061 3.91382 6.24592 4.2091 7.24397C4.50439 8.24201 5.10377 9.12303 5.92366 9.76416C4.37463 10.3805 3.04588 11.447 2.10888 12.8259C1.17188 14.2048 0.669646 15.8329 0.666992 17.5V18.3333C0.666992 18.5543 0.75479 18.7663 0.91107 18.9226C1.06735 19.0789 1.27931 19.1667 1.50033 19.1667H16.5003C16.7213 19.1667 16.9333 19.0789 17.0896 18.9226C17.2459 18.7663 17.3337 18.5543 17.3337 18.3333V17.5C17.3315 15.8336 16.8303 14.2061 15.8945 12.8273C14.9588 11.4485 13.6314 10.3816 12.0837 9.76416ZM5.66699 5.83333C5.66699 5.17406 5.86249 4.5296 6.22876 3.98143C6.59503 3.43327 7.11563 3.00603 7.72471 2.75374C8.3338 2.50145 9.00402 2.43543 9.65063 2.56405C10.2972 2.69267 10.8912 3.01014 11.3573 3.47631C11.8235 3.94249 12.141 4.53643 12.2696 5.18303C12.3982 5.82964 12.3322 6.49986 12.0799 7.10894C11.8276 7.71803 11.4004 8.23863 10.8522 8.6049C10.3041 8.97117 9.6596 9.16667 9.00033 9.16667C8.11627 9.16667 7.26842 8.81548 6.6433 8.19035C6.01818 7.56523 5.66699 6.71739 5.66699 5.83333ZM2.33366 17.5C2.33366 15.7319 3.03604 14.0362 4.28628 12.786C5.53652 11.5357 7.23222 10.8333 9.00033 10.8333C10.7684 10.8333 12.4641 11.5357 13.7144 12.786C14.9646 14.0362 15.667 15.7319 15.667 17.5H2.33366Z" fill="#F66F4D"/>
                                                </svg>
                                                <h5 class="fs-15 mb-4 ms-3">2-4 Person</h5>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <p class="fs-12">Date Booking</p>
                                        <div class="d-flex">
                                            <svg width="16" height="18" viewBox="0 0 16 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M10.6667 1.8V0.9C10.6667 0.4032 11.0649 0 11.5556 0C12.0462 0 12.4444 0.4032 12.4444 0.9V1.8C14.408 1.8 16 3.4119 16 5.4V14.4C16 16.3881 14.408 18 12.4444 18C9.90222 18 6.09689 18 3.55556 18C1.592 18 0 16.3881 0 14.4V5.4C0 3.4119 1.592 1.8 3.55556 1.8V0.9C3.55556 0.4032 3.95378 0 4.44444 0C4.93511 0 5.33333 0.4032 5.33333 0.9V1.8H10.6667ZM14.2222 9H1.77778V14.4C1.77778 15.3936 2.57333 16.2 3.55556 16.2H12.4444C13.4258 16.2 14.2222 15.3936 14.2222 14.4V9ZM12.4444 3.6V4.5C12.4444 4.9968 12.0462 5.4 11.5556 5.4C11.0649 5.4 10.6667 4.9968 10.6667 4.5V3.6H5.33333V4.5C5.33333 4.9968 4.93511 5.4 4.44444 5.4C3.95378 5.4 3.55556 4.9968 3.55556 4.5V3.6C2.57333 3.6 1.77778 4.4055 1.77778 5.4V7.2H14.2222V5.4C14.2222 4.4055 13.4258 3.6 12.4444 3.6Z" fill="#F66F4D"/>
                                            </svg>
                                            <h5 class="fs-15 mb-4 ms-3">Thursday, February 4 2021 at 2:24 AM</h5>
                                        </div>
                                    </div>
                                    <div class="facilities">
                                        <p class="fs-12">Facilities</p>
                                        <div class="row">
                                            <div class="col-xl-6 col-6">
                                                <ul>
                                                    <li><a href="javascript:void(0);"><svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                            <path d="M10 0C4.50742 0 0 4.50742 0 10C0 15.4926 4.50742 20 10 20C15.4926 20 20 15.4926 20 10C20 4.50742 15.4926 0 10 0ZM8.7898 14.5484L4.4107 10.1694L6.06781 8.51227L8.86648 11.3109L14.485 6.20344L16.062 7.93723L8.7898 14.5484Z" fill="#78D69D"/>
                                                            </svg>
                                                            Room Full AC
                                                        </a></li>
                                                    <li><a href="javascript:void(0);"><svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                            <path d="M10 0C4.50742 0 0 4.50742 0 10C0 15.4926 4.50742 20 10 20C15.4926 20 20 15.4926 20 10C20 4.50742 15.4926 0 10 0ZM8.7898 14.5484L4.4107 10.1694L6.06781 8.51227L8.86648 11.3109L14.485 6.20344L16.062 7.93723L8.7898 14.5484Z" fill="#78D69D"/>
                                                            </svg>
                                                            Shower
                                                        </a></li>
                                                    <li><a href="javascript:void(0);"><svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                            <path d="M10 0C4.50742 0 0 4.50742 0 10C0 15.4926 4.50742 20 10 20C15.4926 20 20 15.4926 20 10C20 4.50742 15.4926 0 10 0ZM8.7898 14.5484L4.4107 10.1694L6.06781 8.51227L8.86648 11.3109L14.485 6.20344L16.062 7.93723L8.7898 14.5484Z" fill="#78D69D"/>
                                                            </svg>
                                                            Bathup
                                                        </a></li>
                                                </ul>
                                            </div>
                                            <div class="col-xl-6 col-6">
                                                <ul>
                                                    <li><a href="javascript:void(0);"><svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                            <path d="M10 0C4.50742 0 0 4.50742 0 10C0 15.4926 4.50742 20 10 20C15.4926 20 20 15.4926 20 10C20 4.50742 15.4926 0 10 0ZM8.7898 14.5484L4.4107 10.1694L6.06781 8.51227L8.86648 11.3109L14.485 6.20344L16.062 7.93723L8.7898 14.5484Z" fill="#78D69D"/>
                                                            </svg>
                                                            Room Full AC
                                                        </a></li>
                                                    <li><a href="javascript:void(0);"><svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                            <path d="M10 0C4.50742 0 0 4.50742 0 10C0 15.4926 4.50742 20 10 20C15.4926 20 20 15.4926 20 10C20 4.50742 15.4926 0 10 0ZM8.7898 14.5484L4.4107 10.1694L6.06781 8.51227L8.86648 11.3109L14.485 6.20344L16.062 7.93723L8.7898 14.5484Z" fill="#78D69D"/>
                                                            </svg>
                                                            Shower
                                                        </a></li>
                                                    <li><a href="javascript:void(0);"><svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                            <path d="M10 0C4.50742 0 0 4.50742 0 10C0 15.4926 4.50742 20 10 20C15.4926 20 20 15.4926 20 10C20 4.50742 15.4926 0 10 0ZM8.7898 14.5484L4.4107 10.1694L6.06781 8.51227L8.86648 11.3109L14.485 6.20344L16.062 7.93723L8.7898 14.5484Z" fill="#78D69D"/>
                                                            </svg>
                                                            Bathup
                                                        </a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer border-0 pt-0">
                                    <div class="facilities-more text-center mb-2">
                                        <a href="javascript:void(0);" class="fs-14 font-w500 text-nowrap">View More<i class=" ms-3 fa-solid fa-chevron-down"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Event-Card-Start -->

                        <div class="col-xl-8">
                            <div class="swiper mySwiper2">
                                <div class="swiper-action">
                                    <a href="javascript:void(0);">
                                        <svg class="me-4" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M2.99217 1.9882C2.84446 1.98733 2.69838 2.01921 2.56445 2.08151C2.43051 2.14381 2.31204 2.23498 2.21755 2.34853C2.12306 2.46207 2.05489 2.59513 2.01795 2.73815C1.98101 2.88118 1.97621 3.03066 2.00389 3.17576V7.00189C1.99147 7.1402 2.008 7.27954 2.05242 7.41112C2.09683 7.5427 2.16816 7.66365 2.26187 7.76614C2.35557 7.86864 2.4696 7.95051 2.59668 8.00651C2.72376 8.06252 2.86111 8.09141 2.99999 8.09141C3.13886 8.09141 3.27621 8.06252 3.40329 8.00651C3.53037 7.95051 3.6444 7.86864 3.7381 7.76614C3.83181 7.66365 3.90314 7.5427 3.94756 7.41112C3.99197 7.27954 4.0085 7.1402 3.99608 7.00189V5.41397L9.28905 10.7069C9.4772 10.8944 9.73205 10.9995 9.99765 10.9993C10.2632 10.999 10.5179 10.8934 10.7057 10.7056C10.8935 10.5178 10.9991 10.2631 10.9994 9.99755C10.9996 9.73195 10.8945 9.47716 10.707 9.289L5.41405 3.99596H7.00194C7.13511 3.99887 7.26751 3.97523 7.39139 3.92629C7.51527 3.87735 7.62813 3.8041 7.72334 3.71095C7.81855 3.6178 7.8942 3.50662 7.94585 3.38384C7.99749 3.26106 8.0241 3.12926 8.0241 2.99606C8.0241 2.86286 7.99749 2.73094 7.94585 2.60816C7.8942 2.48538 7.81855 2.3742 7.72334 2.28105C7.62813 2.1879 7.51527 2.11465 7.39139 2.06571C7.26751 2.01676 7.13511 1.99312 7.00194 1.99604H3.10155C3.06526 1.99152 3.02874 1.98895 2.99217 1.98843L2.99217 1.9882ZM20.9824 1.9882C20.9556 1.98964 20.9289 1.9921 20.9023 1.9957H17.0039C16.8707 1.99278 16.7383 2.01653 16.6144 2.06548C16.4906 2.11442 16.3777 2.18756 16.2825 2.28071C16.1873 2.37385 16.1116 2.48515 16.06 2.60793C16.0083 2.73071 15.9817 2.86251 15.9817 2.99571C15.9817 3.12891 16.0083 3.26083 16.06 3.38361C16.1116 3.50638 16.1873 3.61757 16.2825 3.71072C16.3777 3.80386 16.4906 3.87712 16.6144 3.92606C16.7383 3.975 16.8707 3.99864 17.0039 3.99573H18.5879L13.291 9.28866C13.1096 9.47779 13.0096 9.73045 13.0122 9.99247C13.0149 10.2545 13.1201 10.5051 13.3052 10.6905C13.4904 10.8759 13.7408 10.9815 14.0028 10.9845C14.2648 10.9875 14.5176 10.8878 14.707 10.7067L20 5.41351V7.00142C20 7.2669 20.1054 7.52144 20.2932 7.70916C20.4809 7.89688 20.7355 8.00236 21.001 8.00236C21.2664 8.00236 21.521 7.89688 21.7088 7.70916C21.8965 7.52144 22.0019 7.2669 22.0019 7.00142V3.12051C22.0212 2.97683 22.0091 2.83076 21.9663 2.69225C21.9235 2.55374 21.8511 2.42618 21.7541 2.31842C21.6571 2.21067 21.5379 2.12523 21.4046 2.06813C21.2714 2.01103 21.1273 1.98363 20.9824 1.98774V1.9882ZM9.98241 12.9881C9.72056 12.9944 9.47161 13.1031 9.28905 13.2909L3.99608 18.5897V15.9999C3.99865 15.8576 3.97078 15.7162 3.91433 15.5854C3.85788 15.4547 3.77415 15.3375 3.66875 15.2417C3.56335 15.1459 3.43871 15.0738 3.30316 15.03C3.16762 14.9863 3.0243 14.972 2.8828 14.9882C2.63707 15.0181 2.41117 15.1382 2.24882 15.3251C2.08647 15.512 1.9992 15.7524 2.00389 15.9999V20.7968C1.96537 20.9613 1.96913 21.1329 2.01484 21.2955C2.06055 21.4582 2.14671 21.6065 2.26529 21.7268C2.38386 21.8471 2.53099 21.9355 2.69293 21.9835C2.85487 22.0316 3.02636 22.038 3.19139 22.0019H7.99803C8.1312 22.0048 8.26361 21.981 8.38749 21.9321C8.51137 21.8832 8.62422 21.81 8.71944 21.7169C8.81465 21.6237 8.8903 21.5124 8.94194 21.3897C8.99359 21.2669 9.02019 21.1351 9.02019 21.0019C9.02019 20.8687 8.99359 20.7369 8.94194 20.6141C8.8903 20.4913 8.81465 20.38 8.71944 20.2869C8.62422 20.1937 8.51137 20.1206 8.38749 20.0716C8.26361 20.0227 8.1312 19.9989 7.99803 20.0019H5.41405L10.707 14.7089C10.8528 14.5688 10.9527 14.3878 10.9935 14.1898C11.0344 13.9917 11.0142 13.786 10.9358 13.5997C10.8573 13.4133 10.7242 13.2551 10.554 13.1459C10.3838 13.0368 10.1845 12.9817 9.98241 12.9881ZM13.9922 12.9881C13.7921 12.9866 13.5961 13.0452 13.4297 13.1562C13.2632 13.2672 13.1338 13.4256 13.0583 13.6109C12.9828 13.7962 12.9646 13.9999 13.0061 14.1957C13.0476 14.3914 13.1468 14.5702 13.291 14.7089L18.5879 20.0019H16C15.7386 20.0076 15.4898 20.1154 15.3069 20.3023C15.1241 20.4892 15.0217 20.7404 15.0217 21.0019C15.0217 21.2634 15.1241 21.5144 15.3069 21.7013C15.4898 21.8882 15.7386 21.9962 16 22.0019H20.7305C20.9071 22.0623 21.0971 22.0721 21.279 22.0301C21.4609 21.9882 21.6274 21.8961 21.7597 21.7644C21.892 21.6327 21.9849 21.4666 22.0277 21.2849C22.0705 21.1032 22.0616 20.9131 22.0019 20.7362V15.9999C22.0045 15.8574 21.9766 15.7159 21.9201 15.5849C21.8635 15.454 21.7796 15.3367 21.674 15.2409C21.5683 15.1451 21.4435 15.0729 21.3077 15.0293C21.1719 14.9858 21.0284 14.9717 20.8867 14.9882C20.6396 15.0163 20.4118 15.1356 20.2478 15.3227C20.0839 15.5097 19.9955 15.7512 20 15.9999V18.5897L14.707 13.2909C14.6141 13.1953 14.5029 13.1194 14.3802 13.0674C14.2574 13.0154 14.1255 12.9884 13.9922 12.9881Z" fill="white"/>
                                        </svg>
                                    </a>
                                    <div class="swiper-control-area">
                                        <div class="swiper-button-prev"></div>
                                        <div class="swiper-pagination swiper-pagination-fraction swiper-pagination-horizontal">
                                            <span class="swiper-pagination-current">1</span> / <span class="swiper-pagination-total">9</span>
                                        </div>
                                        <div class="swiper-button-next"></div>
                                    </div>
                                </div>

                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <div class="event-card">
                                            <div class="event-img position-relative">
                                                <img src="Admin/images/event-card-img/pic-1.jpg" alt="">
                                            </div>
                                            <div class="event-content">
                                                <h4 class="font-w500 mb-0">Main Bedroom </h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="event-card">
                                            <div class="event-img position-relative">
                                                <img src="Admin/images/event-card-img/pic-2.jpg" alt="">
                                            </div>
                                            <div class="event-content">
                                                <h4 class="font-w500 mb-0">Main Bedroom </h4>
                                            </div>
                                        </div>                                        
                                    </div>                                            
                                    <div class="swiper-slide">                        
                                        <div class="event-card">                      
                                            <div class="event-img position-relative">
                                                <img src="Admin/images/event-card-img/pic-3.jpg" alt="">
                                            </div>
                                            <div class="event-content">
                                                <h4 class="font-w500 mb-0">Main Bedroom </h4>
                                            </div>
                                        </div>                                        
                                    </div>                                            
                                    <div class="swiper-slide">                        
                                        <div class="event-card">                      
                                            <div class="event-img position-relative">
                                                <img src="Admin/images/event-card-img/pic-4.jpg" alt="">
                                            </div>
                                            <div class="event-content">
                                                <h4 class="font-w500 mb-0">Main Bedroom </h4>
                                            </div>
                                        </div>                                        
                                    </div>                                            
                                    <div class="swiper-slide">                        
                                        <div class="event-card">                      
                                            <div class="event-img position-relative">
                                                <img src="Admin/images/event-card-img/pic-1.jpg" alt="">
                                            </div>
                                            <div class="event-content">
                                                <h4 class="font-w500 mb-0">Main Bedroom </h4>
                                            </div>
                                        </div>                                        
                                    </div>                                            
                                    <div class="swiper-slide">                        
                                        <div class="event-card">                      
                                            <div class="event-img position-relative">
                                                <img src="Admin/images/event-card-img/pic-2.jpg" alt="">
                                            </div>
                                            <div class="event-content">
                                                <h4 class="font-w500 mb-0">Main Bedroom </h4>
                                            </div>
                                        </div>                                        
                                    </div>                                            
                                    <div class="swiper-slide">                        
                                        <div class="event-card">                      
                                            <div class="event-img position-relative">
                                                <img src="Admin/images/event-card-img/pic-3.jpg" alt="">
                                            </div>
                                            <div class="event-content">
                                                <h4 class="font-w500 mb-0">Main Bedroom </h4>
                                            </div>
                                        </div>                                        
                                    </div>                                            
                                    <div class="swiper-slide">                        
                                        <div class="event-card">                      
                                            <div class="event-img position-relative">
                                                <img src="Admin/images/event-card-img/pic-4.jpg" alt="">
                                            </div>
                                            <div class="event-content">
                                                <h4 class="font-w500 mb-0">Main Bedroom </h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper mySwiper gallery-slider">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <div class="swiper-img">
                                            <img src="Admin/images/light-slider/pic-1.jpg" alt="">
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="swiper-img">
                                            <img src="Admin/images/light-slider/pic-2.jpg" alt="">
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="swiper-img">
                                            <img src="Admin/images/light-slider/pic-3.jpg" alt="">
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="swiper-img">
                                            <img src="Admin/images/light-slider/pic-4.jpg" alt="">
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="swiper-img">
                                            <img src="Admin/images/light-slider/pic-1.jpg" alt="">
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="swiper-img">
                                            <img src="Admin/images/light-slider/pic-2.jpg" alt="">
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="swiper-img">
                                            <img src="Admin/images/light-slider/pic-3.jpg" alt="">
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="swiper-img">
                                            <img src="Admin/images/light-slider/pic-4.jpg" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-12">
                            <div class="card mt-4 mt-xl-0">
                                <div class="card-header  d-block border-0">
                                    <div class="me-auto">
                                        <h2 class="p-title font-w500 mb-0"><a href="OrderHistory.jsp">Order Service</a></h2>
                                    </div>
                                    <div class="form-head d-flex align-items-center mt-2">

                                        <div class="me-auto" style="margin-left: 1%;">
                                            <i class="fa fa-cog fa-spin fa-2x" id="dropdown-icon"></i>
                                            <div id="dropdown-content">
                                                <a href="#" class="option">Edit</a>
                                                <a href="#" class="option">Confirm</a>
                                            </div>
                                        </div>
                                        <div class="input-group search-area1">
                                            <input type="text" class="form-control" placeholder="Search here">
                                            <span class="input-group-text"><a href="javascript:void(0)"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M9.65925 19.3102C11.8044 19.3102 13.8882 18.5945 15.5806 17.2764L21.9653 23.6611C22.4423 24.1218 23.2023 24.1086 23.663 23.6316C24.1123 23.1663 24.1123 22.4287 23.663 21.9635L17.2782 15.5787C20.5491 11.3682 19.7874 5.3033 15.5769 2.0324C11.3663 -1.23851 5.30149 -0.476829 2.03058 3.73371C-1.24033 7.94425 -0.478646 14.0091 3.73189 17.2801C5.42702 18.5969 7.51269 19.3113 9.65925 19.3102ZM4.52915 4.52727C7.36245 1.69391 11.9561 1.69386 14.7895 4.52717C17.6229 7.36047 17.6229 11.9542 14.7896 14.7875C11.9563 17.6209 7.36261 17.6209 4.52925 14.7876C4.5292 14.7876 4.5292 14.7876 4.52915 14.7875C1.69584 11.9749 1.67915 7.39791 4.49181 4.56461C4.50424 4.55213 4.51667 4.5397 4.52915 4.52727Z" fill="#717579"/>
                                                    </svg>
                                                </a></span>
                                        </div>

                                        <div  style="    margin-left: 1%;">
                                            <button type="button" class="btn btn-danger text-black"><a href="PaymentHistory.jsp">Payment</a></button>
                                        </div>


                                    </div>
                                </div>
                                <div class="card-body py-0">
                                    <div class="">
                                        <div class="table-responsive" style="box-sizing: border-box">
                                            <table class="table card-table  display mb-4 dataTablesCard booking-table table-responsive-lg " id="guestTable-all3">
                                                <thead>
                                                    <tr>
                                                        <th class="bg-none">
                                                            <div class="form-check style-1">
                                                                <input class="form-check-input" type="checkbox" value="" id="checkAll">
                                                            </div>
                                                        </th>
                                                        <th>Order Name</th>
                                                        <th>Quantity</th>
                                                        <th>Price</th>

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
                                                            <div class="guest-bx" >
                                                                <div class="image-container">
                                                                    <div class="image" style="background-image: url('https://quancathaibinh.vn/uploads/products/2222.png');"></div>
                                                                </div>
                                                                <div>

                                                                    <h4 class="mb-0 mt-1 fs-18 font-w500 text-nowrap"><a class="text-black" href="javascript:void(0);" >Tiger</a></h4>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td><div class="quantity-container">
                                                                <div class="quantity">
                                                                    <button class="btn btn-sm btn-quantity" onclick="decreaseQuantity()">-</button>
                                                                    <input class="input-quantity" type="text" value="1" readonly>
                                                                    <button class="btn btn-sm btn-quantity" onclick="increaseQuantity()">+</button>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div>
                                                                <span class="fs-15 font-w500 text-nowrap"  id="price">0$</span>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <div>
                                                                <h5 class="fs-15 font-w500 text-nowrap">Oct 29th, 2020</h5>
                                                                <span class="fs-14 font-w500 text-nowrap">08:29 AM</span>
                                                            </div>
                                                        </td>
                                                        <td>

                                                        </td>
                                                    </tr>



                                                </tbody>

                                            </table>

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
        <script src="Admin/vendor/swiper/js/swiper-bundle.min.js"></script>
        <script src="Admin/vendor/owl-carousel/owl.carousel.js"></script>

        <!-- Apex Chart -->
        <script src="Admin/vendor/apexchart/apexchart.js"></script>

        <!-- Chart piety plugin files -->
        <script src="Admin/vendor/peity/jquery.peity.min.js"></script>
        <!-- Datatable -->
        <script src="Admin/vendor/datatables/js/jquery.dataTables.min.js"></script>
        <script src="Admin/js/plugins-init/datatables.init.js"></script>



        <script src="Admin/js/custom.min.js"></script>
        <script src="Admin/js/deznav-init.js"></script>
        <script src="Admin/js/demo.js"></script>
        <script src="Admin/js/styleSwitcher.js"></script>

        <script>
                                                                        $(function () {
                                                                            $("#datepicker").datepicker({
                                                                                autoclose: true,
                                                                                todayHighlight: true
                                                                            }).datepicker('update', new Date());
                                                                        });

        </script>
        <script>
            function changeButtonTextAndFilter(selectedItem, color) {
                var dropdownButton = document.getElementById("dropdownButton");
                dropdownButton.innerText = selectedItem;
                dropdownButton.style.backgroundColor = color;
                var dropdownItems = document.getElementsByClassName("dropdown-item");
                for (var i = 0; i < dropdownItems.length; i++) {
                    var item = dropdownItems[i];
                    if (item.innerText === selectedItem) {
                        item.style.display = "none";
                        item.style.backgroundColor = color;
                    } else {
                        item.style.display = "block";
                        item.style.backgroundColor = "";
                    }
                }
            }
        </script>
        <script>
            var swiper = new Swiper(".mySwiper", {
                loop: true,
                spaceBetween: 20,
                slidesPerView: 4,
                watchSlidesProgress: true,
                breakpoints: {
                    360: {
                        slidesPerView: 4,
                        spaceBetween: 5,
                    },
                }
            });
            var swiper2 = new Swiper(".mySwiper2", {
                loop: true,
                spaceBetween: 10,
                navigation: {
                    nextEl: ".swiper-button-next",
                    prevEl: ".swiper-button-prev",
                },
                pagination: {
                    el: ".swiper-pagination",
                    type: "fraction",
                },

                thumbs: {
                    swiper: swiper,
                },
            });


        </script>
        <script>var dropdownIcon = document.getElementById("dropdown-icon");
            var dropdownContent = document.getElementById("dropdown-content");
            var options = document.getElementsByClassName("option");

            dropdownIcon.addEventListener("click", function () {
                if (dropdownContent.style.display === "block") {
                    dropdownContent.style.display = "none";
                } else {
                    dropdownContent.style.display = "block";
                }
            });

            for (var i = 0; i < options.length; i++) {
                options[i].addEventListener("mouseover", function () {
                    this.style.backgroundColor = "lightblue";
                });

                options[i].addEventListener("mouseout", function () {
                    this.style.backgroundColor = "";
                });
            }
        </script>
        <script>
             const decreaseButton = document.querySelector(".btn-quantity:nth-child(1)");
    const increaseButton = document.querySelector(".btn-quantity:nth-child(3)");
    const quantityInput = document.querySelector(".input-quantity");
    const priceElement = document.querySelector("#price");

  
    let price = 0;
    let quantity = 1;

    // Hàm giảm số lượng
    function decreaseQuantity() {
        if (quantity > 1) {
            quantity--;
            updateQuantityAndPrice();
        }
    }

   
    function increaseQuantity() {
        quantity++;
        updateQuantityAndPrice();
    }
    function updateQuantityAndPrice() {
        quantityInput.value = quantity;
        price = calculatePrice(quantity);
        priceElement.textContent = price + "$";
    }

    function calculatePrice(quantity) {
        
        return quantity * 10; 
    }

    
    updateQuantityAndPrice();
        </script>
    </body>

    <!-- Mirrored from kamr.dexignlab.com/xhtml/guest-details.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 15 May 2023 03:46:16 GMT -->
</html>