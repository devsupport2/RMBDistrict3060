<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Manage Chapter List</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script src="<%=request.getContextPath() %>/resources/admin/js/jquery.min.js"></script>
	    <script src="<%=request.getContextPath() %>/resources/admin/js/bootstrap.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/angular.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/chapter.js"></script>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<link rel="shortcut icon" href="<%=request.getContextPath() %>/resources/front/images/favicon.png">
		<link href="<c:url value="/resources/admin/css/bootstrap.min.css"></c:url>" rel="stylesheet" type="text/css" />
		<link href="<c:url value="/resources/admin/css/menustyle.css"></c:url>" rel="stylesheet" type="text/css" />
		<style>
			input[type="date"]:hover::-webkit-calendar-picker-indicator {
			  color: red;
			}
			input[type="date"]:hover:after {
			  content: " Date Picker ";
			  color: #555;
			  padding-right: 5px;
			}
			input[type="date"]::-webkit-inner-spin-button {
			  /* display: none; <- Crashes Chrome on hover */
			  -webkit-appearance: none;
			  margin: 0;
			}
		</style>
	</head>	
	<body ng-app="rcbs" ng-controller="chapterCtrl" ng-init="getfellowshipList()">
		<%@include file="header.jsp" %>		
		<div class="panel-body">
			<div class="container">
				<div class="row panel panel-primary" style="width:auto;background-color:#eee;">
					<div class="col-md-4" align="left">
						<h3>Manage Email-Relay</h3>					
					</div>
					<div class="col-md-4" align="center" style="margin-top:15px">
						<div class="input-group">
							<input type="text" id="search" name="search" ng-model="search" class="form-control" placeholder="Filter Text" ng-keyup="$event.keyCode == 13 ? searchRecord() : null"/>
							<a class="input-group-addon" ng-click="searchRecord()" style="cursor: pointer;">
								<span class="glyphicon glyphicon-search"></span>
							</a>
						</div>
					</div>
					<div class="col-md-2" align="right" style="margin-top:15px">
						<div class="form-group">
							<a href="#" data-toggle="modal" data-target="#AddClub" class="btn btn-success btn-default">Add &nbsp;<span class="glyphicon glyphicon-plus"></span></a>
						</div>
					</div>
					<div class="col-md-2" align="right" style="margin-top:15px">
						<div class="form-group">
							<select id="pageSize" name="pageSize" ng-model="pageSize" ng-options="item for item in pages" class="form-control" ng-change="changepage()"></select>
						</div>
					</div>					
				</div>
				<div class="row">
					<div class="col-md-12">
						<form role="form" ng-submit="deleteClub()">
							<div class="table-responsive">
								<table id="mytable" class="table table-bordred table-striped">
									<thead>										
										<th width="25%">Fellowship Name</th>
										<th width="25%">Email</th>
										<th width="25%">Username</th>
										<th width="15%">Password</th>
										
									<!-- 	<th width="65%">Description</th>	 -->																		
										<th width="10%"><input type="checkbox" ng-model="selectedAll" ng-click="checkAll()"> All</th>
									</thead>
									 <tbody>
										<tr ng-repeat="item in getAllChapterdata" style="cursor:pointer;cursor:hand">					
											<td data-toggle="modal" data-target="#EditClub" ng-click='getChapterById(item.chapter_id)'>{{item.fellowship_name}}</td>					
											<td data-toggle="modal" data-target="#EditClub" ng-click='getChapterById(item.chapter_id)'>{{item.chapter_email}}</td>					
											<td data-toggle="modal" data-target="#EditClub" ng-click='getChapterById(item.chapter_id)'>{{item.chapter_username}}</td>					
											<td data-toggle="modal" data-target="#EditClub" ng-click='getChapterById(item.chapter_id)'>{{item.chapter_password}}</td>					
																						
											<td><input type="checkbox" ng-model="item.selected" value="{{item.fellowship_id}}"></td>
										</tr>
									</tbody> 
								</table>
								<div class="form-group" style="float:right; margin-right:65px">
									<input type="submit" ng-click="deletefellowship(item.fellowship_id)" id="Delete" name="submit" class="btn btn-danger" value="Delete">
								</div>
								<div class="clearfix"></div>							
							</div>
						</form>
					</div>
				</div>
				
			</div>
			
			<!--Edit Modal-->
			<div class="container">
				<div class="modal fade" id="EditClub" role="dialog">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								<h4 class="modal-title">Edit Fellowship Info</h4>
							</div>
													<div class="modal-body">							
								<form role="form">
									<div class="row">
									<div class="col-md-6">
											<div class="form-group">
												<label>Fellowship Name<font color="red" size="3">*</font></label>									
													<select ng-model="chapter.fellowship_id" id="fellowship_id" name="fellowship_name"  class="form-control input-lg2">
														<option value=""selected>Select Fellowship Name</option>
														<option ng-repeat="items in getAllFellowshipNameList" value="{{items.fellowship_id}}">{{items.fellowship_name}}</option>
													</select>

											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>Email<font color="red" size="3">*</font></label>									
												<input type="email" class="form-control" id="chapter_email" name="chapter_email" ng-model="chapter.chapter_email" placeholder="Enter Email" autofocus>
											</div>
										</div>
									</div>
									 <div class="row">								
										<div class="col-md-6">
											<div class="form-group">
												<label>Username<font color="red" size="3">*</font></label>
												<input type="text" class="form-control" id="chapter_username" name="chapter_username" ng-model="chapter.chapter_username" placeholder="Enter Username" autofocus>
											</div>
										</div>	
										<div class="col-md-6">
											<div class="form-group">
												<label>Password<font color="red" size="3">*</font></label>
												<input type="text" class="form-control" id="chapter_password" name="chapter_password" ng-model="chapter.chapter_password" placeholder="Enter Password" autofocus>
											</div>
										</div>									
									</div>	 												
								</form>							
							</div>
							<div class="modal-footer">
							
								<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
									<button type="button" ng-click="editChapter(chapter.chapter_id)" class="btn btn-success">Update</button>
									<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
								</div>								
							</div>													
						</div>
					</div>
				</div>
				<div class="modal fade" id="AddClub" role="dialog">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								<h4 class="modal-title">Add Chapter Info</h4>
							</div>
							<div class="modal-body">							
								<form role="form">
									<div class="row">
									<div class="col-md-6">
											<div class="form-group">
												<label>Fellowship Name<font color="red" size="3">*</font></label>									
													<select ng-model="chapter.fellowship_id" id="fellowship_id" name="fellowship_name"  class="form-control input-lg2">
														<option value=""selected>Select Fellowship Name</option>
														<option ng-repeat="items in getAllFellowshipNameList" value="{{items.fellowship_id}}">{{items.fellowship_name}}</option>
													</select>

											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>Email<font color="red" size="3">*</font></label>									
												<input type="email" class="form-control" id="chapter_email" name="chapter_email" ng-model="chapter.chapter_email" placeholder="Enter Email" autofocus>
											</div>
										</div>
									</div>
									 <div class="row">								
										<div class="col-md-6">
											<div class="form-group">
												<label>Username<font color="red" size="3">*</font></label>
												<input type="text" class="form-control" id="chapter_username" name="chapter_username" ng-model="chapter.chapter_username" placeholder="Enter Username" autofocus>
											</div>
										</div>	
										<div class="col-md-6">
											<div class="form-group">
												<label>Password<font color="red" size="3">*</font></label>
												<input type="text" class="form-control" id="chapter_password" name="chapter_password" ng-model="chapter.chapter_password" placeholder="Enter Password" autofocus>
											</div>
										</div>									
									</div>	 												
								</form>							
							</div>
							<div class="modal-footer">
				
								<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
									<button type="button" ng-click="addchapter()" class="btn btn-success">Save</button>
									<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
								</div>								
							</div>						
						</div>
					</div>
				</div>
			</div>			
		</div>		
		<%@include file="footer.jsp" %>
	</body>
</html>
