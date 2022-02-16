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
			
		$scope.setFlag1 = function() {
			$scope.errorFellow = 0;
			$scope.errorEvent = 0;
			
		}
		
		
		$scope.setEvent = function(item)
		{
			item = JSON.parse(item);
		
			$scope.event_id = item.eventId;
			$scope.eventTime = item.eventTime;
		}

		$scope.addattendanceList = function(){
			
			if(!$scope.fellowship_id)
			{
				$scope.errorFellow = 1;
				$scope.fellowMessage="Please select Fellowship Id";
			
			}
			else if(!$scope.event_id)
			{
				$scope.errorEvent = 1;
				$scope.eventMessage="Please select Event Id";
		
			}
			else
			{
				var flag = 0;
				for(i in $scope.getmember1)
				{
					$scope.getmember1[i].event_id = parseInt($scope.event_id);
					
					if(!$scope.getmember1[i].attendant_status)
					{
						flag +=1;
						//alert("Please select status for "+$scope.getmember1[i].firstName+" "+$scope.getmember1[i].lastName);
						
						document.getElementById("radio"+i).focus();
						$scope.getmember1[i].ErrorMessage = "Please Select atleast one Status";
						return;
					}
					$scope.getmember1[i].ErrorMessage = "";
				}
				
				
				if(flag == 0)
				{
					var link = baseUrl+'addAttendanceList';		
					
					$http({url: link, method: "POST", data: $scope.getmember1}).success(function(data, status, headers, config) {
							$scope.addattendanceListdata = data;			
						  //location.reload(true); 
							}).error(function(data, status, headers, config) {
								$scope.addattendanceListdata = "Response Fail";
							});
						}
				}
				
			}
		
		
		
		
	});