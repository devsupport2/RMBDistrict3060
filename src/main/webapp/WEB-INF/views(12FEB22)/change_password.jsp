<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title> My Dashboard </title>
<!-- fonts-->
<link href="<%=request.getContextPath() %>/resources/front2/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Font Awesome -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front2/font-awesome-4.7.0/css/font-awesome.min.css"> 

<!-- styles-->
<link href="<%=request.getContextPath() %>/resources/front2/css/sb-admin-2.min.css" rel="stylesheet">
<link href="<%=request.getContextPath() %>/resources/front2/css/style.css" rel="stylesheet">




		<script src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/64754/autosize.min.js'></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/angular.min.js"></script>		
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/config.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/sidebar.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/change_password.js"></script>		
		
	


</head>

<body id="page-top" ng-app="rcbs" ng-controller="passwordCtrl">

<%@include file="header1.jsp" %>

<!-- Begin Page Content -->
<div class="container-fluid">



<div class="row">
<div class="col-lg-12 col-md-12 col-sm-6 col-xs-12">

<!-- DataTales Example -->
<div class="card shadow mb-4">

<!-- Card Header -->
<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">


<h5 class="m-0 font-weight-bold text-darkblue"> Change Password <!-- beetween {{fromdate}} and {{todate}} --></h5>


<form  class="form-inline" >
<div class="row">




</div>
</form>
</div>


<div class="card-body">
<div class="form-group">

<%-- 
<div class="form-group row">
<div class="col-lg-3"> </div>
		<div class="col-lg-6">
	<label>Current Password	 <span class="red">*</span> </label>
	<input type="password" id="oldpassword" name="oldpassword" ng-model="oldpassword" class="form-control" ng-blur="checkCurrentPassword(<%= session.getAttribute("memberid") %>)" placeholder="Current Password" autofocus>																	
</div>
</div>

<div class="form-group row">
<div class="col-lg-3"> </div>
	<div class="col-lg-6">
		<label>New Password</label>												
		<input type="password" id="newpassword" name="newpassword" ng-model="newpassword" placeholder="New Password" class="form-control" style="margin-top: 0px;">
	</div>
</div>

<div class="form-group row">
<div class="col-lg-3"> </div>
		<div class="col-lg-6">
	<label>Re-Type New Password</label>												
		<input type="password" id="renewpassword" name="renewpassword" ng-model="renewpassword" placeholder="Confirm Password" class="form-control" style="margin-top: 0px;">
</div>
</div>

<div class="form-group row">
<div class="col-lg-3"> </div>
		<div class="col-lg-6">
	
<button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Submit</button>
</div>
</div>
</div>

</div>
</div>
 --%>

	
	<!------------------------------------ Row Start -->	
		<div class="form-group row">
		<div class="col-md-3"> </div>
					<div class="col-md-6">
					<label>Current Password	<font color="red" size="3">*</font></label>
						<div class="input-group">
							
							<span class="input-group-addon"><i class="fa fa-unlock-alt" aria-hidden="true"></i></span>
					<input type="password" id="oldpassword" name="oldpassword" ng-model="oldpassword" class="form-control" ng-blur="checkCurrentPassword(<%= session.getAttribute("memberid") %>)" placeholder="Current Password" autofocus>
						</div>
					</div>
					
		</div>																			
			<div class="form-group row">
			<div class="col-md-3"> </div>
				<div class="col-md-6">
					<label>New Password<font color="red" size="3">*</font></label>
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-unlock-alt" aria-hidden="true"></i></span>
																	
		<input type="password" id="newpassword" name="newpassword" ng-model="newpassword" placeholder="New Password" class="form-control" style="margin-top: 0px;">
	                                        
						</div>
					</div>
						
		</div>	
		
		<div class="form-group row">
<div class="col-md-3"> </div>
						<div class="col-md-6">
					<label>Re-Type New Password<font color="red" size="3">*</font></label>
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-unlock-alt" aria-hidden="true"></i></span>
																	
			<input type="password" id="renewpassword" name="renewpassword" ng-model="renewpassword" placeholder="Confirm Password" class="form-control" style="margin-top: 0px;">
	                                        
						</div>
					</div>
		</div>	
		<div class="form-group row">
<div class="col-md-3"> </div>
		<div class="col-lg-6">
	
<button class="btn  btn-primary btn-block btn-signin" ng-click="changePassword(<%= session.getAttribute("memberid") %>)" type="submit">Submit</button>
</div>
</div>	
		<div class="form-group row">
<br>
</div>



</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->


</div>
<!-- End of Content Wrapper -->

<%@include file="footer1.jsp" %>
</div>
<!-- End of Page Wrapper -->



<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
<i class="fas fa-angle-up"></i>
</a>















</body>


</html>
