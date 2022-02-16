app.controller('MobileMeetingCtrl',function($scope, $http, $window, $filter, $location) {
		var baseUrl = $location.protocol()+"://"+location.host+u;	
		
		$scope.given=1;
		$scope.flagger = "Given";
		
		$scope.todaydate = $filter('date')(new Date(),'yyyy-MM-dd');
	//	alert($scope.todaydate);

	
	$scope.getMemberMeetingsDetailById = function(memberid) {	
		$scope.given=1;
		$scope.flagger = "Given";
		var date = new Date(), y = date.getFullYear(), m = date.getMonth() ,d=date.getDate() - 30;
		var fromdate = $filter('date')(new Date(y, m , d),'dd/MM/yyyy'); 
		var todate = $filter('date')(new Date(),'dd/MM/yyyy'); 			
		
		var link = baseUrl+'getMemberMeetingsById?memberid='+memberid+'&fromdate='+fromdate+'&todate='+todate;
		//alert(link);
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
	
	
	
	$scope.getMemberMeetingsDetailByIdRecvied = function(memberid) {
		$scope.given=2;
		$scope.flagger = "Received";
		var date = new Date(), y = date.getFullYear(), m = date.getMonth() ,d=date.getDate() - 30;
		var fromdate = $filter('date')(new Date(y, m , d),'dd/MM/yyyy'); 
		var todate = $filter('date')(new Date(),'dd/MM/yyyy'); 			
		
		var link = baseUrl+'getMemberMeetingsByIdRec?memberid='+memberid+'&fromdate='+fromdate+'&todate='+todate;
	//	alert(link);
		$http.get(link).success(function(data, status, headers, config) {
			$scope.getMemberMeetingsdata = data;			
		}).error(function(data, status, headers, config) {
			$scope.getMemberMeetingsdata = "Response Fail";
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
	
	
	$scope.getMemberBusinessList = function() {	
		
		var date = new Date(), y = date.getFullYear(), m = date.getMonth() ,d=date.getDate() - 30;
		var fromdate = $filter('date')(new Date(y, m , d),'dd/MM/yyyy'); 
		var todate = $filter('date')(new Date(),'dd/MM/yyyy'); 			
		
		var link = baseUrl+'getMeetingList?fromdate='+fromdate+'&todate='+todate;			
	//	alert("getMemberBusinessList"+link);
		$http.get(link).success(function(data, status, headers, config) {
			$scope.getMemberMeetingList = data;	
			$scope.getMemberBusinessByDate();		
		}).error(function(data, status, headers, config) {
			$scope.getMemberMeetingList = "Response Fail";
		});
	}
	
	
});