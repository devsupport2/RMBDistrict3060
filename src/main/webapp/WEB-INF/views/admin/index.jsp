<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head lang="en">  
    <meta charset="UTF-8">
    <title>RMBB Login</title>
	<script src="<%=request.getContextPath() %>/resources/admin/js/angular.min.js"></script>
	<script src="<%=request.getContextPath() %>/resources/admin/js/controller/app.js"></script>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<link rel="shortcut icon" href="<%=request.getContextPath() %>/resources/front/images/favicon.png">
	<link href="<c:url value="/resources/admin/css/bootstrap.css"></c:url>" rel="stylesheet" type="text/css" />
	<link href="<c:url value="/resources/admin/css/styles.css"></c:url>" rel="stylesheet" type="text/css" />
	<style>
			body, html {
				height: 100%;
				background-repeat: no-repeat;
				background-image: linear-gradient(141deg, #0fb8ad 0%, #1fc8db 51%, #2cb5e8 75%);
			}

			.card-container.card {
				max-width: 350px;
				padding: 40px 40px;
			}

			.btn {
				font-weight: 700;
				height: 36px;
				-moz-user-select: none;
				-webkit-user-select: none;
				user-select: none;
				cursor: default;
			}

			.card {
				background-color: #F7F7F7;
				padding: 20px 25px 30px;
				margin: 0 auto 25px;
				margin-top: 50px;
				-moz-border-radius: 2px;
				-webkit-border-radius: 2px;
				border-radius: 2px;
				-moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
				-webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
				box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
			}

			.profile-img-card {
				width: 96px;
				height: 96px;
				margin: 0 auto 10px;
				display: block;
				-moz-border-radius: 50%;
				-webkit-border-radius: 50%;
				border-radius: 50%;
			}

			.profile-name-card {
				font-size: 16px;
				font-weight: bold;
				text-align: center;
				margin: 10px 0 0;
				min-height: 1em;
			}

			.reauth-email {
				display: block;
				color: #404040;
				line-height: 2;
				margin-bottom: 10px;
				font-size: 14px;
				text-align: center;
				overflow: hidden;
				text-overflow: ellipsis;
				white-space: nowrap;
				-moz-box-sizing: border-box;
				-webkit-box-sizing: border-box;
				box-sizing: border-box;
			}

			.form-signin #inputEmail,
			.form-signin #inputPassword {
				direction: ltr;
				height: 44px;
				font-size: 16px;
			}

			.form-signin input[type=email],
			.form-signin input[type=password],
			.form-signin input[type=text],
			.form-signin button {
				width: 100%;
				display: block;
				margin-bottom: 10px;
				z-index: 1;
				position: relative;
				-moz-box-sizing: border-box;
				-webkit-box-sizing: border-box;
				box-sizing: border-box;
			}

			.form-signin .form-control:focus {
				border-color: rgb(104, 145, 162);
				outline: 0;
				-webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgb(104, 145, 162);
				box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgb(104, 145, 162);
			}

			.btn.btn-signin {
				background-color: rgb(104, 145, 162);
				padding: 0px;
				font-weight: 700;
				font-size: 14px;
				height: 36px;
				-moz-border-radius: 3px;
				-webkit-border-radius: 3px;
				border-radius: 3px;
				border: none;
				-o-transition: all 0.218s;
				-moz-transition: all 0.218s;
				-webkit-transition: all 0.218s;
				transition: all 0.218s;
			}

			.btn.btn-signin:hover,
			.btn.btn-signin:active,
			.btn.btn-signin:focus {
				background-color: rgb(12, 97, 33);
			}

			.forgot-password {
				color: rgb(104, 145, 162);
			}

			.forgot-password:hover,
			.forgot-password:active,
			.forgot-password:focus{
				color: rgb(12, 97, 33);
			}
		</style>

	</head>  
	<body ng-app="rcbs" ng-controller="loginCtrl">
		<div class="container">
			<div class="card card-container">	
			<center>			
				<img class="img-responsive" src="<%=request.getContextPath() %>/resources/front/images/RMB-Logo.png"/>
			</center>
				<p id="profile-name" class="profile-name-card"></p>
				<form class="form-signin">
					<span id="reauth-email" class="reauth-email"></span>
					<input type="text" id="username" name="username" ng-model="member_email" class="form-control" placeholder="Username" autofocus>
					<input type="password" id="password" name="password" ng-model="member_password" class="form-control" placeholder="Password">					
					<br>					
					<button class="btn btn-lg btn-primary btn-block btn-signin" type="submit" ng-click="checklogin()">Sign in</button>
				</form>
				<a href="<%=request.getContextPath() %>/forget_password" class="forgot-password">
					Forgot the password?
				</a>
			</div>
		</div>
	</body>
</html>
