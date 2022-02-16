app.controller('chapterSummaryReferanceCtrl',function($scope, $http, $window, $filter, $location) {
		var baseUrl = $location.protocol()+"://"+location.host+u;	
		
		
		
		$scope.getChapterSummary = function() {			
	
		 $scope.fromdate=document.getElementById("chapterreferancefrom").value ;
			
		$scope.todate=	document.getElementById("chapterreferanceto").value ;			
			
			var link = baseUrl+'getChapterSummaryByDateFront?fromdate='+$scope.fromdate+'&todate='+$scope.todate;			
		//alert(link);
			$http.get(link).success(function(data, status, headers, config) {
				$scope.getChapterSummaryByDate = data;
				$scope.getChaptersSummarydate();
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
			$scope.fromdate = document.getElementById("chapterreferancefrom").value;
			$scope.todate = document.getElementById("chapterreferanceto").value;
			
			var link = baseUrl+'getChapterSummaryByDateFront?fromdate='+$scope.fromdate+'&todate='+$scope.todate;			
		//alert(link);
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
			$scope.fromdate = document.getElementById("chapterreferancefrom").value;
			$scope.todate = document.getElementById("chapterreferanceto").value;
			var link = baseUrl+'getMemberBusinessForChapterSummaryById?memberid='+memberid+'&fromdate='+$scope.fromdate+'&todate='+$scope.todate;			
			$http.get(link).success(function(data, status, headers, config) {
				$scope.getMemberBusiness = data;			
			}).error(function(data, status, headers, config) {
				$scope.getMemberBusiness = "Response Fail";
			});
		}
		
		
	});