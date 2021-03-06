app.controller('businessReceievdCtrl1',function($scope, $http, $window, $filter, $location) {
	
		var baseUrl = $location.protocol()+"://"+location.host+u;
		
		
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
			
			var link = baseUrl+'getMemberBusinessById?memberid='+memberid+'&fromdate='+$scope.fromdate+'&todate='+$scope.todate;
		//			alert(link);	
		
			$http.get(link).success(function(data, status, headers, config) {
				$scope.getMemberBusiness = data;			
			}).error(function(data, status, headers, config) {
				$scope.getMemberBusiness = "Response Fail";
			});
			
			var link = baseUrl+'getMemberByMemberId?memberid='+memberid;			
	//	alert(link);	
		
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
		/*	$scope.currentDate = $filter('date')(new Date(), 'dd');
			$scope.currentMonth = $filter('date')(new Date(), 'MM');
			$scope.currentYear = $filter('date')(new Date(), 'yyyy');
			$scope.fromdate = "0"+1+"/"+$scope.currentMonth+"/"+$scope.currentYear;		
			$scope.todate = $scope.currentDate+"/"+$scope.currentMonth+"/"+$scope.currentYear;
			
		*/	
			$scope.fromdate=document.getElementById("businessfrom").value ;
			
			 $scope.todate=document.getElementById("businessto").value ;			
			
			var link = baseUrl+'getMemberBusinessById?memberid='+memberid+'&fromdate='+$scope.fromdate+'&todate='+$scope.todate;			
		//alert(link);
			$http.get(link).success(function(data, status, headers, config) {
				$scope.getMemberBusiness = data;
				$scope.getBusinessByDate(memberid);			
			}).error(function(data, status, headers, config) {
				$scope.getMemberBusiness = "Response Fail";
			});
			
			var link = baseUrl+'getMemberByMemberId?memberid='+memberid;			
		//		alert(link);
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
		
			
		$scope.getBusinessByDate = function(memberid) {
			$scope.fromdate = document.getElementById("businessfrom").value;
			$scope.todate = document.getElementById("businessto").value;
			
			var link = baseUrl+'getMemberBusinessById?memberid='+memberid+'&fromdate='+$scope.fromdate+'&todate='+$scope.todate;			
		//	alert(link);
			$http.get(link).success(function(data, status, headers, config) {
				$scope.getMemberBusiness = data;			
			}).error(function(data, status, headers, config) {
				$scope.getMemberBusiness = "Response Fail";
			});
		}		
	});