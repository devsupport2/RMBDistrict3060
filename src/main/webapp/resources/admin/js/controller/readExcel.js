app.controller('ReadExcelCtrl', function($scope, $http, $window, $filter,
		$location, $timeout) {
	var baseUrl = $location.protocol() + "://" + location.host + url;
	//alert("mk");
	
	var link = baseUrl+'getAllFellowshipName';  
	
	$http.get(link).success(function(data, status, headers, config) {
		$scope.getAllFellowshipNameList = data;
		
	}).error(function(data, status, headers, config) {
		$scope.getAllFellowshipNameList = "Response Fail";
	});
	
	
	$scope.data=[];
	
	$scope.Upload = function () {
	        //Reference the FileUpload element.
	        var fileUpload = document.getElementById("fileUpload");
	 
	        //Validate whether File is valid Excel file.
	        var regex = /^([a-zA-Z0-9\s_\\.\-:\)\(])+(.xls|.xlsx)$/;
	                   
	      
	        if (regex.test(fileUpload.value.toLowerCase())) {
	        	
	            if (typeof (FileReader) != "undefined") {
	                var reader = new FileReader();
	 
	                //For Browsers other than IE.
	                if (reader.readAsBinaryString) {
	                    reader.onload = function (e) {
	                        ProcessExcel(e.target.result);
	                    };
	                    reader.readAsBinaryString(fileUpload.files[0]);
	                } else {
	                    //For IE Browser.
	                    reader.onload = function (e) {
	                        var data = "";
	                        var bytes = new Uint8Array(e.target.result);
	                        for (var i = 0; i < bytes.byteLength; i++) {
	                            data += String.fromCharCode(bytes[i]);
	                        }
	                        ProcessExcel(data);
	                    };
	                    reader.readAsArrayBuffer(fileUpload.files[0]);
	                }
	            } else {
	                alert("This browser does not support HTML5.");
	            }
	        } else {
	            alert("Please upload a valid Excel file.");
	        }
	    };
	    function ProcessExcel(data) {
	        //Read the Excel File data.
	        var workbook = XLSX.read(data, {
	            type: 'binary'
	        });
	 
	        //Fetch the name of First Sheet.
	        var firstSheet = workbook.SheetNames[0];
	 
	        //Read all rows from First Sheet into an JSON array.
	        var excelRows = XLSX.utils.sheet_to_row_object_array(workbook.Sheets[firstSheet]);
	 
	        //Create a HTML Table element.
	        var table = document.createElement("table");
	        table.border = "1";
	        table.setAttribute("name","exe");
	 
	        //Add the header row.
	        var row = table.insertRow(-1);
	        table.id='abc';
	    
	        headerCell = document.createElement("TH");
	        headerCell.innerHTML = "FirstName";
	        row.appendChild(headerCell);
	        
			headerCell = document.createElement("TH");
	        headerCell.innerHTML = "MiddleName";
	        row.appendChild(headerCell);
			
	        headerCell = document.createElement("TH");
	        headerCell.innerHTML = "LastName";
	        row.appendChild(headerCell);
			
	        headerCell = document.createElement("TH");
	        headerCell.innerHTML = "Email";
	        row.appendChild(headerCell);
	        
	        headerCell = document.createElement("TH");
	        headerCell.innerHTML = "Mobile";
	        row.appendChild(headerCell);
	       
	        headerCell = document.createElement("TH");
	        headerCell.innerHTML = "CompanyName";
	        row.appendChild(headerCell);
	        
	        headerCell = document.createElement("TH");
	        headerCell.innerHTML = "Club_Id";
	        row.appendChild(headerCell);
	        
	        var count = 0;
	        
	        
	        for (var i = 0; i < excelRows.length; i++) {
	        	
	            var row = table.insertRow(-1);
	            		
	            			var cell = row.insertCell(-1);
			                var abc =document.createElement('input');
						    abc.value = excelRows[i].FirstName;
					        abc.setAttribute("name","firstname");
					   		$scope.firstname =abc.value;			        
					        cell.appendChild(abc);
							

							var cell = row.insertCell(-1);
			                var abc2 =document.createElement('input');
			               
			                if(!excelRows[i].MiddleName){
			                	excelRows[i].MiddleName="";
					    	}
			                
						    abc2.value = excelRows[i].MiddleName;
					        abc2.setAttribute("name","middlename");     
					    	$scope.middlename =abc2.value; 	
						    cell.appendChild(abc2);
						    
						    var cell = row.insertCell(-1);
			                var abc3 =document.createElement('input');
						    abc3.value = excelRows[i].LastName;
					        abc3.setAttribute("name","lastname");     
					    	$scope.lastname =abc3.value;
						    cell.appendChild(abc3);
						    
						    var cell = row.insertCell(-1);
			                var abc4 =document.createElement('input');
						    abc4.value = excelRows[i].Email;
					        abc4.setAttribute("name","email");     
					    	$scope.email =abc4.value;
						    cell.appendChild(abc4);
						    abc4.className='test';
						    
						    var cell = row.insertCell(-1);
			                var abc5 =document.createElement('input');
						    abc5.value = excelRows[i].Mobile;
					        abc5.setAttribute("name","mobile");     
					    	$scope.mobile =abc5.value;
						    cell.appendChild(abc5);
						    abc5.className='test1';
						    
						    var cell = row.insertCell(-1);
			                var abc6 =document.createElement('input');
			                if(!excelRows[i].CompanyName){
			                	excelRows[i].CompanyName="";
					    	}
						    abc6.value = excelRows[i].CompanyName;
					        abc6.setAttribute("name","companyname");     
					    	$scope.companyname =abc6.value;
						    cell.appendChild(abc6); 
						    
						   
						    var cell = row.insertCell(-1);
			                var abc7 =document.createElement('input');
			                if(!excelRows[i].Club_Id){
			                	excelRows[i].Club_Id=0;
					    	}
						    abc7.value = excelRows[i].Club_Id;
					        abc7.setAttribute("name","memberclubname");     
					    	$scope.memberclubname =abc7.value;
						    cell.appendChild(abc7);
						 
				        $scope.data.push({"firstname":$scope.firstname,"middlename":$scope.middlename,"lastname":$scope.lastname,"email":$scope.email,"mobile":$scope.mobile,"companyname":$scope.companyname,"memberclubname":$scope.memberclubname});	   	   
		 }

	        var dvExcel = document.getElementById("dvExcel");
	        dvExcel.innerHTML = "";
	        dvExcel.appendChild(table);
			
	    };
	    


/*var i;
		$scope.addExcel = function(){
	console.log( $scope.data);
			$scope.fellowship_id=document.getElementById("fellowship_id").value;
			for(i=0;i<$scope.data.length;i++){
				
			}
			  angular.forEach($scope.data, function(item){
				var link = baseUrl+'addmemberdetail1?fellowship_id='+$scope.fellowship_id+'&firstname='+item.firstname+'&middlename='+item.middlename+'&lastname='+item.lastname+'&email='+item.email+'&mobile='+item.mobile;
		alert(link);
		$http.post(link).success(function(data, status, headers, config) {
			$scope.getState = data;
			$timeout(function() {						
				
				// location.reload(true); 
			}, 10000);
			//  location.reload(true); 
		}).error(function(data, status, headers, config) {
			$scope.getState = "Response Fail";
		});
	}
				
		
		};*/
	
	    $scope.addExcel = function(){

	    	$scope.spin=1;
	    	$scope.kaipan=$scope.data.length;
	    	alert("Are you Sure you want to add "+$scope.kaipan+" Records");
	    	$scope.fellowship_id=document.getElementById("fellowship_id").value;
	    	$scope.check="Success";
	    	  angular.forEach($scope.data, function(item){
	    		  $scope.kaipan--;
	    		
				
						
						var link = baseUrl+'addmemberdetail1?fellowship_id='+$scope.fellowship_id+'&firstname='+item.firstname+'&middlename='+item.middlename+'&lastname='+item.lastname+'&email='+item.email+'&mobile='+item.mobile+'&companyname='+item.companyname+'&memberclubname='+item.memberclubname+'&kaipan='+$scope.kaipan;
					
						$http.post(link).success(function(data, status, headers, config) {
					$scope.check = data;
				if(	$scope.check == 0){
					$scope.spin=0;
					location.reload(true);
				}
				
				}).error(function(data, status, headers, config) {
					$scope.check = "Response Fail";
				});
					
					
		
		});
			
	    }
	    
	
	    
});