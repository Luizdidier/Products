angular.module('ListProductCtrl',[])
.controller('ListProductCtrl', function($scope, $http, $filter) {
	$http.get('/api/v1/products').
	success(function(response) {
		$scope.product = {};
		$scope.product = response;
	});	
});