var app = angular.module("rcbs", []);

var u = "/";
var url = "/";
var adminurl = "/manageRmbDistrict/";

/*var u = "/RmbDistrict/";
var url = "/RmbDistrict/";
var adminurl = "/RmbDistrict/manageRmbDistrict/";*/

app.controller('chapterCtrl', function($scope, $http, $window, $filter,$location)
	{
  
	$scope.addchapter = function(){
			var baseUrl = $location.protocol() + "://" + location.host + u;
	//alert(baseUrl);
			var link = baseUrl+'addChapter';		
		//	alert(link);
			$http({url: link, method: "POST", data: $scope.chapter}).success(function(data, status, headers, config) {
				$scope.chapterdata = data;			
			  location.reload(true); 
				}).error(function(data, status, headers, config) {
					$scope.chapterdata = "Response Fail";
				});
			}

	
		$scope.getChapterById = function(chapter_id){
			var baseUrl = $location.protocol() + "://" + location.host + u;
			var link = baseUrl+'getChapterById?chapter_id='+chapter_id;	
			$http.get(link).success(function(data, status, headers, config) {			
				$scope.chapter=chapter_id;
				$scope.chapter = data;							
			}).error(function(data, status, headers, config) {
				$scope.chapter1 = "Response Fail";
			});
			
		};
		
	
			var baseUrl = $location.protocol() + "://" + location.host + u;
			var link = baseUrl+'getAllChapterName';  
		
				$http.get(link).success(function(data, status, headers, config) {
					$scope.getAllChapterdata = data;
					
				}).error(function(data, status, headers, config) {
					$scope.getAllChapterdata = "Response Fail";
				});
		
				var baseUrl = $location.protocol() + "://" + location.host + u;
				var link = baseUrl+'getAllFellowshipName';  
				
				$http.get(link).success(function(data, status, headers, config) {
					$scope.getAllFellowshipNameList = data;
					
				}).error(function(data, status, headers, config) {
					$scope.getAllFellowshipNameList = "Response Fail";
				});
			$scope.editChapter = function(chapter_id){
				var baseUrl = $location.protocol() + "://" + location.host + u;
				var link = baseUrl+'editChapterName';			
			//alert(link);
				$http({url: link, method: "POST", data: $scope.chapter}).success(function(data, status, headers, config) {
					$scope.chapter_id=chapter_id;
				
					$scope.chapter = data;			
				  location.reload(true); 
					}).error(function(data, status, headers, config) {
						$scope.chapter = "Response Fail";
					});
				
			};
			$scope.deletefellowship = function(fellowship_id) {
				var baseUrl = $location.protocol() + "://" + location.host + u;
				var link = baseUrl+'deleteLocation?fellowship_id='+fellowship_id;
				
				$http['delete'](link).success(function(data, status, headers, config) {
					$scope.fellowship_id=fellowship_id;
					$scope.fellowship = data;			
				  location.reload(true); 
					}).error(function(data, status, headers, config) {
						$scope.fellowship = "Response Fail";
					});
			}
			
		
	});