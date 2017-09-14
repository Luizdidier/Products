angular.module('myApp', [])
.controller('ListProductCtrl', function($scope, $http) {
	$http.get('http://localhost:3000/api/v1/categories').
	success(function(response) {
		
		$scope.category = {};
		$scope.category = response.data;
		console.log(response.data);
		console.log(response.size);
	});	
});