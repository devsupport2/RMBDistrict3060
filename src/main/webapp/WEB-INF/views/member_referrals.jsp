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



<script src="<%=request.getContextPath() %>/resources/front2/js/slimselect.min.js"></script>
<link href="<%=request.getContextPath() %>/resources/front2/css/slimselect.min.css" rel="stylesheet"></link>




<!--***datetimepicker****-->
<link rel="stylesheet" href="https://kendo.cdn.telerik.com/2018.1.221/styles/kendo.common-material.min.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front2/datetimepicker/css/kendo.material.min.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front2/datetimepicker/css/kendo.material.mobile.min.css" />
<!--<script src="https://kendo.cdn.telerik.com/2018.1.221/js/jquery.min.js"></script>-->
<script src="<%=request.getContextPath() %>/resources/front2/vendor/jquery/jquery.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/front2/datetimepicker/js/kendo.all.min.js"></script>

		<script src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/64754/autosize.min.js'></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/angular.min.js"></script>		
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/config.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/sidebar.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/member_reference.js"></script>
		
	


</head>

<body id="page-top" ng-app="rcbs" ng-controller="memberReferralCtrl" ng-init="getMemberReferralsById(<%= session.getAttribute("loginid") %>)" ng-cloak>

<%@include file="header1.jsp" %>

<!-- Begin Page Content -->
<div class="container-fluid">

<!-- <div class="row">
<div class="col-lg-8"></div>
<div class="col-lg-4">
Page Heading
<div class="d-sm-flex align-items-center justify-content-between mb-4 pull-right">
<h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
<a href="#" data-toggle="modal" data-target="#AddMeetingsModal" class="d-none d-sm-inline-block btn btn-md btn-success shadow-sm"> Add New R2R Meeting  
</a>
</div>
</div>
</div>
 -->

<div class="row">
<div class="col-lg-12 col-md-12 col-sm-6 col-xs-12">

<!-- DataTales Example -->
<div class="card shadow mb-4">

<!-- Card Header -->
<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">


<h5 class="m-0 font-weight-bold text-darkblue"> Referrals for {{firstname}} {{lastname}}</h5>


<form  class="form-inline" action="#">
<div class="row">

<div class="col-lg-6">
<label for="email">From:</label>
<input id="reffralfrom" ng-model="fromdate" title="datetimepicker"  ng-change="getReferralsByDate(<%= session.getAttribute("loginid") %>)" style="width: 80%;" />
</div>

<div class="col-lg-6">
<label for="pwd">To:</label>
<input id="reffralto" ng-model="todate" title="todatetimepicker" ng-change="getReferralsByDate(<%= session.getAttribute("loginid") %>)" style="width: 80%;" />
</div>



</div>
</form>
</div>


<div class="card-body">
<div class="table-responsive">
<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
<thead>
<tr>
<th>Date</th>
	<th>From</th>
	<th>Referral</th>
	<th>Inside/Outside</th>
	<th>Status</th>
	<th>Contact No.</th>
	<th>Email</th>
	<th>Comments</th>
</tr>
</thead>
		<tbody>
				<tr ng-repeat="item in getMemberReferrals" ng-if="item.referralStatus == 'O'" style="color:green;cursor:pointer;">
					<td data-toggle="modal" data-target="#myModal" ng-click="getReferenceDetail(item.memberReferralId)">{{item.referDate}}</td>
					<td data-toggle="modal" data-target="#myModal" ng-click="getReferenceDetail(item.memberReferralId)">{{item.memberFirstName}} {{item.memberMiddleName}} {{item.memberLastName}}</td>
					<td data-toggle="modal" data-target="#myModal" ng-click="getReferenceDetail(item.memberReferralId)">{{item.referralName}}</td>
					<td data-toggle="modal" data-target="#myModal" ng-click="getReferenceDetail(item.memberReferralId)">{{item.referralType}}</td>
					<td data-toggle="modal" data-target="#myModal" ng-click="getReferenceDetail(item.memberReferralId)">{{item.referralStatus1}}<span ng-if="item.referralStatus1 && item.referralStatus2"> & </span>{{item.referralStatus2}}</label></td>
					<td data-toggle="modal" data-target="#myModal" ng-click="getReferenceDetail(item.memberReferralId)">{{item.contactNumber}}</td>
					<td data-toggle="modal" data-target="#myModal" ng-click="getReferenceDetail(item.memberReferralId)">{{item.email}}</td>
					<td data-toggle="modal" data-target="#myModal" ng-click="getReferenceDetail(item.memberReferralId)">{{item.comments}}</td>
				</tr>
				<tr ng-repeat="item in getMemberReferrals" ng-if="item.referralStatus == 'W'" style="color:blue;cursor:pointer;">
					<td data-toggle="modal" data-target="#myModal" ng-click="getReferenceDetail(item.memberReferralId)">{{item.referDate}}</td>
					<td data-toggle="modal" data-target="#myModal" ng-click="getReferenceDetail(item.memberReferralId)">{{item.memberFirstName}} {{item.memberMiddleName}} {{item.memberLastName}}</td>
					<td data-toggle="modal" data-target="#myModal" ng-click="getReferenceDetail(item.memberReferralId)">{{item.referralName}}</td>
					<td data-toggle="modal" data-target="#myModal" ng-click="getReferenceDetail(item.memberReferralId)">{{item.referralType}}</td>
					<td data-toggle="modal" data-target="#myModal" ng-click="getReferenceDetail(item.memberReferralId)">{{item.referralStatus1}}<span ng-if="item.referralStatus1 && item.referralStatus2"> & </span>{{item.referralStatus2}}</label></td>
					<td data-toggle="modal" data-target="#myModal" ng-click="getReferenceDetail(item.memberReferralId)">{{item.contactNumber}}</td>
					<td data-toggle="modal" data-target="#myModal" ng-click="getReferenceDetail(item.memberReferralId)">{{item.email}}</td>
					<td data-toggle="modal" data-target="#myModal" ng-click="getReferenceDetail(item.memberReferralId)">{{item.comments}}</td>
				</tr>
				<tr ng-repeat="item in getMemberReferrals" ng-if="item.referralStatus == 'C'" style="color:red;cursor:pointer;">
					<td data-toggle="modal" data-target="#myModal" ng-click="getReferenceDetail(item.memberReferralId)">{{item.referDate}}</td>
					<td data-toggle="modal" data-target="#myModal" ng-click="getReferenceDetail(item.memberReferralId)">{{item.memberFirstName}} {{item.memberMiddleName}} {{item.memberLastName}}</td>
					<td data-toggle="modal" data-target="#myModal" ng-click="getReferenceDetail(item.memberReferralId)">{{item.referralName}}</td>
					<td data-toggle="modal" data-target="#myModal" ng-click="getReferenceDetail(item.memberReferralId)">{{item.referralType}}</td>
					<td data-toggle="modal" data-target="#myModal" ng-click="getReferenceDetail(item.memberReferralId)">{{item.referralStatus1}}<span ng-if="item.referralStatus1 && item.referralStatus2"> & </span>{{item.referralStatus2}}</label></td>
					<td data-toggle="modal" data-target="#myModal" ng-click="getReferenceDetail(item.memberReferralId)">{{item.contactNumber}}</td>
					<td data-toggle="modal" data-target="#myModal" ng-click="getReferenceDetail(item.memberReferralId)">{{item.email}}</td>
					<td data-toggle="modal" data-target="#myModal" ng-click="getReferenceDetail(item.memberReferralId)">{{item.comments}}</td>
				</tr>
			</tbody>
</table>
</div>
</div>
</div>

</div>
</div>



</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->
<div class="container">
				<div class="modal fade" id="myModal" role="dialog">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div   class="modal-header bg-gradient-primary">
							<h4 class="modal-title text-white" id="exampleModalLabel">Members Referrals</h4>
								<button type="button" class="close text-white" data-dismiss="modal"><i class="fa fa-times"></i></button>
								
							</div>
							<div class="modal-body">
								<div class="row">
									<div class="col-md-4">
										<div class="form-group">
											<label><b>Date:</b></label><br>{{getReferencebyid.referDate}} 
											
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<label><b>Close Date:</b></label><br>{{getReferencebyid.closeDate}} 
											
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<label><b>To</b></label><br>{{getReferencebyid.memberFirstName}} {{getReferencebyid.memberMiddleName}} {{getReferencebyid.memberLastName}}											
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<label><b>Approx Value:</b></label><br>{{getReferencebyid.apprValue}} 
											
										</div>
									</div>
								
									<div class="col-md-4">
										<div class="form-group">
											<label><b>Referral</b></label> <br> {{getReferencebyid.referralName}} 
											
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-4">
										<div class="form-group">
											<label><b>From</b></label><br>{{getReferencebyid.fromFirstName}} {{getReferencebyid.fromLastName}}									
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<label><b>Referral Type</b></label> <br> {{getReferencebyid.referralType}}											
										</div>
									</div>									
									<div class="col-md-4">
										<div class="form-group">
											<label><b>Contact Number</b></label> <br> {{getReferencebyid.contactNumber}}										
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-8">
										<div class="form-group">
											<label><b>Referral Status</b></label> <br> {{getReferencebyid.referralStatus1}}, {{getReferencebyid.referralStatus2}}											
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<label><b>E-mail</b></label> <br> {{getReferencebyid.email}}										
										</div>
									</div>
									
								</div>
								<div class="row">										
									<div class="col-md-12">
										<div class="form-group">
											<label><b>Address</b></label><br>  {{getReferencebyid.address}}
										</div>
									</div>
								</div>
								<div class="row">																			
									<div class="col-md-12">
										<div class="form-group">
											<label><b>Comments</b></label><br>  {{getReferencebyid.comments}} 												
										</div>
									</div>
								</div>
								<select class="form-control" name="referalstatusE" id="referalstatusE" ng-model="getReferencebyid.referralStatus" ng-change="ChangeRefStatus(getReferencebyid.memberReferralId, getReferencebyid.referralStatus)">
									<option value="">--- Change Status ---</option>
									<option value="O">Open</option>
									<option value="W">Working</option>
									<option value="C">Close</option>
								</select>		
								<div class="row" ng-if="getReferencebyid.referralStatus == 'C'">
									<div class="col-md-6">
									<lable>Reason<font color="red" size="3">*</font></lable>
										<select class="form-control" name="CloseReason" id="CloseReason" ng-model="getReferencebyid.CloseReason" >
											<option value="">--- Select Reason ---</option>
											<option value="Success">Success</option>
											<option value="Rejected">Rejected</option>
											<option value="Not serviced">Not serviced</option>
										</select>
										<label ng-if="reasonError == 1" style="color:red;">{{reasonMsg}}</label>
									</div>
									<div class="col-md-6">
										<lable>Comments</lable>
										<textarea class="form-control" name="CloseComment" id="CloseComment" ng-model="getReferencebyid.CloseComment"></textarea>
									</div>
									
								</div>
								<br><br>
								<div class="row text-center" ng-if="getReferencebyid.referralStatus == 'C'">
								
									<button ng-disable="spin == 1"  style="width:100%;" class="d-none d-sm-inline-block btn btn-md btn-success shadow-sm" ng-click="CloseRef(getReferencebyid.memberReferralId)"><i class="fa fa-refresh fa-spin" ng-show="spin == 1"></i> Close Reference</button>
								<!-- <a href="#" data-toggle="modal" data-target="#AddMeetingsModal" class="d-none d-sm-inline-block btn btn-md btn-success shadow-sm"> Add New R2R Meeting -->
								</div>																					
							</div>						
						</div>
					</div>
				</div>
			</div>
<!-- Footer -->
<footer class="sticky-footer bg-white">
<div class="container my-auto">
<div class="copyright text-center my-auto">
<span>Content Copyright &copy; RMBF Tamilnadu 2020 </span> &nbsp; |  &nbsp;
<span> Powered by: <a href="https://www.myclubman.com/" style="color: #858796;" target="_blank"> MyClubman.com </a></span>
</div>
</div>
</footer>
<!-- End of Footer -->

</div>
<!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->



<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
<i class="fas fa-angle-up"></i>
</a>






<!--  Add New R2R Meetings Modal-->
<div class="modal fade" id="AddMeetingsModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
<%@include file="member_meeting.jsp" %>
</div>








<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
<div class="modal-dialog" role="document">
<div class="modal-content">
<div class="modal-header">
<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
<button class="close" type="button" data-dismiss="modal" aria-label="Close">
<span aria-hidden="true">×</span>
</button>
</div>
<div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
<div class="modal-footer">
<button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
<a class="btn btn-primary" href="login.html">Logout</a>
</div>
</div>
</div>
</div>






<!-- Bootstrap core JavaScript-->

<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>-->
<script src="<%=request.getContextPath() %>/resources/front2/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<!--<script src="vendor/jquery-easing/jquery.easing.min.js"></script>-->


<!---->
<script src="<%=request.getContextPath() %>/resources/front2/js/main.js"></script>

<!-- Custom scripts for all pages-->
<!--<script src="js/sb-admin-2.min.js"></script>-->


<!-- Page level custom scripts this js for Date and time id's function -->
<script src="<%=request.getContextPath() %>/resources/front2/js/kendo-function.js"></script>   



<!--***********************************-->
<!--<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>-->

<script>
$('.select2').select2();
</script>




<script>
/***************** Dropdown Search & Select Strat ***********************/
$(document).ready(function() {
var x = new SlimSelect({
select: '#demo'
});
});



$(document).ready(function() {
var x = new SlimSelect({
select: '#metmemberid'
});
});

/***************** Dropdown Search & Select End ***********************/

</script>


<script>

</script>

</body>


</html>
