app.controller('businessGivenCtrl',function($scope, $http, $window, $filter, $location) {
	
		var baseUrl = $location.protocol()+"://"+location.host+u;
		
		$scope.getBusinessByDate = function(memberid) {
			$scope.fromdate = document.getElementById("businessfrom").value;
			$scope.todate = document.getElementById("businessto").value;
			
			var link = baseUrl+'getMemberBusinessReceivedById?memberid='+memberid+'&fromdate='+$scope.fromdate+'&todate='+$scope.todate;			
			
			$http.get(link).success(function(data, status, headers, config) {
				$scope.getMemberBusiness = data;			
			}).error(function(data, status, headers, config) {
				$scope.getMemberBusiness = "Response Fail";
			});
		}
		
		
		$scope.getMembersBusinessById = function(memberid,fromdate,todate) {	
			/*$scope.currentDate = $filter('date')(new Date(), 'dd');
			$scope.currentMonth = $filter('date')(new Date(), 'MM');
			$scope.currentYear = $filter('date')(new Date(), 'yyyy');
			$scope.fromdate = "0"+1+"/"+$scope.currentMonth+"/"+$scope.currentYear;		
			document.getElementById("businessfrom").value = $scope.fromdate;
			$scope.todate = $scope.currentDate+"/"+$scope.currentMonth+"/"+$scope.currentYear;
			document.getElementById("businessto").value = $scope.todate;*/		
			
			$scope.fromdate = fromdate;
			$scope.todate = todate;
			
			var link = baseUrl+'getMemberBusinessReceivedById?memberid='+memberid+'&fromdate='+$scope.fromdate+'&todate='+$scope.todate;			
			$http.get(link).success(function(data, status, headers, config) {
				$scope.getMemberBusiness = data;			
			}).error(function(data, status, headers, config) {
				$scope.getMemberBusiness = "Response Fail";
			});
			
			var link = baseUrl+'getMemberByMemberId?memberid='+memberid;			
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
		
		
		$scope.getMemberBusinessById = function(memberid) {	
			
			$scope.currentDateFrom = $filter('date')(new Date(new Date().setDate(new Date().getDate() - 30)), 'dd');
			$scope.currentDateTo = $filter('date')(new Date(), 'dd');
			$scope.currentMonthFrom = $filter('date')(new Date(new Date().setMonth(new Date().getMonth() - 1)), 'MM');
			$scope.currentMonthTo = $filter('date')(new Date(), 'MM');
			$scope.currentYear = $filter('date')(new Date(), 'yyyy');
			
			$scope.fromdate = $scope.currentDateFrom+"/"+$scope.currentMonthFrom+"/"+$scope.currentYear;		
			document.getElementById("businessfrom").value = $scope.fromdate;
			$scope.todate = $scope.currentDateTo+"/"+$scope.currentMonthTo+"/"+$scope.currentYear;
			document.getElementById("businessto").value = $scope.todate;	
			
			var link = baseUrl+'getMemberBusinessReceivedById?memberid='+memberid+'&fromdate='+$scope.fromdate+'&todate='+$scope.todate;
			
			$http.get(link).success(function(data, status, headers, config) {
				$scope.getMemberBusiness = data;			
			}).error(function(data, status, headers, config) {
				$scope.getMemberBusiness = "Response Fail";
			});
			
			var link = baseUrl+'getMemberByMemberId?memberid='+memberid;			
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
		
				
	});