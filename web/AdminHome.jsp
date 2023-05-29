<%-- 
    Document   : AdminHome
    Created on : May 15, 2023, 12:29:39 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


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
	
	<!-- PAGE TITLE HERE -->
	<title>DELUXE HOTEL</title>
	
	<!-- FAVICONS ICON -->
	<link rel="shortcut icon" type="image/png" href="Admin/images/favicon.png" />
	<link href="Admin/vendor/jquery-nice-select/css/nice-select.css" rel="stylesheet">
	<link rel="stylesheet" href="Admin/vendor/dotted-map/css/contrib/jquery.smallipop-0.3.0.min.css" type="text/css" media="all" />
	<link href="Admin/vendor/owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="Admin/vendor/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet">
	<!-- Style css -->
	<link href="Admin/vendor/datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet">
	<link href="Admin/vendor/swiper/css/swiper-bundle.min.css" rel="stylesheet">
    <link href="Admin/css/style.css" rel="stylesheet">
	
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
									<ul class="dropdown-menu dropdown-menu-start">
										<li class="dropdown-item"><i class="fa fa-user-circle text-primary me-2"></i> View profile</li>
										<li class="dropdown-item"><i class="fa fa-users text-primary me-2"></i> Add to friends</li>
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
									<textarea class="form-control overflow-hidden" placeholder="Type your message..."></textarea>
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
					<div class="col-xl-12">
						<div class="col-xl-12 card h-auto">
							<div class="card-body">
								<div class="row align-items-center">
									<div class="col-xl-3 col-lg-6 col-md-6 col-sm-6">
										<div class="income-data d-flex align-items-center justify-content-xl-start justify-content-between mb-xl-0 mb-3">
											<span class=" income-icon style-1 me-4">
											<svg width="30" height="30" viewBox="0 0 30 30" fill="none" xmlns="http://www.w3.org/2000/svg">
												<path d="M20.4764 0.97345C20.4255 0.974639 20.3747 0.978331 20.3241 0.984696C19.9555 1.02962 19.6167 1.20961 19.3732 1.48989C19.1297 1.77018 18.9988 2.13096 19.0057 2.50219V29.4991C19.0077 29.8041 19.1026 30.1012 19.2778 30.3509C19.453 30.6006 19.7001 30.7909 19.9862 30.8966C20.2723 31.0022 20.5838 31.0183 20.8792 30.9424C21.1746 30.8665 21.4398 30.7023 21.6395 30.4718L30.6425 19.9748C30.7704 19.8249 30.8676 19.6513 30.9284 19.4639C30.9893 19.2765 31.0126 19.079 30.9971 18.8825C30.9816 18.6861 30.9276 18.4946 30.8381 18.319C30.7486 18.1435 30.6254 17.9875 30.4755 17.8595C30.3257 17.7316 30.1521 17.6344 29.9647 17.5735C29.7773 17.5127 29.5797 17.4893 29.3833 17.5048C29.1869 17.5204 28.9954 17.5745 28.8199 17.664C28.6443 17.7535 28.4882 17.8766 28.3602 18.0265L21.994 25.4444V2.50219C21.9976 2.30152 21.9608 2.10206 21.8859 1.91585C21.811 1.72965 21.6995 1.56043 21.5579 1.41809C21.4164 1.27576 21.2478 1.16328 21.062 1.08729C20.8763 1.01131 20.6771 0.973336 20.4764 0.975699L20.4764 0.97345ZM11.453 1.00736C11.2441 1.01319 11.0388 1.0627 10.8501 1.15252C10.6614 1.24234 10.4935 1.37054 10.3573 1.52899L1.3661 12.026C1.22021 12.1722 1.10608 12.3469 1.03084 12.5392C0.955604 12.7315 0.920883 12.9374 0.928852 13.1437C0.936821 13.3501 0.98731 13.5526 1.07716 13.7385C1.167 13.9245 1.29427 14.0897 1.45099 14.2242C1.60771 14.3587 1.79051 14.4595 1.98794 14.52C2.18537 14.5806 2.39318 14.5997 2.59835 14.5763C2.80352 14.5528 3.00163 14.4871 3.18029 14.3835C3.35895 14.2799 3.51429 14.1407 3.6366 13.9743L10.0028 6.55623V29.4988C9.99838 29.6986 10.0339 29.8972 10.1073 30.0831C10.1807 30.2689 10.2905 30.4383 10.4302 30.5812C10.5699 30.724 10.7368 30.8374 10.921 30.9149C11.1052 30.9924 11.303 31.0324 11.5028 31.0324C11.7026 31.0324 11.9005 30.9924 12.0847 30.9149C12.2689 30.8374 12.4357 30.724 12.5754 30.5812C12.7152 30.4383 12.8249 30.2689 12.8983 30.0831C12.9717 29.8972 13.0072 29.6986 13.0028 29.4988V2.50167C13.0021 2.30093 12.9611 2.10237 12.8823 1.91775C12.8035 1.73314 12.6884 1.56607 12.5439 1.42674C12.3993 1.28741 12.2283 1.17853 12.041 1.1065C11.8536 1.03447 11.6536 1.00089 11.453 1.00753V1.00736Z" fill="#fff"/>
												</svg>
											</span>
											<div>
												<h2 class="font-w600 mb-0 income-value">$45,945</h2>
												<span class=" fs-6 font-w500">Total incomes</span>
											</div>
										</div>
									</div>
									<div class="col-xl-3 col-lg-6 col-md-6 col-sm-6">
										<div class="d-flex align-items-end justify-content-xl-start justify-content-between mb-xl-0 mb-3">
												<div id="NewCustomers"></div>
											<div class=" ms-3">
												<h6 class="fs-18 font-w600 mb-0 text-success">+2.4%</h6>
												<span class="fs-14 font-w400">Than last week</span>
											</div>
										</div>
									</div>
									<div class="col-xl-3 col-lg-6 col-md-6 col-sm-6">
										<div class="card trading mb-sm-0 mb-3">
											<div class="card-body">
												<div class="income-data d-flex justify-content-between align-items-center mb-sm-0 mb-2 ps-lg-0">
													<div>
														<h3 class="font-w600 fs-2 mb-0 text-white">${totalC}</h3>
														<span class="fs-6 font-w500 text-white">Total Customer</span>
													</div>
													<span class="income-icon style-2">
														<svg width="34" height="24" viewBox="0 0 34 24" fill="none" xmlns="http://www.w3.org/2000/svg">
														<path d="M33.5 22.5C33.5 22.8978 33.342 23.2793 33.0607 23.5606C32.7794 23.8419 32.3978 24 32 24H14C13.6022 24 13.2206 23.8419 12.9393 23.5606C12.658 23.2793 12.5 22.8978 12.5 22.5C12.5 20.113 13.4482 17.8238 15.136 16.136C16.8239 14.4482 19.1131 13.5 21.5 13.5H24.5C26.8869 13.5 29.1761 14.4482 30.864 16.136C32.5518 17.8238 33.5 20.113 33.5 22.5ZM23 0C21.8133 0 20.6533 0.351893 19.6666 1.01118C18.6799 1.67047 17.9108 2.60754 17.4567 3.7039C17.0026 4.80025 16.8838 6.00665 17.1153 7.17053C17.3468 8.33442 17.9182 9.40352 18.7574 10.2426C19.5965 11.0817 20.6656 11.6532 21.8295 11.8847C22.9933 12.1162 24.1997 11.9974 25.2961 11.5433C26.3925 11.0891 27.3295 10.3201 27.9888 9.33341C28.6481 8.34672 29 7.18668 29 5.99999C29 4.4087 28.3679 2.88257 27.2426 1.75736C26.1174 0.63214 24.5913 0 23 0ZM9.5 0C8.31331 0 7.15327 0.351893 6.16658 1.01118C5.17988 1.67047 4.41085 2.60754 3.95672 3.7039C3.5026 4.80025 3.38378 6.00665 3.61529 7.17053C3.8468 8.33442 4.41824 9.40352 5.25736 10.2426C6.09647 11.0817 7.16557 11.6532 8.32946 11.8847C9.49334 12.1162 10.6997 11.9974 11.7961 11.5433C12.8925 11.0891 13.8295 10.3201 14.4888 9.33341C15.1481 8.34672 15.5 7.18668 15.5 5.99999C15.5 4.4087 14.8679 2.88257 13.7426 1.75736C12.6174 0.63214 11.0913 0 9.5 0ZM9.5 22.5C9.49777 20.9244 9.80818 19.364 10.4133 17.9093C11.0183 16.4545 11.9061 15.1342 13.025 14.025C12.1093 13.6793 11.1388 13.5014 10.16 13.5H8.84C6.62931 13.504 4.5103 14.3839 2.94711 15.9471C1.38391 17.5103 0.503965 19.6293 0.5 21.84V22.5C0.5 22.8978 0.658035 23.2793 0.93934 23.5606C1.22064 23.8419 1.60218 24 2 24H9.77C9.59537 23.519 9.50406 23.0117 9.5 22.5Z" fill="#FFFFFF"/>
														</svg>
													</span>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xl-3 col-lg-6 col-md-6 col-sm-6">
										<div class="card booking mb-0">
											<div class="card-body">
												<div class="income-data d-flex justify-content-between align-items-center mb-sm-0 mb-2  mb-sm-0 mb-2 ps-lg-0 ">
													<div>
														<h3 class="font-w600 fs-2 mb-0">${totalR}</h3>
														<span class="fs-6 font-w500">Rooms</span>
													</div>
													<span class="income-icon style-3">
													<svg width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns=		"http://www.w3.org/2000/svg">
														<path d="M20.0734 0C15.6988 0 12.1485 3.54844 12.1485 7.92443C12.1485 9.14474 12.4477 10.2895 12.9391 11.3213L0.516482 23.7488C-0.172161 24.4374 -0.172161 25.5504 0.516482 26.239L1.76163 27.4841C2.09101 27.8152 2.53822 28 3.00678 28C3.47341 28 3.92084 27.8152 4.25193 27.4841L7.02037 24.7158L9.551 27.2516C9.88209 27.581 10.3292 27.7658 10.7962 27.7658C11.2648 27.7658 11.7119 27.5827 12.0413 27.2516L12.6649 26.6284C13.3535 25.9398 13.3535 24.8269 12.6649 24.1382L10.1306 21.6024L16.6763 15.0566C17.7118 15.5497 18.853 15.8489 20.0751 15.8489C24.453 15.8489 28 12.3004 28 7.92443C28 3.54844 24.4533 0 20.0734 0ZM20.0734 12.3269C17.6448 12.3269 15.6706 10.3509 15.6706 7.92443C15.6706 5.49796 17.6448 3.52197 20.0734 3.52197C22.502 3.52197 24.4761 5.49796 24.4761 7.92443C24.4761 10.3509 22.502 12.3269 20.0734 12.3269Z" fill="var(--primary)"/>
													</svg>	
													</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>				
						<div class="row">
							<div class="col-xl-6">
								<div class="card">
									<div class="card-header border-0 pb-0 flex-wrap">
										<h3 class="mb-1">Guest Activity</h3>
										<div class="card-action coin-tabs mt-3 mt-sm-0">
											<ul class="nav nav-tabs" role="tablist">
												<li class="nav-item">
													<a class="nav-link" data-bs-toggle="tab" href="#month" role="tab" aria-selected="false">Month</a>
												</li>
												<li class="nav-item">
													<a class="nav-link active" data-bs-toggle="tab" href="#weekly" role="tab" aria-selected="true">Weekly</a>
												</li>
												<li class="nav-item">
													<a class="nav-link" data-bs-toggle="tab" href="#day" role="tab" aria-selected="false">Day</a>
												</li>
											</ul>
										</div>
									</div>
									<div class="card-body pb-2">
										<div class="d-flex align-items-center mb-5">
											<div class="d-flex align-items-center flex-lg-wrap me-5 flex-wrap">
												<span class="me-3 d-flex align-items-center">
													<svg class="me-2" width="12" height="13" viewBox="0 0 12 13" fill="none" xmlns="http://www.w3.org/2000/svg">
													<rect y="0.716797" width="12" height="12" rx="4" fill="var(--primary)"/>
													</svg>
													Check In
												</span>
												<h4 class="mb-0">457 Guest</h4>
											</div>
											<div class="d-flex align-items-center flex-lg-wrap flex-wrap">
												<span class=" squre me-3 d-flex align-items-center">
													<svg class="me-2" width="12" height="13" viewBox="0 0 12 13" fill="none" xmlns="http://www.w3.org/2000/svg">
													<rect y="0.716797" width="12" height="12" rx="4" fill="#ff9d43"/>
													</svg>
													Check Out
												</span>
												<h4 class="mb-0">157 Guest</h4>
											</div>
										</div>
										<div class="tab-content">
											<div class="tab-pane fade show active" id="month">
												<div id="reservationChart" class="reservationChart"></div>
											</div>	
											<div class="tab-pane fade" id="weekly">
												<div id="reservationChart1" class="reservationChart"></div>
											</div>	
											<div class="tab-pane fade" id="day">
												<div id="reservationChart2" class="reservationChart"></div>
											</div>	
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-3 col-lg-6 col-md-6 col-sm-6">
								<div class="card availability line">
									<div class="card-header border-0">
										<h3>Rooms Availability</h3>	
									</div>
									<div class="card-body pb-2">
										<div id="pieChart1"></div>
										<div class="d-flex justify-content-between pt-3 pt-sm-5 flex-wrap">
											<span><span class="pills-lable bg-dark me-2"></span>Available</span>
											<h4>66 Rooms</h4>
										</div>
										<div class="d-flex justify-content-between flex-wrap">
											<span><span class="pills-lable me-2"></span>Sold Out</span>
											<h4>129 Rooms</h4>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-3 col-lg-6 col-md-6 col-sm-6">
								<div class="card">
									<div class="card-header border-0 pb-0">
										<h3 class="mb-0">Visitor</h3>	
									</div>
									<div class="card-body pt-2 pb-2">
										<h2 class="text">12,456</h2>
										<div id="columnChart" class="crd-coloum"></div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xl-3">
								<div class="card">
									<div class="card-header border-0 pb-0">
										<h3>Guest List</h3>
										<a href="javascript:void(0);" class="btn btn-primary light btn-sm">More</a>
									</div>
									<div class="card-body">
										<div class="flex-column d-block nav-pills gap dz-scroll" id="Customerslist1">
											<div class="d-flex guest-list mb-4">
												<img src="Admin/images/img1.jpg" alt="image">
												<div>
													<h4 class="m-0">Jordyn George</h4>
													<span class="text-primary">#GS-2234</span>
												</div>
											</div>
											<div class="d-flex guest-list mb-4">
												<img src="Admin/images/img2.jpg" alt="image">
												<div>
													<h4 class="m-0">Marilyn Bator</h4>
													<span class="text-primary">#GS-2234</span>
												</div>
											</div>
											<div class="d-flex guest-list mb-4">
												<img src="Admin/images/img3.jpg" alt="image">
												<div>
													<h4 class="m-0">Jaxson Rosser</h4>
													<span class="text-primary">#GS-2234</span>
												</div>
											</div>
											<div class="d-flex guest-list mb-4">
												<img src="Admin/images/img4.jpg" alt="image">
												<div>
													<h4 class="m-0">Davis Culhane</h4>
													<span class="text-primary">#GS-2234</span>
												</div>
											</div>
											<div class="d-flex guest-list mb-4">
												<img src="Admin/images/img5.jpg" alt="image">
												<div>
													<h4 class="m-0">Lydia Westervelt</h4>
													<span class="text-primary">#GS-2234</span>
												</div>
											</div>
											<div class="d-flex guest-list mb-4">
												<img src="Admin/images/img5.jpg" alt="image">
												<div>
													<h4 class="m-0">Lydia Westervelt</h4>
													<span class="text-primary">#GS-2234</span>
												</div>
											</div>
											<div class="d-flex guest-list">
												<img src="Admin/images/img5.jpg" alt="image">
												<div>
													<h4 class="m-0">Lydia Westervelt</h4>
													<span class="text-primary">#GS-2234</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-9">
								<div class="card">
									<div class="card-header border-0 pb-0 flex-wrap">
										<h3>Customer Reviews</h3>
										<div class="d-flex">
											<select class="form-control default-select style-1 me-3 ms-0 border">
												<option>Sort by Newest</option>
												<option>Oldest</option>
												<option>Newest</option>
											</select>
											<a href="javascript:void(0);" class="btn btn-primary light text-nowrap">View more</a>
										</div>
									</div>
									<div class="card-body">
										<div class="row">
											<div class="col-xl-4 col-sm-5"> 
												<div class="nav review-tab flex-column d-block nav-pills gap dz-scroll mb-3" id="Customerslist2">
													<a href="#v-pills-bella" data-bs-toggle="pill" class="nav-link active show">
														<div class="d-flex guest-list">
															<img src="Admin/images/review1.jpg" alt="image">
															<div>
																<h4 class="m-0">Bella Morgan</h4>
																<span>24min ago</span>
															</div>
														</div>
													</a>
													<a href="#v-pills-louis" data-bs-toggle="pill" class="nav-link">
														<div class="d-flex guest-list">
															<img src="Admin/images/review2.jpg" alt="image">
															<div>
																<h4 class="m-0">Louis Pattinson</h4>
																<span>24min ago</span>
															</div>
														</div>
													</a>
													<a href="#v-pills-hans" data-bs-toggle="pill" class="nav-link">
														<div class="d-flex guest-list">
															<img src="Admin/images/review3.jpg" alt="image">
															<div>
																<h4 class="m-0">Hans Takeshi</h4>
																<span>24min ago</span>
															</div>
														</div>
													</a>
													<a href="#v-pills-demian" data-bs-toggle="pill" class="nav-link">
														<div class="d-flex guest-list">
															<img src="Admin/images/review4.jpg" alt="image">
															<div>
																<h4 class="m-0">Demian Sarumaha</h4>
																<span>24min ago</span>
															</div>
														</div>
													</a>
													<a href="#v-pills-morgan" data-bs-toggle="pill" class="nav-link">
														<div class="d-flex guest-list">
															<img src="Admin/images/review1.jpg" alt="image">
															<div>
																<h4 class="m-0">Bella Morgan</h4>
																<span>24min ago</span>
															</div>
														</div>
													</a>
													<a href="#v-pills-morgan1" data-bs-toggle="pill" class="nav-link">
														<div class="d-flex guest-list">
															<img src="Admin/images/review1.jpg" alt="image">
															<div>
																<h4 class="m-0">Bella Morgan</h4>
																<span>24min ago</span>
															</div>
														</div>
													</a>
												</div>
											</div>
											<div class="col-xl-8 col-sm-7">
												<div class="tab-content">
													<div id="v-pills-bella" class="tab-pane r-tab fade active show">
														<h3 class="font-w500">I love that room service</h3>
														<ul class="star-review">
															<li><i class="fas fa-star"></i></li>
															<li><i class="fas fa-star"></i></li>
															<li><i class="fas fa-star"></i></li>
															<li><i class="fas fa-star"></i></li>
														</ul>
														<p class="review-para mt-xl-4 mt-md-3 mt-sm-2 mt-2">
															We were totally refreshed and rejuvenated for the whole of next year and it was due to the relaxing stay at the hotel. The hotel is absolutely marvelous! We liked absolutely everything, starting from the breakfast through to the perfect room service including the cleanliness and extra services such as
														</p>
														<div class="mb-sm-2">
															<a href="javascript:void(0);" class="btn btn-dark light border-0 mb-2 btn-sm ">Great Service</a>
															<a href="javascript:void(0);" class="btn btn-dark light border-0 mb-2 btn-sm mx-xl-3 mx-md-0">Recomended</a>
															<a href="javascript:void(0);" class="btn btn-dark light border-0 mb-2 btn-sm ">Best Price</a>
														</div>
													<div class="d-flex align-items-center justify-content-between flex-md-wrap flex-sm-wrap flex-wrap mt-3 mt-sm-5 pt-xl-5 pt-lg-0 mb-0 mb-sm-0">
															<div class="d-flex guest-list mb-xl-0 mb-md-2 mb-sm-2 mb-2">
																<img src="Admin/images/review1.jpg" alt="image">
																<div>
																	<h4 class="m-0">Bella Morgan</h4>
																	<span>24min ago</span>
																</div>
															</div>
															<div>
																<a href="javascript:void(0);" class="btn btn-success border-0 me-sm-3 me-0">Accept
																	<svg class="ms-2" width="20" height="21" viewBox="0 0 20 21" fill="none" xmlns="http://www.w3.org/2000/svg">
																		<path d="M10 0.5C4.50742 0.5 0 5.00742 0 10.5C0 15.9926 4.50742 20.5 10 20.5C15.4926 20.5 20 15.9926 20 10.5C20 5.00742 15.4926 0.5 10 0.5ZM8.7898 15.0484L4.4107 10.6694L6.06781 9.01227L8.86648 11.8109L14.485 6.70344L16.062 8.43723L8.7898 15.0484Z" fill="white"/>
																	</svg>
																</a>
																<a href="javascript:void(0);" class="btn btn-primary border-0">Reject
																	<svg class="ms-2" width="20" height="21" viewBox="0 0 20 21" fill="none" xmlns="http://www.w3.org/2000/svg">
																		<path d="M10 0.5C4.50742 0.5 0 5.00742 0 10.5C0 15.9926 4.50742 20.5 10 20.5C15.4926 20.5 20 15.9926 20 10.5C20 5.00742 15.4926 0.5 10 0.5ZM14.9719 13.8148L13.3148 15.4719L10 12.1571L6.68523 15.4719L5.02812 13.8148L8.34289 10.5L5.02812 7.18523L6.68523 5.52812L10 8.84289L13.3148 5.52812L14.9719 7.18523L11.6571 10.5L14.9719 13.8148Z" fill="white"/>
																	</svg>
																</a>
															</div>
														</div>
													</div>
													<div id="v-pills-louis" class="tab-pane r-tab fade">
														<h3>I love that room service</h3>
														<ul class="star-review">
															<li><i class="fas fa-star"></i></li>
															<li><i class="fas fa-star"></i></li>
															<li><i class="fas fa-star"></i></li>
															<li><i class="fas fa-star"></i></li>
														</ul>
														<p class="review-para mt-xl-4 mt-md-3 mt-sm-2 mt-2">
															We were totally refreshed and rejuvenated for the whole of next year and it was due to the relaxing stay at the hotel. The hotel is absolutely marvelous! We liked absolutely everything, starting from the breakfast through to the perfect room service including the cleanliness and extra services such as
														</p>
														<div class="mb-sm-2">
															<a href="javascript:void(0);" class="btn btn-dark light border-0 mb-2 btn-sm">Great Service</a>
															<a href="javascript:void(0);" class="btn btn-dark light border-0 mb-2 btn-sm mx-xl-3 mx-md-0">Recomended</a>
															<a href="javascript:void(0);" class="btn btn-dark light border-0 mb-2 btn-sm ">Best Price</a>
														</div>
														<div class="d-flex align-items-center justify-content-between flex-md-wrap flex-sm-wrap flex-wrap mt-3 mt-sm-5 pt-xl-5 pt-lg-0 mb-3 mb-sm-0">
															<div class="d-flex guest-list mb-xl-0 mb-md-2 mb-sm-2 mb-2">
																<img src="Admin/images/review2.jpg" alt="image">
																<div>
																	<h4 class="m-0">Louis Pattinson</h4>
																	<span>24min ago</span>
																</div>
															</div>
															<div>
																<a href="javascript:void(0);" class="btn btn-success border-0 me-sm-3 me-0">Accept
																	<svg class="ms-2" width="20" height="21" viewBox="0 0 20 21" fill="none" xmlns="http://www.w3.org/2000/svg">
																		<path d="M10 0.5C4.50742 0.5 0 5.00742 0 10.5C0 15.9926 4.50742 20.5 10 20.5C15.4926 20.5 20 15.9926 20 10.5C20 5.00742 15.4926 0.5 10 0.5ZM8.7898 15.0484L4.4107 10.6694L6.06781 9.01227L8.86648 11.8109L14.485 6.70344L16.062 8.43723L8.7898 15.0484Z" fill="white"/>
																	</svg>
																</a>
																<a href="javascript:void(0);" class="btn btn-primary border-0">Reject
																	<svg class="ms-2" width="20" height="21" viewBox="0 0 20 21" fill="none" xmlns="http://www.w3.org/2000/svg">
																		<path d="M10 0.5C4.50742 0.5 0 5.00742 0 10.5C0 15.9926 4.50742 20.5 10 20.5C15.4926 20.5 20 15.9926 20 10.5C20 5.00742 15.4926 0.5 10 0.5ZM14.9719 13.8148L13.3148 15.4719L10 12.1571L6.68523 15.4719L5.02812 13.8148L8.34289 10.5L5.02812 7.18523L6.68523 5.52812L10 8.84289L13.3148 5.52812L14.9719 7.18523L11.6571 10.5L14.9719 13.8148Z" fill="white"/>
																	</svg>
																</a>
															</div>
														</div>
													</div>
													<div id="v-pills-hans" class="tab-pane r-tab fade">
														<h3>I love that room service</h3>
														<ul class="star-review">
															<li><i class="fas fa-star"></i></li>
															<li><i class="fas fa-star"></i></li>
															<li><i class="fas fa-star"></i></li>
															<li><i class="fas fa-star"></i></li>
														</ul>
														<p class="review-para mt-xl-4 mt-md-3 mt-sm-2 mt-2">
															We were totally refreshed and rejuvenated for the whole of next year and it was due to the relaxing stay at the hotel. The hotel is absolutely marvelous! We liked absolutely everything, starting from the breakfast through to the perfect room service including the cleanliness and extra services such as
														</p>
														<div class="mb-sm-2">
															<a href="javascript:void(0);" class="btn btn-dark light border-0 mb-2 btn-sm">Great Service</a>
															<a href="javascript:void(0);" class="btn btn-dark light border-0 mb-2 btn-sm mx-xl-3 mx-md-0">Recomended</a>
															<a href="javascript:void(0);" class="btn btn-dark light border-0 mb-2 btn-sm">Best Price</a>
														</div>
														<div class="d-flex align-items-center justify-content-between flex-md-wrap flex-sm-wrap flex-wrap mt-3 mt-sm-5 pt-xl-5 pt-lg-0 mb-0 mb-sm-0">
															<div class="d-flex guest-list mb-xl-0 mb-md-2 mb-sm-2 mb-2">
																<img src="Admin/images/review3.jpg" alt="image">
																<div>
																	<h4 class="m-0">Hans Takeshi</h4>
																	<span>24min ago</span>
																</div>
															</div>
															<div>
																<a href="javascript:void(0);" class="btn btn-success border-0 me-sm-3 me-0">Accept
																	<svg class="ms-2" width="20" height="21" viewBox="0 0 20 21" fill="none" xmlns="http://www.w3.org/2000/svg">
																		<path d="M10 0.5C4.50742 0.5 0 5.00742 0 10.5C0 15.9926 4.50742 20.5 10 20.5C15.4926 20.5 20 15.9926 20 10.5C20 5.00742 15.4926 0.5 10 0.5ZM8.7898 15.0484L4.4107 10.6694L6.06781 9.01227L8.86648 11.8109L14.485 6.70344L16.062 8.43723L8.7898 15.0484Z" fill="white"/>
																	</svg>
																</a>
																<a href="javascript:void(0);" class="btn btn-primary border-0">Reject
																	<svg  class="ms-2" width="20" height="21" viewBox="0 0 20 21" fill="none" xmlns="http://www.w3.org/2000/svg">
																		<path d="M10 0.5C4.50742 0.5 0 5.00742 0 10.5C0 15.9926 4.50742 20.5 10 20.5C15.4926 20.5 20 15.9926 20 10.5C20 5.00742 15.4926 0.5 10 0.5ZM14.9719 13.8148L13.3148 15.4719L10 12.1571L6.68523 15.4719L5.02812 13.8148L8.34289 10.5L5.02812 7.18523L6.68523 5.52812L10 8.84289L13.3148 5.52812L14.9719 7.18523L11.6571 10.5L14.9719 13.8148Z" fill="white"/>
																	</svg>
																</a>
															</div>
														</div>
													</div>
													<div id="v-pills-demian" class="tab-pane r-tab fade">
														<h3>I love that room service</h3>
														<ul class="star-review">
															<li><i class="fas fa-star"></i></li>
															<li><i class="fas fa-star"></i></li>
															<li><i class="fas fa-star"></i></li>
															<li><i class="fas fa-star"></i></li>
														</ul>
														<p class="review-para mt-xl-4 mt-md-3 mt-sm-2 mt-2">
															We were totally refreshed and rejuvenated for the whole of next year and it was due to the relaxing stay at the hotel. The hotel is absolutely marvelous! We liked absolutely everything, starting from the breakfast through to the perfect room service including the cleanliness and extra services such as
														</p>
														<div class="mb-sm-2">
															<a href="javascript:void(0);" class="btn btn-dark light border-0 mb-2 btn-sm">Great Service</a>
															<a href="javascript:void(0);" class="btn btn-dark light border-0 mb-2 btn-sm mx-xl-3 mx-md-0">Recomended</a>
															<a href="javascript:void(0);" class="btn btn-dark light border-0 mb-2 btn-sm">Best Price</a>
														</div>
														<div class="d-flex align-items-center justify-content-between flex-md-wrap flex-sm-wrap flex-wrap mt-3 mt-sm-5 pt-xl-5 pt-lg-0 mb-0 mb-sm-0">
															<div class="d-flex guest-list  mb-xl-0 mb-md-2 mb-sm-2 mb-2">
																<img src="Admin/images/review4.jpg" alt="image">
																<div>
																	<h4 class="m-0">Demian Sarumaha</h4>
																	<span>24min ago</span>
																</div>
															</div>
															<div>
																<a href="javascript:void(0);" class="btn btn-success border-0 me-sm-3 me-0">Accept
																	<svg class="ms-2" width="20" height="21" viewBox="0 0 20 21" fill="none" xmlns="http://www.w3.org/2000/svg">
																		<path d="M10 0.5C4.50742 0.5 0 5.00742 0 10.5C0 15.9926 4.50742 20.5 10 20.5C15.4926 20.5 20 15.9926 20 10.5C20 5.00742 15.4926 0.5 10 0.5ZM8.7898 15.0484L4.4107 10.6694L6.06781 9.01227L8.86648 11.8109L14.485 6.70344L16.062 8.43723L8.7898 15.0484Z" fill="white"/>
																	</svg>
																</a>
																<a href="javascript:void(0);" class="btn btn-danger border-0">Reject
																	<svg class="ms-2" width="20" height="21" viewBox="0 0 20 21" fill="none" xmlns="http://www.w3.org/2000/svg">
																		<path d="M10 0.5C4.50742 0.5 0 5.00742 0 10.5C0 15.9926 4.50742 20.5 10 20.5C15.4926 20.5 20 15.9926 20 10.5C20 5.00742 15.4926 0.5 10 0.5ZM14.9719 13.8148L13.3148 15.4719L10 12.1571L6.68523 15.4719L5.02812 13.8148L8.34289 10.5L5.02812 7.18523L6.68523 5.52812L10 8.84289L13.3148 5.52812L14.9719 7.18523L11.6571 10.5L14.9719 13.8148Z" fill="white"/>
																	</svg>
																</a>
															</div>
														</div>
													</div>
													<div id="v-pills-morgan" class="tab-pane r-tab fade">
														<h3>I love that room service</h3>
														<ul class="star-review">
															<li><i class="fas fa-star"></i></li>
															<li><i class="fas fa-star"></i></li>
															<li><i class="fas fa-star"></i></li>
															<li><i class="fas fa-star"></i></li>
														</ul>
														<p class="review-para mt-xl-4 mt-md-3 mt-sm-2 mt-2">
															We were totally refreshed and rejuvenated for the whole of next year and it was due to the relaxing stay at the hotel. The hotel is absolutely marvelous! We liked absolutely everything, starting from the breakfast through to the perfect room service including the cleanliness and extra services such as
														</p>
														<div>
															<a href="javascript:void(0);" class="btn btn-dark light border-0 mb-2 btn-sm">Great Service</a>
															<a href="javascript:void(0);" class="btn btn-dark light border-0 mb-2 btn-sm mx-xl-3 mx-md-0">Recomended</a>
															<a href="javascript:void(0);" class="btn btn-dark light border-0 mb-2 btn-sm ">Best Price</a>
														</div>
														<div class="d-flex align-items-center justify-content-between flex-md-wrap flex-sm-wrap flex-wrap mt-3 mt-sm-5 pt-xl-5 pt-lg-0 mb-0 mb-sm-0">
															<div class="d-flex guest-list mb-xl-0 mb-md-2 mb-sm-2 mb-2">
																<img src="Admin/images/review1.jpg" alt="image">
																<div>
																	<h4 class="m-0">Bella Morgan</h4>
																	<span>24min ago</span>
																</div>
															</div>
															<div>
																<a href="javascript:void(0);" class="btn btn-success border-0 me-sm-3 me-0">Accept
																	<svg class="ms-2" width="20" height="21" viewBox="0 0 20 21" fill="none" xmlns="http://www.w3.org/2000/svg">
																		<path d="M10 0.5C4.50742 0.5 0 5.00742 0 10.5C0 15.9926 4.50742 20.5 10 20.5C15.4926 20.5 20 15.9926 20 10.5C20 5.00742 15.4926 0.5 10 0.5ZM8.7898 15.0484L4.4107 10.6694L6.06781 9.01227L8.86648 11.8109L14.485 6.70344L16.062 8.43723L8.7898 15.0484Z" fill="white"/>
																	</svg>
																</a>
																<a href="javascript:void(0);" class="btn btn-primary border-0">Reject
																	<svg class="ms-2" width="20" height="21" viewBox="0 0 20 21" fill="none" xmlns="http://www.w3.org/2000/svg">
																		<path d="M10 0.5C4.50742 0.5 0 5.00742 0 10.5C0 15.9926 4.50742 20.5 10 20.5C15.4926 20.5 20 15.9926 20 10.5C20 5.00742 15.4926 0.5 10 0.5ZM14.9719 13.8148L13.3148 15.4719L10 12.1571L6.68523 15.4719L5.02812 13.8148L8.34289 10.5L5.02812 7.18523L6.68523 5.52812L10 8.84289L13.3148 5.52812L14.9719 7.18523L11.6571 10.5L14.9719 13.8148Z" fill="white"/>
																	</svg>
																</a>
															</div>
														</div>
													</div>
													<div id="v-pills-morgan1" class="tab-pane r-tab fade">
														<h3>I love that room service</h3>
														<ul class="star-review">
															<li><i class="fas fa-star"></i></li>
															<li><i class="fas fa-star"></i></li>
															<li><i class="fas fa-star"></i></li>
															<li><i class="fas fa-star"></i></li>
														</ul>
														<p class="review-para mt-xl-4 mt-md-3 mt-sm-2 mt-2">
															We were totally refreshed and rejuvenated for the whole of next year and it was due to the relaxing stay at the hotel. The hotel is absolutely marvelous! We liked absolutely everything, starting from the breakfast through to the perfect room service including the cleanliness and extra services such as
														</p>
														<div class="mb-sm-2">
															<a href="javascript:void(0);" class="btn btn-dark light border-0 mb-2 btn-sm">Great Service</a>
															<a href="javascript:void(0);" class="btn btn-dark light border-0 mb-2 btn-sm mx-xl-3 mx-md-0">Recomended</a>
															<a href="javascript:void(0);" class="btn btn-dark light border-0 mb-2 btn-sm">Best Price</a>
														</div>
														<div class="d-flex align-items-center justify-content-between flex-md-wrap flex-sm-wrap flex-wrap mt-3 mt-sm-5 pt-xl-5 pt-lg-0 mb-0 mb-sm-0">
															<div class="d-flex guest-list mb-xl-0 mb-md-2 mb-sm-2 mb-2">
																<img src="Admin/images/review1.jpg" alt="image">
																<div>
																	<h4 class="m-0">Bella Morgan</h4>
																	<span>24min ago</span>
																</div>
															</div>
															<div>
																<a href="javascript:void(0);" class="btn btn-success border-0 me-sm-3 me-0">Accept
																	<svg class="ms-2" width="20" height="21" viewBox="0 0 20 21" fill="none" xmlns="http://www.w3.org/2000/svg">
																		<path d="M10 0.5C4.50742 0.5 0 5.00742 0 10.5C0 15.9926 4.50742 20.5 10 20.5C15.4926 20.5 20 15.9926 20 10.5C20 5.00742 15.4926 0.5 10 0.5ZM8.7898 15.0484L4.4107 10.6694L6.06781 9.01227L8.86648 11.8109L14.485 6.70344L16.062 8.43723L8.7898 15.0484Z" fill="white"/>
																	</svg>
																</a>
																<a href="javascript:void(0);" class="btn btn-primary border-0">Reject
																	<svg class="ms-2" width="20" height="21" viewBox="0 0 20 21" fill="none" xmlns="http://www.w3.org/2000/svg">
																		<path d="M10 0.5C4.50742 0.5 0 5.00742 0 10.5C0 15.9926 4.50742 20.5 10 20.5C15.4926 20.5 20 15.9926 20 10.5C20 5.00742 15.4926 0.5 10 0.5ZM14.9719 13.8148L13.3148 15.4719L10 12.1571L6.68523 15.4719L5.02812 13.8148L8.34289 10.5L5.02812 7.18523L6.68523 5.52812L10 8.84289L13.3148 5.52812L14.9719 7.18523L11.6571 10.5L14.9719 13.8148Z" fill="white"/>
																	</svg>
																</a>
															</div>
														</div>
													</div>
												</div>
											</div>
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
	
	<!-- Swiper-js -->
	<script src="Admin/vendor/swiper/Admin/js/swiper-bundle.min.js"></script>
	
	<!-- Apex Chart -->
	<script src="Admin/vendor/apexchart/apexchart.js"></script>
	
	<!-- Chart piety plugin files -->
    <script src="Admin/vendor/peity/jquery.peity.min.js"></script>
	
	<!-- Dashboard 1 -->
	<script src="Admin/js/dashboard/dashboard-1.js"></script>

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


	
</body>


</html>
