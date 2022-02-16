<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">
		<title> Recently Active Members |   Rotary Means Business Fellowship Bangalore </title>
		<link href="<%=request.getContextPath() %>/resources/front1/css/bootstrap.min.css" rel="stylesheet">
		<link rel="icon" href="<%=request.getContextPath()%>/resources/admin/images/favicon.ico" type="image/ico" />
		<link rel="stylesheet" media="screen" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/css/bootstrap.min.css">
		<link rel = "stylesheet" href = "https://storage.googleapis.com/code.getmdl.io/1.0.6/material.indigo-pink.min.css">
		<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/front1/mobile/css/main.css">
		<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/front1/mobile/mdl/css/style.css">
		<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/front1/mobile/mdl/material.min.css">		
		<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
		<link href="<%=request.getContextPath() %>/resources/front1/css/responsive.css" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=PT+Sans:400,700" rel="stylesheet">
		<link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-amber.min.css" />
		<link rel = "stylesheet" href = "https://fonts.googleapis.com/icon?family=Material+Icons">		
		<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/front1/mobile/font-awesome-4.7.0/css/font-awesome.min.css"> 
		<link rel="shortcut icon" href="<%=request.getContextPath() %>/resources/front1/images/favicon.png">
		<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/front1/mobile/css/profile.css">
		<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/front1/mobile/css/OwlCarousel.css">		
		<script  src="<%= request.getContextPath() %>/resources/front1/mobile/js/index.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/js/bootstrap.min.js"></script>
		<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>		
		<script src="<%=request.getContextPath() %>/resources/admin/js/angular.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front1/js/main.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front1/js/wow.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front1/js/jquery.prettyPhoto.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front1/js/jquery.isotope.min.js"></script>
		<script src="<%= request.getContextPath() %>/resources/front1/mobile/mdl/material.js"></script>		
		<script src='https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js'></script>
		<script src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/64754/autosize.min.js'></script>
		<%if(session.getAttribute("sitepreference").toString().equalsIgnoreCase("MOBILE")){ %>
			<script src="<%=request.getContextPath() %>/resources/admin/js/controller/conf_mobile.js"></script>
		<%}else{ %>
			<script src="<%=request.getContextPath() %>/resources/admin/js/controller/config.js"></script>
		<%} %>		
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/sidebar.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/home.js"></script>
		<!-- Global site tag (gtag.js) - Google Analytics -->
        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-153537496-1"></script>
        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag(){dataLayer.push(arguments);}
            gtag('js', new Date());
            gtag('config', 'UA-153537496-1');

            
        </script>

		<link rel="manifest" href="<%=request.getContextPath() %>/manifest.json">			
	</head>
	<style> 
		.modal-backdrop {
		    position: fixed;
		    top: 0;
		    right: 0;
		    bottom: 0;
		    left: 0;
		    z-index: auto !important;
		    background-color: #000;
		}
	</style>
	<body class="homepage" ng-app="rcbs" ng-controller="homeCtrl" ng-init="getCurrentDefaultYear()">
		<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
			<%@include file="header.jsp" %>
			<%@include file="sidebar.jsp" %>
			<main class="mdl-layout__content">
				<div class="mdl-card__title mdl-color--darkblue mdl-color-text--white relative mdl-subheader">
					<a href="<%= request.getContextPath() %>/" class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--icon">
						<i class="material-icons txt-dark">arrow_back</i>
					</a>
					<h2 class="mdl-card__title-text uppercase-font font-18">RECENTLY ACTIVE MEMBERS</h2>
				</div>
				<div class="page-content">
					<div class="mdl-layout mdl-js-layout">
						<section class="members-directory">
							<div class="page-content">															
								
								<div class="mdl-card  demo-card-wide committee directory">
									<div class="panel-group d-accordion">
										<div class="panel panel-default" ng-repeat="item in getLastEightMembersPics" >
										<%-- <%if(session.getAttribute("memberid") != null) {%>
											<a href="#" ng-click="redirectToMemberProfile(item.memberId)">
										<%}%> --%>
											<div class="panel-heading">
											
												<img class="img-responsive avatar" src="{{item.memberProfilePicture}}" alt="" ng-if="item.memberProfilePicture != ''"/>
												<img class="img-responsive avatar" src="<%=request.getContextPath() %>/resources/admin/images/UserImg.png" alt="" ng-if="item.memberProfilePicture == ''"/>
												<h4 class = "panel-title"> {{item.memberFirstName}} {{item.memberLastName}} </h4>												
												<%-- <div class="form-group">
													<%if(session.getAttribute("memberid") == null) {%>
														<i class="fa fa fa-envelope pull-right" ng-click="getMemberDetailById(item.memberId)" data-toggle="modal" data-target="#myModal"></i>
														
													<%}	else {%>	
														<i class="fa fa-chevron-right pull-right" ng-click="redirectToMemberProfile(item.memberId)"></i>
													<%}%>
												</div> --%>												
											</div>											
										</div>									
									</div>
								</div>														
							</div>
						</section>					
					</div>
				</div>
			</main>
		</div>		
	</body>
</html>