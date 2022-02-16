app.controller('frontEventCtrl', function($scope, $http, $window, $filter,
		$location) {

	var baseUrl = $location.protocol() + "://" + location.host + u;
	$scope.varE=0;
	$scope.varP=0;
	$scope.todaydate = $filter('date')(new Date(),'yyyy-MM-dd');

	
$scope.ActiveTab = "Upcoming";
	
	
	$scope.upcomingevent = function(){
		
		
	$scope.ActiveTab = "Upcoming";
	var link = baseUrl + 'Events';
	$http.get(link).success(function(data, status, headers, config) {
		$scope.events = data;
	}).error(function(data, status, headers, config) {
		$scope.events = "Response Fail";
	});
	}
	$scope.pastevent = function(){
	
		$scope.ActiveTab = "Past";
	var link = baseUrl + 'pastEvents';
	$http.get(link).success(function(data, status, headers, config) {
		$scope.events = data;
	}).error(function(data, status, headers, config) {
		$scope.events = "Response Fail";
	});
	}
	
	
	
	$scope.setFound = function(){
		$scope.varE = 1;
	}
	$scope.setFoundP = function(){
		$scope.varP = 1;
	}
	$scope.redirecttoeventdetail = function(id) {
		$window.location.href = url + 'event_detail?id=' + id;
	}
	
	$scope.redirectToRegisteredMEmbersDirectory = function(eid){
		$window.location.href = url+'registered_members_directory?event_id='+eid;
	}
	
	
	
	$scope.GetDetailsOfcharges=function(eventId){
		
		console.log($scope.events);
		
	const EventData = $scope.events.find(element => element.eventId);
	$scope.Id=EventData.eventId;
	console.log($scope.Id);
	var link = baseUrl + 'getEventChargesList?eventid='+$scope.Id;			
		$http.get(link).success(function(data, status, headers, config) {
			$scope.geteventchargesbyid = data;
		}).error(function(data, status, headers, config) {
			$scope.geteventchargesbyid = "Response Fail";
		});
	}	
	
	
				$scope.redirectToNextPage = function(membertype, eventId) {
		//alert("hello");
		//alert($scope.Id);
		if (membertype == "RMBFB Member") {
			$window.location.href = url + 'login_member?membertype=' + membertype + '&eid=' + $scope.Id;
		} else {
			//$window.location.href = url+'get_registered?membertype='+membertype+'&eid='+eid;
			$window.location.href = url + 'registration?membertype=' + membertype + '&eid=' + $scope.Id;
		}
	}
	
	$scope.eventCharges = function(membertype) {
		//alert("enteressd");
		//alert(membertype);
		var link = baseUrl + 'getEventChargesById?EventChargesId=' + membertype;
		$http.get(link).success(function(data, status, headers, config) {
			$scope.getChargesValues = data;
			console.log("val", $scope.getChargesValues);
			$scope.Amount = $scope.getChargesValues.amount;
			//console.log("valbyId",$scope.Amount);
			$scope.Pay = parseInt($scope.Amount);
			console.log($scope.Pay);
			$scope.reqpaid = $scope.geteventdetailbyid.paid;

			console.log("df", $scope.reqpaid);
		}).error(function(data, status, headers, config) {
			$scope.getChargesValues = "Response Fail";
		});
	}



	
		
});