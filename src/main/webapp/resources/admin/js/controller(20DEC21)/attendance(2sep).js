app.controller('AttendanceCtrl',function($scope, $http, $window, $filter, $location) {
	
		var baseUrl = $location.protocol()+"://"+location.host+u;
	
		
			var link = baseUrl+'getAllMemberNameList';
					$http.get(link).success(function(data, status, headers, config) {
						$scope.getmember1 = data;	
					
										
					}).error(function(data, status, headers, config) {
						$scope.getmember1 = "Response Fail";
					});
		
		
		var link = baseUrl+'getAllFellowshipName';  
		
		$http.get(link).success(function(data, status, headers, config) {
			$scope.getAllFellowshipNameList = data;
			
		}).error(function(data, status, headers, config) {
			$scope.getAllFellowshipNameList = "Response Fail";
		});
		
		var link = baseUrl + 'Events';
		$http.get(link).success(function(data, status, headers, config)
				{
					$scope.events = data;
				}).error(function(data, status, headers, config) 
				{
					$scope.events = "Response Fail";
				});
		
			$scope.addRow = function(title,id,parent_id,order,answer) {
		
				$scope.title=title;
				$scope.id=id;
				$scope.parent_id=parent_id;
				$scope.order=order;
				$scope.value=answer;
		
		$scope.addInsertRow.push({'title':$scope.title, 'order':$scope.order,'id':$scope.id,'parent_id':$scope.parent_id,'answer':$scope.value});
		console.log($scope.value);
		
	
	};
		
	});