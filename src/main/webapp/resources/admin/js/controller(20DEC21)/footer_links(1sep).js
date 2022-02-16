app.controller('footerctrl',function($scope, $http, $window, $filter, $location) {
		var baseUrl = $location.protocol()+"://"+location.host+u;	
		
		

		var link = baseUrl+'getSocialMediaLinks';
		$http.get(link).success(function(data, status, headers, config) {
			$scope.getsocialmedialinks = data;
		}).error(function(data, status, headers, config) {
			$scope.getsocialmedialinks = "Response Fail";
		});
		




});