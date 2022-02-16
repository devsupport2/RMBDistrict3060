<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Manage Meeting</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script src="<%=request.getContextPath() %>/resources/admin/js/jquery.min.js"></script>
	    <script src="<%=request.getContextPath() %>/resources/admin/js/bootstrap.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/angular.min.js"></script>
		<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/app.js"></script>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<link rel="shortcut icon" href="<%=request.getContextPath() %>/resources/front/images/favicon.png">
		<link href="<c:url value="/resources/admin/css/bootstrap.min.css"></c:url>" rel="stylesheet" type="text/css" />
		<link href="<c:url value="/resources/admin/css/menustyle.css"></c:url>" rel="stylesheet" type="text/css" />
		<script src="<%=request.getContextPath() %>/resources/admin/js/jquery.Jcrop.js"></script>
		<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/admin/css/jquery.Jcrop.css"	type="text/css" />
	</head>	
	<body ng-app="rcbs" ng-controller="meetingCtrl" ng-init="getMeeting(<%=session.getAttribute("fellowshipId") %>) || getMeetingSuperAdmin(<%=session.getAttribute("fellowshipId") %>) ">
		<%@include file="header.jsp" %>		
		<div class="panel-body">
			<div class="container">
				<div class="row panel panel-primary" style="width:auto;background-color:#eee;">
					<div class="col-md-3">
						<h3 style="color:#db3615"><!-- Manage --> Members Meeting</h3>    
					</div>
					<div class="col-md-3" align="center">
						<div class="form-group"style="margin-top:15px">
							<input ng-model="search" id="search" class="form-control" placeholder="Filter text">
						</div>
					</div>	
						
					 <div class="col-md-3" ng-show="<%=session.getAttribute("roleId") %> == '1'" style="margin-top:15px">
					
						<select ng-model="fellowship_id" id="fellowship_id" name="fellowship_name" ng-change="getMeeting(fellowship_id)" class="form-control input-lg2">
							<option value=""selected>Select Fellowship Name</option>
							<option ng-repeat="items in getAllFellowshipNameList" value="{{items.fellowship_id}}">{{items.fellowship_name}}</option>
						</select>
					</div>
					
					<div class="col-md-1" align="right" style="margin-top:15px">
						<div class="form-group">
							<a href="#" data-toggle="modal" data-target="#AddClub" class="btn btn-success btn-default">Add &nbsp;<span class="glyphicon glyphicon-plus"></span></a>
						</div>
					</div>		
								
					<div class="col-md-2" align="center">
						<div class="form-group" style="margin-top:15px">
							<select ng-model="pageSize" id="pageSize" class="form-control" style="width: 100%;">
						        <option value="5">5</option>
						        <option value="10">10</option>
						        <option value="15">15</option>
						        <option value="20">20</option>
						     </select>
						</div>
					</div>					
				</div>
				<div class="row">
					<div class="col-md-12">
						<form role="form" ng-submit="deleteMeeting()">
							<div class="table-responsive">
								<table id="mytable" class="table table-bordred table-striped">
									<thead>										
										<th>DATE</th>
										<th>MET WITH</th>	
										<th>INITIATED BY</th>																	
										<th><input type="checkbox" ng-model="selectedAll" ng-click="checkAll()"> All</th>
									</thead>
									<tbody ng-show="<%=session.getAttribute("roleId") %> == '2'">
										<tr ng-repeat="item in meeting | filter:search | startFrom:currentPage*pageSize | limitTo:pageSize | filter: { fellowship_id: fellowship_id}"  ng-if="item.role_id != 1"  style="cursor:pointer;cursor:hand">											
											
											<td data-toggle="modal" data-target="#myModal" ng-click='getMeetingDetail(item.oneToOneId)'>{{item.meetingDate}}</td>
											<td data-toggle="modal" data-target="#myModal" ng-click='getMeetingDetail(item.oneToOneId)'>{{item.memberFirstName}} {{item.memberLastName}} <br> {{item.fellowship_name}}</td>
											<td data-toggle="modal" data-target="#myModal" ng-click='getMeetingDetail(item.oneToOneId)'>{{item.inviteeFirstName}} {{item.inviteeLastName}}<br> {{item.fellowship_name}}</td>											
											<!-- <td data-toggle="modal" data-target="#myModal" ng-click='getNewsDetail(item.newsId)'>{{item.newsTitle}}</td> -->
											<td><input type="checkbox" ng-model="item.selected" value="{{item.oneToOneId}}"></td>
										</tr>
									</tbody>
									
									<tbody ng-show="<%=session.getAttribute("roleId") %> == '1'">
										<tr ng-repeat="item in meeting1 | filter:search | startFrom:currentPage*pageSize | limitTo:pageSize| filter: { fellowship_id: fellowship_id}"  ng-if="item.role_id != 1"  style="cursor:pointer;cursor:hand">											
											
											<td data-toggle="modal" data-target="#myModal" ng-click='getMeetingDetail(item.oneToOneId)'>{{item.meetingDate}}</td>
											<td data-toggle="modal" data-target="#myModal" ng-click='getMeetingDetail(item.oneToOneId)'>{{item.memberFirstName}} {{item.memberLastName}} <br> {{item.fellowship_name}}</td>
											<td data-toggle="modal" data-target="#myModal" ng-click='getMeetingDetail(item.oneToOneId)'>{{item.inviteeFirstName}} {{item.inviteeLastName}}<br> {{item.fellowship_name}}</td>											
											<!-- <td data-toggle="modal" data-target="#myModal" ng-click='getNewsDetail(item.newsId)'>{{item.newsTitle}}</td> -->
											<td><input type="checkbox" ng-model="item.selected" value="{{item.oneToOneId}}"></td>
										</tr>
									</tbody>
								</table>
								<div class="form-group" style="float:right; margin-right:100px">
									<input type="submit" id="Delete" name="submit" class="btn btn-danger" value="Delete">
								</div>
								<div class="clearfix"></div>							
							</div>
						</form>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 text-center" >
						<button type="submit" class="btn btn-primary btn-default" ng-disabled="currentPage <= 0" ng-click="currentPage=currentPage-1">
			    			<i class="glyphicon glyphicon-step-backward"></i>
			    		</button>
			    		{{currentPage+1}}/{{numberOfPages()}}
			    		<button type="submit" class="btn btn-primary" ng-disabled="currentPage >= meeting.length/pageSize - 1" ng-click="currentPage=currentPage+1">
			    			<i class="glyphicon glyphicon-step-forward"></i>
			    		</button>
					</div>
				</div>
			</div>
			
			<!--Edit Modal-->
			<div class="container">
				<div class="modal fade" id="myModal" role="dialog">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								<h4 class="modal-title">Members Meeting</h4>
							</div>
							<div class="modal-body">
								<div class="row">
									<div class="col-md-4">
										<div class="form-group">
											<label><b>Date:</b></label><br><!-- {{getMeetingbyid.meetingDate}} --> 
										<input type="text" id="dateofbirth" name="dateofbirth" ng-model="getMeetingbyid.meetingDate" class="form-control input-lg2" placeholder="DD/MM/YYYY">	
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<label><b>Met with</b></label><br><!-- </label><br>{{getMeetingbyid.memberFirstName}} {{getMeetingbyid.memberMiddleName}} {{getMeetingbyid.memberLastName}} -->
											
												
												<div class="team-members">
												<div style="margin-bottom: 0px;" class="form-group  input-group">
												<select  style="width: 100%;" id="demo1" name="metmemberid" id="metmemberid" class="form-control input-lg2" ng-model="getMeetingbyid.metMemberId" ng-change="setNewMemberId()">
												<option value="">Select</option>
													<option ng-repeat="item in getmember" value="{{item.memberId}}" >{{item.memberFirstName}} {{item.memberMiddleName}} {{item.memberLastName}}</option>
												</select>	
												</div>
												</div>
												
										
												
										</div>
									</div>
								
								
									<div class="col-md-4">
										<div class="form-group">
											<label><b>Initiated by</b></label> <br><!-- <br> {{getMeetingbyid.inviteeFirstName}} {{getMeetingbyid.inviteeLastName}} --> 
													<div class="team-members">
												<div style="margin-bottom: 0px;" class="form-group  input-group">
												<select  style="width: 100%;" id="demo1" name="metmemberid" id="metmemberid" class="form-control input-lg2" ng-model="getMeetingbyid.invitedByMemberId" ng-change="setNewMemberId()">
												<option value="">Select</option>
													<option ng-repeat="item in getmember" value="{{item.memberId}}" >{{item.memberFirstName}} {{item.memberMiddleName}} {{item.memberLastName}}</option>
												</select>	
												</div>
												</div>
										</div>
									</div>
								</div>
								<div class="row">										
									<div class="col-md-4">
										<div class="form-group">
											<label><b>Location</b></label><br>  <!-- {{getMeetingbyid.location}} -->
										<input type="text"  ng-model="getMeetingbyid.location" class="form-control input-lg2" >
										</div>
									</div>
									
									<div class="col-md-4">
										<div class="form-group">
											<label><b>Topics</b></label><br>  <!-- {{getMeetingbyid.conversationTopic}} 	 -->											
										<input type="text"  ng-model="getMeetingbyid.conversationTopic" class="form-control input-lg2" >
										</div>
									</div>
								</div>
								<div class="row">	
									<br>
									<div class="col-md-5"> </div>
									<div class="form-group" >
										<div class="col-md-4">
										<input type="submit"  name="submit" class="btn btn-success" ng-click="UpdateMeetingByAdmin(getMeetingbyid.oneToOneId)" value="Update ">
										<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
									</div>
									</div>
								</div>
								<!-- <div class="row">																			
									<div class="col-md-12">
										<div class="form-group">
											<label><b>Topics</b></label><br>  {{getMeetingbyid.conversationTopic}} 												
										<input type="text"  ng-model="getMeetingbyid.conversationTopic" class="form-control input-lg2" >
										</div>
									</div>
								</div>		 -->																					
							</div>						
						</div>
					</div>
				</div>
			</div>			
		</div><br>
		
		
					<div class="container">
				<div class="modal fade" id="AddClub" role="dialog">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								<h4 class="modal-title">Members Meeting</h4>
							</div>
							<div class="modal-body">
								<div class="row">
									<div class="col-md-4">
										<div class="form-group">
											<label><b>Date:</b></label><br><!-- {{getMeetingbyid.meetingDate}} --> 
										<input type="text" id="todatetimepickeredit" name="meetingdate" ng-model="meetingdate" class="form-control input-lg2" placeholder="DD/MM/YYYY">	
										</div>
									</div>
									
									<div class="col-md-4">
										<div class="form-group">
											<label><b>Initiated by</b></label> <br><!-- <br> {{getMeetingbyid.inviteeFirstName}} {{getMeetingbyid.inviteeLastName}} --> 
													<div class="team-members">
												<div style="margin-bottom: 0px;" class="form-group  input-group">
												<select  style="width: 100%;" id="demo1" name="metmemberid" id="metmemberid" class="form-control input-lg2" ng-model="tomemberid" ng-change="setNewMemberId()">
												<option value="">Select</option>
													<option ng-repeat="item in getmember" value="{{item.memberId}}" >{{item.memberFirstName}} {{item.memberMiddleName}} {{item.memberLastName}}</option>
												</select>
												</div>
												</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<label><b>Met with</b></label><br><!-- </label><br>{{getMeetingbyid.memberFirstName}} {{getMeetingbyid.memberMiddleName}} {{getMeetingbyid.memberLastName}} -->
											
												
												<div class="team-members">
												<div style="margin-bottom: 0px;" class="form-group  input-group">
												<select  style="width: 100%;" id="demo1" name="metmemberid" id="metmemberid" class="form-control input-lg2" ng-model="metmemberid" ng-change="setNewMemberId()">
												<option value="">Select</option>
													<option ng-repeat="item in getmember" value="{{item.memberId}}" ng-hide="item.memberId == tomemberid">{{item.memberFirstName}} {{item.memberMiddleName}} {{item.memberLastName}}</option>
												</select>	
												</div>
												</div>
												
										
												
										</div>
									</div>
								
								
								</div>
								<div class="row">										
									<div class="col-md-4">
										<div class="form-group">
											<label><b>Location</b></label><br>  <!-- {{getMeetingbyid.location}} -->
										<input type="text"  ng-model="location" class="form-control input-lg2" >
										</div>
									</div>
									
									<div class="col-md-4">
										<div class="form-group">
											<label><b>Topics</b></label><br>  <!-- {{getMeetingbyid.conversationTopic}} 	 -->											
										<input type="text"  ng-model="topic" class="form-control input-lg2" >
										</div>
									</div>
								</div>
								<div class="row">	
									<br>
									<div class="col-md-5"> </div>
									<div class="form-group" >
										<div class="col-md-4">
										<input type="submit"  name="submit" class="btn btn-success" ng-click="saveOnetoOne1(tomemberid)" value="Add ">
										<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
									</div>
									</div>
								</div>
								<!-- <div class="row">																			
									<div class="col-md-12">
										<div class="form-group">
											<label><b>Topics</b></label><br>  {{getMeetingbyid.conversationTopic}} 												
										<input type="text"  ng-model="getMeetingbyid.conversationTopic" class="form-control input-lg2" >
										</div>
									</div>
								</div>		 -->																					
							</div>						
						</div>
					</div>
				</div>
			</div>	
		
		<script>
			$('#myModal').on('hidden', function()
					{
						document.location.reload();
					})
		</script>
		<%@include file="footer.jsp" %>
		<script>
			jQuery(function($) {
				 function readURL(input) {
				        if (input.files && input.files[0]) {
				            var reader = new FileReader();
				            
				            reader.onload = function (e) {
				            	if ($('#target').data('Jcrop')) {
								    $('#target').data('Jcrop').destroy();
								    $('#target').removeAttr('style');
								}
				                $('#target').attr('src', e.target.result);
				                
				                $('#target').Jcrop({
				                	aspectRatio: 2 / 1,	
				                	boxWidth: 650,   
				                    boxHeight: 325,
				                    setSelect: [ 200, 200, 650, 325 ],
				    				onSelect : setCoordinates
				    			});
				            }		            
				            reader.readAsDataURL(input.files[0]);
				        }
				    }
				    
				    $("#imgInp").change(function(){
				        readURL(this);
				    });
				    
					
			});
			function setCoordinates(c) {
				//alert("x " + c.x + " y " + c.y);
				//alert("w " + c.w + " h " + c.h);
				document.myForm.x.value = Math.round(c.x);
				document.myForm.y.value = Math.round(c.y);
				document.myForm.w.value = Math.round(c.w);
				document.myForm.h.value = Math.round(c.h);
			};
			function checkCoordinates() {
				if (document.myForm.x.value == "" || document.myForm.y.value == "") {
					alert("Please select a crop region");
					return false;
				} else {
					return true;
				}
			};			
		</script>
	</body>
</html>
