
app.controller('memberMeetingCtrl1',function($scope, $http, $window, $filter, $location) {
		var baseUrl = $location.protocol()+"://"+location.host+u;	
	
	
		
		$scope.getMembersMeetingsDetailById = function(memberid,fromdate,todate) {	
			/*$scope.currentDate = $filter('date')(new Date(), 'dd');
			$scope.currentMonth = $filter('date')(new Date(), 'MM');
			$scope.currentYear = $filter('date')(new Date(), 'yyyy');
			$scope.fromdate = "0"+1+"/"+$scope.currentMonth+"/"+$scope.currentYear;		
			document.getElementById("datepicker").value = $scope.fromdate;
			$scope.todate = $scope.currentDate+"/"+$scope.currentMonth+"/"+$scope.currentYear;
			document.getElementById("datepicker1").value = $scope.todate;*/			
			
			$scope.fromdate = fromdate;
			$scope.todate = todate;
			
			var link = baseUrl+'getMemberMeetingsByIdRec?memberid='+memberid+'&fromdate='+$scope.fromdate+'&todate='+$scope.todate;
			//alert(link);
			$http.get(link).success(function(data, status, headers, config) {
				$scope.getMemberMeetings = data;			
			}).error(function(data, status, headers, config) {
				$scope.getMemberMeetings = "Response Fail";
			});
			
			var link = baseUrl+'getMemberMeetingsByIdRec?memberid='+memberid;			
			$http.get(link).success(function(data, status, headers, config) {
				$scope.getmemberdetail = data;
				
				$scope.firstname = $scope.getmemberdetail.memberFirstName;
				$scope.lastname = $scope.getmemberdetail.memberLastName;
				$scope.businesscategoryname = $scope.getmemberdetail.businessCategoryName;
				$scope.memberemail = $scope.getmemberdetail.memberEmail;
				$scope.membermobileno = $scope.getmemberdetail.memberMobileNumber;
				$scope.profilepic = $scope.getmemberdetail.memberProfilePicture;
				
			}).error(function(data, status, headers, config) {
				$scope.getmemberdetail = "Response Fail";
			});
		}
		
		
		
		
		
		
		
		
		
		
		$scope.getMemberMeetingsDetailById = function(memberid) {	
			$scope.currentDate = $filter('date')(new Date(), 'dd');
			$scope.currentMonth = $filter('date')(new Date(), 'MM');
			$scope.currentYear = $filter('date')(new Date(), 'yyyy');
			$scope.fromdate = "0"+1+"/"+$scope.currentMonth+"/"+$scope.currentYear;		
			document.getElementById("datetimepicker").value = $scope.fromdate;
			$scope.todate = $scope.currentDate+"/"+$scope.currentMonth+"/"+$scope.currentYear;
			document.getElementById("todatetimepicker").value = $scope.todate;			
			
			var link = baseUrl+'getMemberMeetingsByIdRec?memberid='+memberid+'&fromdate='+$scope.fromdate+'&todate='+$scope.todate;
		//	alert(link);
			$http.get(link).success(function(data, status, headers, config) {
				$scope.getMemberMeetings = data;			
			}).error(function(data, status, headers, config) {
				$scope.getMemberMeetings = "Response Fail";
			});
			
			var link = baseUrl+'getMemberDetailByMemberId?memberid='+memberid;			
			$http.get(link).success(function(data, status, headers, config) {
				$scope.getmemberdetail = data;
				
				$scope.firstname = $scope.getmemberdetail.memberFirstName;
				$scope.lastname = $scope.getmemberdetail.memberLastName;
				$scope.businesscategoryname = $scope.getmemberdetail.businessCategoryName;
				$scope.memberemail = $scope.getmemberdetail.memberEmail;
				$scope.membermobileno = $scope.getmemberdetail.memberMobileNumber;
				$scope.profilepic = $scope.getmemberdetail.memberProfilePicture;
				
			}).error(function(data, status, headers, config) {
				$scope.getmemberdetail = "Response Fail";
			});
		}
		
		$scope.getMeetingsByDate = function(memberid) {
			$scope.fromdate = document.getElementById("datetimepicker").value;
			$scope.todate = document.getElementById("todatetimepicker").value;
			
			var link = baseUrl+'getMemberMeetingsByIdRec?memberid='+memberid+'&fromdate='+$scope.fromdate+'&todate='+$scope.todate;
			//alert(link);
			$http.get(link).success(function(data, status, headers, config) {
				$scope.getMemberMeetings = data;			
			}).error(function(data, status, headers, config) {
				$scope.getMemberMeetings = "Response Fail";
			});
		}	
		
		
		
		var link = baseUrl+'getAllMembersDirectory';
		$http.get(link).success(function(data, status, headers, config) {
			$scope.getmember = data;			
		}).error(function(data, status, headers, config) {
			$scope.getmember = "Response Fail";
		});		

		$scope.setNewMemberId = function() {
			$scope.memberid = $scope.metmemberid;
		}
		
		$scope.saveOnetoOne = function(invitedbymemberid) {		
			
			$scope.meetingdate = document.getElementById("todatetimepickeredit").value;	
			
			//$scope.invitedbymemberid = "00";	
			
			if($scope.metmemberid == undefined || $scope.metmemberid == ""){
				$window.alert("Please select member!");
				document.getElementById("metmemberid").focus();
				return;
			} /*else if($scope.invitedbymemberid == undefined){
				$window.alert("Please select invited by member!");
				document.getElementById("invitedbymemberid").focus();
				return;
			}*/ else if($scope.meetingdate == undefined){
				$window.alert("Please select meeting date!");
				document.getElementById("meetingdate").focus();
				return;
			} else if($scope.location == undefined){
				$window.alert("Please enter meeting location!");
				document.getElementById("location").focus();
				return;
			} else if($scope.topic == undefined){
				$window.alert("Please enter topics of conversation!");
				document.getElementById("topic").focus();
				return;
			} else {
				$scope.spin = 1;				
				var link = baseUrl+'saveOnetoOne?metmemberid='+$scope.metmemberid+'&invitedbymemberid='+invitedbymemberid+'&meetingdate='+$scope.meetingdate+'&location='+$scope.location+'&topic='+$scope.topic;				
			//alert(link);
				$http.post(link).success(function(data, status, headers, config) {
					$scope.saveonetoone = data;
					$scope.spin = 0;					
					$window.alert("Data submitted successfully");
					//if(temp == "new"){
					//	$window.location.href = url + 'one_to_one';
					//} else {
						$window.location.href = url + 'member_meeting_list';
					//};					
				}).error(function(data, status, headers, config) {
					$scope.saveonetoone = "Response Fail";
				});
			}
		};	
		
		
		
		
	});


