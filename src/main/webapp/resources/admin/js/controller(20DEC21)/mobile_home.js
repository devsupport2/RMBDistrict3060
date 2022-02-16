app.controller('MobileHomeCtrl',function($scope, $http, $window, $filter, $location) {
		var baseUrl = $location.protocol()+"://"+location.host+u;	
		
		
		
			
	// ------------------------ Top Meeting Count
	
	$scope.getTopMemberMeeting = function() {	
		var date = new Date(), y = date.getFullYear(), m = date.getMonth();
    	var fromdate = $filter('date')(new Date(y, m - 1, 1),'dd/MM/yyyy'); 
		var todate = $filter('date')(new Date(y, m , 0),'dd/MM/yyyy'); 
	//	alert(fromdate);
		//alert(todate);
		var link = baseUrl+'getTopMemberMeeting?fromdate='+fromdate+'&todate='+todate;			
		//alert(link);
		$http.get(link).success(function(data, status, headers, config) {
			$scope.getTopmemberMeeting = data;			
		}).error(function(data, status, headers, config) {
			$scope.getTopmemberMeeting = "Response Fail";
		});
	}
	
	// ------------------------ getTopMemberBusiness
	$scope.getTopMemberBusiness = function() {	
		$scope.date = new Date(), $scope.y = $scope.date.getFullYear(), $scope.m = $scope.date.getMonth();
		$scope.fromdate = $filter('date')(new Date($scope.y, $scope.m - 1, 1),'dd/MM/yyyy'); 
		$scope.todate = $filter('date')(new Date($scope.y, $scope.m  , 0),'dd/MM/yyyy'); 
		//alert($scope.fromdate);
		const monthNames = ["January", "February", "March", "April", "May", "June",
			"July", "August", "September", "October", "November", "December"
			];
		$scope.m=monthNames[$scope.m-1];
		var link = baseUrl+'getTopMemberBusiness?fromdate='+$scope.fromdate+'&todate='+$scope.todate;			
		//alert(link);
		$http.get(link).success(function(data, status, headers, config) {
			$scope.getTopMemberBusinessdata = data;			
		}).error(function(data, status, headers, config) {
			$scope.getTopMemberBusinessdata = "Response Fail";
		});
	}
	
		
			// ------------------------getTopReferal
	$scope.getTopReferal = function() {	
		var date = new Date(), y = date.getFullYear(), m = date.getMonth();
    	var fromdate = $filter('date')(new Date(y, m - 1, 1),'dd/MM/yyyy'); 
		var todate = $filter('date')(new Date(y, m , 0),'dd/MM/yyyy'); 
	//	alert(fromdate);
		var link = baseUrl+'getTopMemberReferal?fromdate='+fromdate+'&todate='+todate;			
		//alert(link);
		$http.get(link).success(function(data, status, headers, config) {
			$scope.getTopReferaldata = data;			
		}).error(function(data, status, headers, config) {
			$scope.getTopReferaldata = "Response Fail";
		});
	}
	
			//------------------getThirdSummary--------------------------		
		$scope.getThirdSummary = function() {
		//	$scope.startdate3= document.getElementById("summaryfrom").value;
			//$scope.enddate3= document.getElementById("summaryto").value;
			
				var date = new Date(), y = date.getFullYear(), m = date.getMonth();
		    	var fromdate = $filter('date')(new Date(y, m - 1, 1),'dd/MM/yyyy'); 
				var todate = $filter('date')(new Date(y, m , 0),'dd/MM/yyyy'); 
				
				var link = baseUrl+'getThirdSummary?fromdate='+$scope.fromdate+'&todate='+$scope.todate;
			
				//alert(link);
				$http.get(link).success(function(data, status, headers, config) {
					$scope.getThirdSummarydata = data;			
				}).error(function(data, status, headers, config) {
					$scope.getThirdSummarydata = "Response Fail";
				});	
			}	
			//-------------------------------------------
			
			
		});