<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!doctype html>
<html lang="en" class="h-100">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta name="generator" content="">
<title>Gallery | RMB District</title>

<!-- manifest meta -->
<meta name="apple-mobile-web-app-capable" content="yes">
<link rel="manifest" href="manifest.json" />

<!-- Favicons -->
<!-- <link rel="apple-touch-icon" href="img/favicon180.png" sizes="180x180">
<link rel="icon" href="img/favicon32.png" sizes="32x32" type="image/png">
<link rel="icon" href="img/favicon16.png" sizes="16x16" type="image/png"> -->

<link rel="apple-touch-icon" sizes="180x180"
	href="<%=request.getContextPath()%>/resources/mobile/img/favicon/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="<%=request.getContextPath()%>/resources/mobile/img/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="<%=request.getContextPath()%>/resources/mobile/img/favicon/favicon-16x16.png">
<link rel="manifest"
	href="<%=request.getContextPath()%>/resources/mobile/img/favicon/site.webmanifest">
<meta name="msapplication-TileColor" content="#023497">
<meta name="theme-color" content="#023497">


<!-- Material icons-->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

<!-- Font Awesome -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/mobile/font-awesome-4.7.0/css/font-awesome.min.css">

<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&display=swap"
	rel="stylesheet">

<!-- swiper CSS -->
<link
	href="<%=request.getContextPath()%>/resources/mobile/vendor/swiper/css/swiper.min.css"
	rel="stylesheet">

<!-- <link rel="stylesheet" href="css/owl.carousel.min.css"> -->

<link rel="stylesheet" media="screen"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/css/bootstrap.min.css">


<link href="http://www.jqueryscript.net/css/jquerysctipttop.css"
	rel="stylesheet" type="text/css">
<!-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script> -->


<!-- Nivo-Lightbox START -->
<link
	href="<%=request.getContextPath()%>/resources/mobile/images/themes/default/default.css"
	rel="stylesheet" type="text/css">
<link
	href="<%=request.getContextPath()%>/resources/mobile/css/nivo-lightbox.css"
	rel="stylesheet" type="text/css">



<!-- Custom styles  -->
<link
	href="<%=request.getContextPath()%>/resources/mobile/css/style.css"
	rel="stylesheet" id="style">

<script
	src="<%=request.getContextPath()%>/resources/admin/js/angular.min.js"></script>

<script
	src="<%=request.getContextPath()%>/resources/admin/js/controller/conf_mobile.js"></script>

<script
	src="<%=request.getContextPath()%>/resources/admin/js/controller/frontslider.js"></script>



</head>

<body class="body-scroll d-flex flex-column h-100 menu-overlay"
	data-page="homepage" ng-app="rcbs" ng-controller="SliderCtrl" ng-cloak>


	<!-- screen loader -->
	<div class="container-fluid h-100 loader-display">
		<div class="row h-100">
			<div class="align-self-center col">
				<div class="logo-loading">
					<div class="icon icon-100 mb-4 rounded-circle">
						<img src="img/favicon144.png" alt="" class="w-100">
					</div>
					<h4 class="text-default">RMBF</h4>
					<p class="text-secondary">Rotary Means Business Fellowship</p>
					<div class="loader-ellipsis">
						<div></div>
						<div></div>
						<div></div>
						<div></div>
					</div>
				</div>
			</div>
		</div>
	</div>



	<!-- menu main -->
	<div class="main-menu">
		<div class="row mb-4 no-gutters">
			<div class="col-auto">
				<button class="btn btn-link btn-40 btn-close text-white">
					<span class="material-icons">chevron_left</span>
				</button>
			</div>

			<div class="col-auto">
				<div class="avatar avatar-40 rounded-circle position-relative">
					<figure class="background">
						<img src="img/user3.png" alt="">
					</figure>
				</div>
			</div>

			<div class="col pl-3 text-left align-self-center">
				<h6 class="mb-1">Ashwin Bhandari</h6>
				<p class="small  text-default-secondary">
					chairman@rmbfmadurai.com</p>
			</div>
		</div>

		<div class="menu-container">

			<ul class="nav nav-pills flex-column ">

				<li class="nav-item"><a class="nav-link"
					href="<%=request.getContextPath()%>/">
						<div>
							<span class="material-icons icon"> account_balance </span> Home
						</div> <span class="arrow material-icons">chevron_right</span>
				</a></li>


				<li class="nav-item"><a class="nav-link active"
					href="members.html">
						<div>
							<span class="material-icons icon">insert_chart</span> Members
						</div> <span class="arrow material-icons">chevron_right</span>
				</a></li>


				<li class="nav-item"><a class="nav-link" href="#">
						<div>
							<span class="material-icons icon">perm_contact_calendar</span>
							R2R Meetings
						</div> <span class="arrow material-icons">chevron_right</span>
				</a></li>


				<li class="nav-item"><a class="nav-link" href="#">
						<div>
							<span class="material-icons icon">card_giftcard</span> References
						</div> <span class="arrow material-icons">chevron_right</span>
				</a></li>


				<li class="nav-item"><a class="nav-link" href="#">
						<div>
							<span class="material-icons icon">shopping_bag</span> Business
						</div> <span class="arrow material-icons">chevron_right</span>
				</a></li>


				<li class="nav-item"><a class="nav-link" href="#">
						<div>
							<span class="material-icons icon">settings</span> Events
						</div> <span class="arrow material-icons">chevron_right</span>
				</a></li>



				<li class="nav-item"><a class="nav-link" href="#">
						<div>
							<span class="material-icons icon">layers</span> Fellowship
						</div> <span class="arrow material-icons">chevron_right</span>
				</a></li>

				<li class="nav-item"><a class="nav-link" href="#">
						<div>
							<span class="material-icons icon">widgets</span> Gallery
						</div> <span class="arrow material-icons">chevron_right</span>
				</a></li>

			</ul>

			<div class="text-center">
				<a href="login.html"
					class="btn btn-outline-primary text-white rounded my-3 mx-auto">Sign
					out</a>
			</div>

		</div>
	</div>




	<!-- hevent age content -->
	<main id="hevent" class="flex-shrink-0 main">

		<!-- Fixed navbar -->
		<header class="header hinner">
			<div class="row">
				<div class="col-auto px-0">
					<button class="btn btn-40 btn-link back-btn" type="button" onclick="window.history.back();">
						<span class="material-icons">keyboard_arrow_left</span>
					</button>
				</div>

				<div class="text-left col align-self-center">
					<a class="navbar-brand" href="#">
						<h5 class="mb-0">Gallery</h5>
					</a>
				</div>


				<div class="ml-auto col-auto pl-0">

					<a style="color: #8aadf3;" href="<%=request.getContextPath()%>/"
						class=" btn btn-40 btn-link"> <span class="material-icons">
							home </span>
					</a>


					<!-- <button type="button" class="btn btn-link btn-40 colorsettings">
<i  class="fa fa-search"></i>
</button>  -->

					<!-- <a href="#" class="avatar avatar-30 shadow-sm rounded-circle ml-2">
<figure class="m-0 background">
<img src="img/user1.png" alt="">
</figure>
</a> -->
				</div>


			</div>
		</header>



		<div class="main-container h-100">
<div class="container">


				<div class="row">

					<c:forEach items="${albumOneImage}" var="albumOneImage"
						varStatus="status">
						<div class="col-6 col-md-4 col-lg-3">
							<!-- ng-repeat="item in getalbumoneimage" -->
							<div class="card border-0 mb-4 overflow-hidden">
								<div class="card-body position-relative">

									<a data-lightbox-gallery="${albumOneImage.albumId}"
										href="${albumOneImage.image}"
										title="${albumOneImage.imageTitle}"> <img
										class="img-responsive" src="${albumOneImage.image}" alt="" /></a>

									<c:forEach items="${albumImages}" var="albumImages"
										varStatus="status1">
										<c:if
											test="${albumOneImage.albumId == albumImages.albumId && albumOneImage.albumImageId != albumImages.albumImageId}">
											<a ng-hide="true"
												data-lightbox-gallery="${albumOneImage.albumId}"
												href="${albumImages.image}"
												title="${albumOneImage.imageTitle}"> <img
												class="img-responsive" src="${albumImages.image}" alt="" /></a>
										</c:if>
									</c:forEach>
								</div>

								<div class="card-body" style="margin-top: -20px";>
									
									<p class="mb-0 font-weight-500" >
										${albumOneImage.albumDescription}</p>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>

				<!-- <div class="col-6 col-md-4 col-lg-3">
<div class="card border-0 mb-4 overflow-hidden">
<div class="card-body h-150 position-relative">

<a href="#" class="background">
<img src="img/gallery/2.jpg" alt="">
</a>

<a data-lightbox-gallery="gallery2" href="images/PhotoGallery/2.jpg" title="Singapore from the air (Andrew Tan 2011)">
<img class="img-responsive" src="images/PhotoGallery/2.jpg" alt="" /></a>

</div>

<div class="card-body">
    <p class="mb-0 font-weight-500">  RMB ONCLAVE </p> 
<p class="mb-0"><small style="top: 0px;" class="text-secondary"> Event Date: 23 May 2020  </small></p>

</div>

</div>
</div> -->


				<!-- <div class="col-6 col-md-4 col-lg-3">
<div class="card border-0 mb-4 overflow-hidden">
<div class="card-body h-150 position-relative">

<a href="#" class="background">
<img src="img/gallery/3.jpg" alt="">
</a>

</div>

<div class="card-body">
    <p class="mb-0 font-weight-500">  RMB ONCLAVE </p>
<p class="mb-0"><small style="top: 0px;" class="text-secondary"> Event Date: 23 May 2020  </small></p>
</a>
</div>

</div>
</div> -->

			</div>

		</div>
		</div>

	</main>





	<!-- footer-->
	<div class="footer">
		<div class="row no-gutters justify-content-center">

			<!-- <div class="col-auto">
<a href="index.html" class="active">
<i class="material-icons"> home </i>
<p>Home</p>
</a>
</div> -->

			<div class="col-auto">
				<a href="<%=request.getContextPath()%>/member_bk" class=""> <i class="fa fa-users"></i>
					<p>Members</p>
				</a>
			</div>

			<div class="col-auto">
				<a href="#" class=""> <i class="fa fa-file-text"></i>
					<p>Records</p>
				</a>
			</div>

			<div class="col-auto">
				<a href="events.html" class=""> <i class="fa fa-calendar"
					aria-hidden="true"></i>
					<p>Events</p>
				</a>
			</div>

			<!-- <div class="col-auto">
<a href="#" class="">
<i class="material-icons">account_circle</i>
<p> Fellowship </p>
</a>
</div> -->

			<div class="col-auto">
				<a href="gallery.html" class="active"> <i
					class="fa fa-picture-o" aria-hidden="true"></i>
					<p>Gallery</p>
				</a>
			</div>

		</div>
	</div>

	<script
		src="<%=request.getContextPath()%>/resources/mobile/js/jquery-3.3.1.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/mobile/js/popper.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/mobile/vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- cookie js -->
	<script
		src="<%=request.getContextPath()%>/resources/mobile/js/jquery.cookie.js"></script>

	<!-- Swiper slider  js-->
	<script
		src="<%=request.getContextPath()%>/resources/mobile/vendor/swiper/js/swiper.min.js"></script>

	<!-- <script src="js/owl.carousel.min.js"></script> -->

	<!-- Customized jquery file  -->
	<script src="<%=request.getContextPath()%>/resources/mobile/js/main.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/mobile/js/color-scheme-demo.js"></script>

	<!-- PWA app service registration and works -->
	<script
		src="<%=request.getContextPath()%>/resources/mobile/js/pwa-services.js"></script>

	<!-- page level custom script -->
	<script src="<%=request.getContextPath()%>/resources/mobile/js/app.js"></script>

	<script
		src="<%=request.getContextPath()%>/resources/mobile/js/jquery.min.js"></script>

	<script
		src="<%=request.getContextPath()%>/resources/mobile/js/nivo-lightbox.js"></script>

	<script>
		$(document).ready(function() {
			$('a').nivoLightbox();
		});
	</script>

</body>

</html>
