<%-- 
    Document   : CustomerAd
    Created on : May 18, 2023, 10:34:13 AM
    Author     : Admin
--%>

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
												<img src="images/avatar/5.jpg" class="rounded-circle user_img" alt=""/>
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
												<img src="images/avatar/1.jpg" class="rounded-circle user_img" alt=""/>
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
												<img src="images/avatar/2.jpg" class="rounded-circle user_img" alt=""/>
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
												<img src="images/avatar/3.jpg" class="rounded-circle user_img" alt=""/>
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
												<img src="images/avatar/4.jpg" class="rounded-circle user_img" alt=""/>
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
												<img src="images/avatar/5.jpg" class="rounded-circle user_img" alt=""/>
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
												<img src="images/avatar/1.jpg" class="rounded-circle user_img" alt=""/>
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
												<img src="images/avatar/2.jpg" class="rounded-circle user_img" alt=""/>
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
												<img src="images/avatar/3.jpg" class="rounded-circle user_img" alt=""/>
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
												<img src="images/avatar/4.jpg" class="rounded-circle user_img" alt=""/>
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
												<img src="images/avatar/5.jpg" class="rounded-circle user_img" alt=""/>
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
										<img src="images/avatar/1.jpg" class="rounded-circle user_img_msg" alt=""/>
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
								<img src="images/avatar/2.jpg" class="rounded-circle user_img_msg" alt=""/>
									</div>
								</div>
								<div class="d-flex justify-content-start mb-4">
									<div class="img_cont_msg">
										<img src="images/avatar/1.jpg" class="rounded-circle user_img_msg" alt=""/>
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
								<img src="images/avatar/2.jpg" class="rounded-circle user_img_msg" alt=""/>
									</div>
								</div>
								<div class="d-flex justify-content-start mb-4">
									<div class="img_cont_msg">
										<img src="images/avatar/1.jpg" class="rounded-circle user_img_msg" alt=""/>
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
										<img src="images/avatar/2.jpg" class="rounded-circle user_img_msg" alt=""/>
									</div>
								</div>
								<div class="d-flex justify-content-start mb-4">
									<div class="img_cont_msg">
										<img src="images/avatar/1.jpg" class="rounded-circle user_img_msg" alt=""/>
									</div>
									<div class="msg_cotainer">
										Bye, see you
										<span class="msg_time">9:12 AM, Today</span>
									</div>
								</div>
								<div class="d-flex justify-content-start mb-4">
									<div class="img_cont_msg">
										<img src="images/avatar/1.jpg" class="rounded-circle user_img_msg" alt=""/>
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
								<img src="images/avatar/2.jpg" class="rounded-circle user_img_msg" alt=""/>
									</div>
								</div>
								<div class="d-flex justify-content-start mb-4">
									<div class="img_cont_msg">
										<img src="images/avatar/1.jpg" class="rounded-circle user_img_msg" alt=""/>
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
								<img src="images/avatar/2.jpg" class="rounded-circle user_img_msg" alt=""/>
									</div>
								</div>
								<div class="d-flex justify-content-start mb-4">
									<div class="img_cont_msg">
										<img src="images/avatar/1.jpg" class="rounded-circle user_img_msg" alt=""/>
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
										<img src="images/avatar/2.jpg" class="rounded-circle user_img_msg" alt=""/>
									</div>
								</div>
								<div class="d-flex justify-content-start mb-4">
									<div class="img_cont_msg">
										<img src="images/avatar/1.jpg" class="rounded-circle user_img_msg" alt=""/>
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
					<div class="col-xl-12">
						<div class="card">
							<div class="card-body p-0">
								<div class="table-responsive">
									<table class="table table-list i-table style-1 mb-4 border-0" id="guestTable-all3">
										<thead>
											<tr>
												<th class="bg-none">
													<div class="form-check style-3">
													  <input class="form-check-input" type="checkbox" value="" id="checkAll">
													</div>
												</th>
												<th>Guest</th>
												<th>Date Order</th>
												<th>Check In</th>
												<th>Check Out</th>
												<th>Request</th>
												<th>Room Type</th>
												<th>Status</th>
												<th class="bg-none"></th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>
													<div class="form-check style-3">
													  <input class="form-check-input" type="checkbox" value="">
													</div>
												</td>
												<td>
													<div class="media-bx d-flex py-3 ">
														<img class="me-3 rounded-circle" src="images/list/pic-1.jpg" alt="images">
														<div>
															<span class="text-primary fs-16 font-w400 text-nowrap">#GS-2234</span>
															<h4 class="mb-0 mt-1 fs-15 font-w500 text-nowrap text-nowrap"><a class="text-black" href="page-error-404.html">Kierra Geidt</a></h4>
														</div>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Sunday, Oct 24th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Oct 29th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Oct 31th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td><a href="javascript:void(0);" class="btn-link text-nowrap">View Notes</a></td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Queen A-2345</h5>
														<span class="fs-14 font-w400 text-nowrap">Room No. 0024</span>
													</div>
												</td>
												<td><span class="badge badge-xl light badge-warning badge-sm">Pending</span></td>
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
													<div class="media-bx d-flex py-3">
														<img class="me-3 rounded-circle" src="images/list/pic-2.jpg" alt="">
														<div>
															<span class="text-primary fs-16 font-w400 text-nowrap">#GS-2234</span>
															<h4 class="mb-0 mt-1 fs-15 font-w500 text-nowrap text-nowrap"><a class="text-black" href="page-error-404.html">Gustavo Aminoff</a></h4>
														</div>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Sunday, Oct 24th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Oct 29th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Oct 31th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td><a href="javascript:void(0);" class="btn-link-light text-nowrap">No Request</a></td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Queen A-2345</h5>
														<span class="fs-14 font-w400 text-nowrap">Room No. 0024</span>
													</div>
												</td>
												<td><span class="badge badge-xl light badge-primary badge-sm">Booked</span></td>
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
													<div class="media-bx d-flex py-3 ">
														<img class="me-3 rounded-circle" src="images/list/pic-3.jpg" alt="">
														<div>
															<span class="text-primary fs-16 font-w400 text-nowrap">#GS-2234</span>
															<h4 class="mb-0 mt-1 fs-15 font-w500 text-nowrap text-nowrap"><a class="text-black" href="page-error-404.html">Alena Westervelt</a></h4>
														</div>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Sunday, Oct 24th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Oct 29th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Oct 31th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td><a href="javascript:void(0);" class="btn-link-light text-nowrap">No Request</a></td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Queen A-2345</h5>
														<span class="fs-14 font-w400 text-nowrap">Room No. 0024</span>
													</div>
												</td>
												<td><span class="badge badge-xl light badge-primary badge-sm">Canceled</span></td>
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
													<div class="media-bx d-flex py-3">
														<img class="me-3 rounded-circle" src="images/list/pic-4.jpg" alt="">
														<div>
															<span class="text-primary fs-16 font-w400 text-nowrap">#GS-2234</span>
															<h4 class="mb-0 mt-1 fs-15 font-w500 text-nowrap text-nowrap"><a class="text-black" href="page-error-404.html">Tiana Workman</a></h4>
														</div>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Sunday, Oct 24th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Oct 29th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Oct 31th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td><a href="javascript:void(0);" class="btn-link text-nowrap">View Notes</a></td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Queen A-2345</h5>
														<span class="fs-14 font-w400 text-nowrap">Room No. 0024</span>
													</div>
												</td>
												<td><span class="badge badge-xl light badge-success badge-sm">Refund</span></td>
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
													<div class="media-bx d-flex py-3">
														<img class="me-3 rounded-circle" src="images/list/pic-5.jpg" alt="">
														<div>
															<span class="text-primary fs-16 font-w400 text-nowrap">#GS-2234</span>
															<h4 class="mb-0 mt-1 fs-15 font-w500 text-nowrap text-nowrap"><a class="text-black" href="page-error-404.html">Makenna Rosser</a></h4>
														</div>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Sunday, Oct 24th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Oct 29th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Oct 31th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td><a href="javascript:void(0);" class="btn-link-light text-nowrap">No Request</a></td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Queen A-2345</h5>
														<span class="fs-14 font-w400 text-nowrap">Room No. 0024</span>
													</div>
												</td>
												<td><span class="badge badge-xl light badge-primary badge-sm">Booked</span></td>
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
													<div class="media-bx d-flex py-3">
														<img class="me-3 rounded-circle" src="images/list/pic-1.jpg" alt="">
														<div>
															<span class="text-primary fs-16 font-w400 text-nowrap">#GS-2234</span>
															<h4 class="mb-0 mt-1 fs-15 font-w500 text-nowrap text-nowrap"><a class="text-black" href="page-error-404.html">Skylar Septimus</a></h4>
														</div>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Sunday, Oct 24th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Oct 29th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Oct 31th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td><a href="javascript:void(0);" class="btn-link-light text-nowrap">No Request</a></td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Queen A-2345</h5>
														<span class="fs-14 font-w400 text-nowrap">Room No. 0024</span>
													</div>
												</td>
												<td><span class="badge badge-xl light badge-primary badge-sm">Booked</span></td>
												<td>
													<div class="dropdown dropstart">
														<a href="javascript:void(0);" class="btn-link text-nowrap" data-bs-toggle="dropdown" aria-expanded="false">
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
													<div class="media-bx d-flex py-3">
														<img class="me-3 rounded-circle" src="images/list/pic-2.jpg" alt="">
														<div>
															<span class="text-primary fs-16 font-w400 text-nowrap">#GS-2234</span>
															<h4 class="mb-0 mt-1 fs-15 font-w500 text-nowrap text-nowrap"><a class="text-black" href="page-error-404.html">Kierra Geidt</a></h4>
														</div>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Sunday, Oct 24th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Oct 29th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Oct 31th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td><a href="javascript:void(0);" class="btn-link text-nowrap">View Notes</a></td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Queen A-2345</h5>
														<span class="fs-14 font-w400 text-nowrap">Room No. 0024</span>
													</div>
												</td>
												<td><span class="badge badge-xl light badge-warning badge-sm">Pending</span></td>
												<td>
													<div class="dropdown dropstart">
														<a href="javascript:void(0);" class="btn-link text-wrap" data-bs-toggle="dropdown" aria-expanded="false">
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
													<div class="media-bx d-flex py-3">
														<img class="me-3 rounded-circle" src="images/list/pic-2.jpg" alt="">
														<div>
															<span class="text-primary fs-16 font-w400 text-nowrap">#GS-2234</span>
															<h4 class="mb-0 mt-1 fs-15 font-w500 text-nowrap text-nowrap"><a class="text-black" href="page-error-404.html">Kierra Geidt</a></h4>
														</div>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Sunday, Oct 24th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Oct 29th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Oct 31th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td><a href="javascript:void(0);" class="btn-link text-nowrap">View Notes</a></td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Queen A-2345</h5>
														<span class="fs-14 font-w400 text-nowrap">Room No. 0024</span>
													</div>
												</td>
												<td><span class="badge badge-xl light badge-warning badge-sm">Pending</span></td>
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
													<div class="media-bx d-flex py-3">
														<img class="me-3 rounded-circle" src="images/list/pic-3.jpg" alt="">
														<div>
															<span class="text-primary fs-16 font-w400 text-nowrap">#GS-2234</span>
															<h4 class="mb-0 mt-1 fs-15 font-w500 text-nowrap text-nowrap"><a class="text-black" href="page-error-404.html">Kierra Geidt</a></h4>
														</div>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Sunday, Oct 24th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Oct 29th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Oct 31th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td><a href="javascript:void(0);" class="btn-link text-nowrap">View Notes</a></td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Queen A-2345</h5>
														<span class="fs-14 font-w400 text-nowrap">Room No. 0024</span>
													</div>
												</td>
												<td><span class="badge badge-xl light badge-warning badge-sm">Pending</span></td>
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
													<div class="media-bx d-flex py-3">
														<img class="me-3 rounded-circle" src="images/list/pic-3.jpg" alt="">
														<div>
															<span class="text-primary fs-16 font-w400 text-nowrap">#GS-2234</span>
															<h4 class="mb-0 mt-1 fs-15 font-w500 text-nowrap text-nowrap"><a class="text-black" href="page-error-404.html">Kierra Geidt</a></h4>
														</div>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Sunday, Oct 24th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Oct 29th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Oct 31th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td><a href="javascript:void(0);" class="btn-link text-nowrap">View Notes</a></td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Queen A-2345</h5>
														<span class="fs-14 font-w400 text-nowrap">Room No. 0024</span>
													</div>
												</td>
												<td><span class="badge badge-xl light badge-warning badge-sm">Pending</span></td>
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
													<div class="media-bx d-flex py-3">
														<img class="me-3 rounded-circle" src="images/list/pic-4.jpg" alt="">
														<div>
															<span class="text-primary fs-16 font-w400 text-nowrap">#GS-2234</span>
															<h4 class="mb-0 mt-1 fs-15 font-w500 text-nowrap text-nowrap"><a class="text-black" href="page-error-404.html">Kierra Geidt</a></h4>
														</div>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Sunday, Oct 24th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Oct 29th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Oct 31th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td><a href="javascript:void(0);" class="btn-link text-nowrap">View Notes</a></td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Queen A-2345</h5>
														<span class="fs-14 font-w400 text-nowrap">Room No. 0024</span>
													</div>
												</td>
												<td><span class="badge badge-xl light badge-warning badge-sm">Pending</span></td>
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
													<div class="media-bx d-flex py-3">
														<img class="me-3 rounded-circle" src="images/list/pic-5.jpg" alt="">
														<div>
															<span class="text-primary fs-16 font-w400 text-nowrap">#GS-2234</span>
															<h4 class="mb-0 mt-1 fs-15 font-w500 text-nowrap text-nowrap"><a class="text-black" href="page-error-404.html">Kierra Geidt</a></h4>
														</div>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Sunday, Oct 24th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Oct 29th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Oct 31th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td><a href="javascript:void(0);" class="btn-link text-nowrap">View Notes</a></td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Queen A-2345</h5>
														<span class="fs-14 font-w400 text-nowrap">Room No. 0024</span>
													</div>
												</td>
												<td><span class="badge badge-xl light badge-warning badge-sm">Pending</span></td>
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
													<div class="media-bx d-flex py-3">
														<img class="me-3 rounded-circle" src="images/list/pic-1.jpg" alt="">
														<div>
															<span class="text-primary fs-16 font-w400 text-nowrap">#GS-2234</span>
															<h4 class="mb-0 mt-1 fs-15 font-w500 text-nowrap text-nowrap"><a class="text-black" href="page-error-404.html">Kierra Geidt</a></h4>
														</div>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Sunday, Oct 24th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Oct 29th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Oct 31th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td><a href="javascript:void(0);" class="btn-link text-nowrap">View Notes</a></td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Queen A-2345</h5>
														<span class="fs-14 font-w400 text-nowrap">Room No. 0024</span>
													</div>
												</td>
												<td><span class="badge badge-xl light badge-warning badge-sm">Pending</span></td>
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
													<div class="media-bx d-flex py-3">
														<img class="me-3 rounded-circle" src="images/list/pic-2.jpg" alt="">
														<div>
															<span class="text-primary">#GS-2234</span>
															<h4 class="mb-0 mt-1 fs-15"><a class="text-black" href="page-error-404.html">Kierra Geidt</a></h4>
														</div>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Sunday, Oct 24th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Oct 29th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Oct 31th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td><a href="javascript:void(0);" class="btn-link text-nowrap">View Notes</a></td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Queen A-2345</h5>
														<span class="fs-14 font-w400 text-nowrap">Room No. 0024</span>
													</div>
												</td>
												<td><span class="badge badge-xl light badge-warning badge-sm">Pending</span></td>
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
													<div class="media-bx d-flex py-3 ">
														<img class="me-3 rounded-circle" src="images/list/pic-4.jpg" alt="">
														<div>
															<span class="text-primary fs-16 font-w400 text-nowrap">#GS-2234</span>
															<h4 class="mb-0 mt-1 fs-15 font-w500 text-nowrap text-nowrap"><a class="text-black" href="page-error-404.html">Kierra Geidt</a></h4>
														</div>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Sunday, Oct 24th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Oct 29th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Oct 31th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td><a href="javascript:void(0);" class="btn-link text-nowrap">View Notes</a></td>
												<td>
													<div>
														<h5 class="fs-15 font-w400">Queen A-2345</h5>
														<span class="fs-14 font-w500">Room No. 0024</span>
													</div>
												</td>
												<td><span class="badge badge-xl light badge-warning badge-sm">Pending</span></td>
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
													<div class="media-bx d-flex py-3">
														<img class="me-3 rounded-circle" src="images/list/pic-4.jpg" alt="">
														<div>
															<span class="text-primary fs-16 font-w400 text-nowrap">#GS-2234</span>
															<h4 class="mb-0 mt-1 fs-15 font-w500 text-nowrap text-nowrap"><a class="text-black" href="page-error-404.html">Kierra Geidt</a></h4>
														</div>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Sunday, Oct 24th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Oct 29th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Oct 31th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td><a href="javascript:void(0);" class="btn-link text-nowrap">View Notes</a></td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Queen A-2345</h5>
														<span class="fs-14 font-w400 text-nowrap">Room No. 0024</span>
													</div>
												</td>
												<td><span class="badge badge-xl light badge-warning badge-sm">Pending</span></td>
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
													<div class="media-bx d-flex py-3">
														<img class="me-3 rounded-circle" src="images/list/pic-5.jpg" alt="">
														<div>
															<span class="text-primary">#GS-2234</span>
															<h4 class="mb-0 mt-1 fs-15"><a class="text-black" href="page-error-404.html">Kierra Geidt</a></h4>
														</div>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Sunday, Oct 24th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Oct 29th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Oct 31th, 2020</h5>
														<span class="fs-14 font-w400 text-nowrap">08:29 AM</span>
													</div>
												</td>
												<td><a href="javascript:void(0);" class="btn-link text-nowrap">View Notes</a></td>
												<td>
													<div>
														<h5 class="fs-15 font-w500 text-nowrap">Queen A-2345</h5>
														<span class="fs-14 font-w400 text-nowrap">Room No. 0024</span>
													</div>
												</td>
												<td><span class="badge badge-xl light badge-warning badge-sm">Pending</span></td>
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
            </div>
        </div>
        <!--**********************************
            Content body end
        ***********************************-->
		
		
		
        <!--**********************************
            Footer start
        ***********************************-->
        <div class="footer">
		
            <div class="copyright">
              <p>Copyright © Designed &amp; Developed by <a href="https://dexignlab.com/" target="_blank">DexignLab</a> 2022</p>
            </div>
        </div>
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
		(function($) {
		 
			var table = $('#example5').DataTable({
				searching: false,
				paging:true,
				select: false,
				//info: false,         
				lengthChange:false 
				
			});
			$('#example tbody').on('click', 'tr', function () {
				var data = table.row( this ).data();
				
			});
		   
		})(jQuery);
	</script>
</body>

<!-- Mirrored from kamr.dexignlab.com/xhtml/guest-list.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 15 May 2023 03:46:13 GMT -->
</html>