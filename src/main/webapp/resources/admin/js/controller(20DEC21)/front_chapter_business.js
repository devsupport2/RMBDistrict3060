app.controller('chapterSummaryBusinessCtrl',function($scope, $http, $window, $filter, $location) {
		var baseUrl = $location.protocol()+"://"+location.host+u;	
		
		$scope.getChapterSummary = function() {			
			
			$scope.currentDateFrom = $filter('date')(new Date(new Date().setDate(new Date().getDate() - 30)), 'dd');
			$scope.currentDateTo = $filter('date')(new Date(), 'dd');
			$scope.currentMonthFrom = $filter('date')(new Date(new Date().setMonth(new Date().getMonth() - 1)), 'MM');
			$scope.currentMonthTo = $filter('date')(new Date(), 'MM');
			$scope.currentYear = $filter('date')(new Date(), 'yyyy');
			
			$scope.fromdate = $scope.currentDateFrom+"/"+$scope.currentMonthFrom+"/"+$scope.currentYear;		
			document.getElementById("chapterbusinessfrom").value = $scope.fromdate;
			$scope.todate = $scope.currentDateTo+"/"+$scope.currentMonthTo+"/"+$scope.currentYear;
			document.getElementById("chapterbusinessto").value = $scope.todate;
			
			var link = baseUrl+'getChapterSummaryByDateFront?fromdate='+$scope.fromdate+'&todate='+$scope.todate;
			$http.get(link).success(function(data, status, headers, config) {
				$scope.getChapterSummaryByDate = data;
				
				$scope.totalReferenceGivenInside = 0;
				$scope.totalReferenceGivenOutside = 0;
				$scope.totalReferenceReceivedInside = 0;
				$scope.totalReferenceReceivedOutside = 0;
				$scope.totalMemberMeetingCount = 0;
				$scope.totalMemberBusinessTransactionCount = 0;
				
				for(i in $scope.getChapterSummaryByDate){
					$scope.totalReferenceGivenInside = $scope.totalReferenceGivenInside + $scope.getChapterSummaryByDate[i].referenceGivenInside;
					$scope.totalReferenceGivenOutside = $scope.totalReferenceGivenOutside + $scope.getChapterSummaryByDate[i].referenceGivenOutside;
					$scope.totalReferenceReceivedInside = $scope.totalReferenceReceivedInside + $scope.getChapterSummaryByDate[i].referenceReceivedInside;
					$scope.totalReferenceReceivedOutside = $scope.totalReferenceReceivedOutside + $scope.getChapterSummaryByDate[i].referenceReceivedOutside;
					$scope.totalMemberMeetingCount = $scope.totalMemberMeetingCount + $scope.getChapterSummaryByDate[i].memberMeetingCount;
					$scope.totalMemberBusinessTransactionCount = $scope.totalMemberBusinessTransactionCount + $scope.getChapterSummaryByDate[i].memberBusinessTransactionCount;
				}
				
				
			}).error(function(data, status, headers, config) {
				$scope.getChapterSummaryByDate = "Response Fail";
			});		
		}
		
		$scope.getChaptersSummarydate = function() {			
			
			$scope.fromdate = document.getElementById("chapterbusinessfrom").value;		
			$scope.todate = document.getElementById("chapterbusinessto").value;
			
			var link = baseUrl+'getChapterSummaryByDateFront?fromdate='+$scope.fromdate+'&todate='+$scope.todate;
		
			$http.get(link).success(function(data, status, headers, config) {
				$scope.getChaptersSummarybydate = data;
				
				$scope.totalReferenceGivenInside = 0;
				$scope.totalReferenceGivenOutside = 0;
				$scope.totalReferenceReceivedInside = 0;
				$scope.totalReferenceReceivedOutside = 0;
				$scope.totalMemberMeetingCount = 0;
				$scope.totalMemberBusinessTransactionCount = 0;
				
				for(i in $scope.getChaptersSummarybydate){
					$scope.totalReferenceGivenInside = $scope.totalReferenceGivenInside + $scope.getChaptersSummarybydate[i].referenceGivenInside;
					$scope.totalReferenceGivenOutside = $scope.totalReferenceGivenOutside + $scope.getChaptersSummarybydate[i].referenceGivenOutside;
					$scope.totalReferenceReceivedInside = $scope.totalReferenceReceivedInside + $scope.getChaptersSummarybydate[i].referenceReceivedInside;
					$scope.totalReferenceReceivedOutside = $scope.totalReferenceReceivedOutside + $scope.getChaptersSummarybydate[i].referenceReceivedOutside;
					$scope.totalMemberMeetingCount = $scope.totalMemberMeetingCount + $scope.getChaptersSummarybydate[i].memberMeetingCount;
					$scope.totalMemberBusinessTransactionCount = $scope.totalMemberBusinessTransactionCount + $scope.getChaptersSummarybydate[i].memberBusinessTransactionCount;
				}
				
			}).error(function(data, status, headers, config) {
				$scope.getChaptersSummarybydate = "Response Fail";
			});		
		}
		
		$scope.getChaptersSummary = function() {			
			$scope.fromdate = document.getElementById("chapterbusinessfrom").value;
			$scope.todate = document.getElementById("chapterbusinessto").value;
			
			var link = baseUrl+'getChapterSummaryByDateFront?fromdate='+$scope.fromdate+'&todate='+$scope.todate;			
			$http.get(link).success(function(data, status, headers, config) {
				$scope.getChapterSummaryByDate = data;									
				
				$scope.totalReferenceGivenInside = 0;
				$scope.totalReferenceGivenOutside = 0;
				$scope.totalReferenceReceivedInside = 0;
				$scope.totalReferenceReceivedOutside = 0;
				$scope.totalMemberMeetingCount = 0;
				$scope.totalMemberBusinessTransactionCount = 0;
				
				for(i in $scope.getChapterSummaryByDate){
					$scope.totalReferenceGivenInside = $scope.totalReferenceGivenInside + $scope.getChapterSummaryByDate[i].referenceGivenInside;
					$scope.totalReferenceGivenOutside = $scope.totalReferenceGivenOutside + $scope.getChapterSummaryByDate[i].referenceGivenOutside;
					$scope.totalReferenceReceivedInside = $scope.totalReferenceReceivedInside + $scope.getChapterSummaryByDate[i].referenceReceivedInside;
					$scope.totalReferenceReceivedOutside = $scope.totalReferenceReceivedOutside + $scope.getChapterSummaryByDate[i].referenceReceivedOutside;
					$scope.totalMemberMeetingCount = $scope.totalMemberMeetingCount + $scope.getChapterSummaryByDate[i].memberMeetingCount;
					$scope.totalMemberBusinessTransactionCount = $scope.totalMemberBusinessTransactionCount + $scope.getChapterSummaryByDate[i].memberBusinessTransactionCount;
				}
				
			}).error(function(data, status, headers, config) {
				$scope.getChapterSummaryByDate = "Response Fail";
			});
		}
		
		$scope.getMemberBusinessdetails = function(memberid,fromdate,todate) {	
			$scope.fromdate = document.getElementById("chapterbusinessfrom").value;
			$scope.todate = document.getElementById("chapterbusinessto").value;
			var link = baseUrl+'getMemberBusinessForChapterSummaryById?memberid='+memberid+'&fromdate='+$scope.fromdate+'&todate='+$scope.todate;			
			$http.get(link).success(function(data, status, headers, config) {
				$scope.getMemberBusiness = data;			
			}).error(function(data, status, headers, config) {
				$scope.getMemberBusiness = "Response Fail";
			});
		}
		
		
	});