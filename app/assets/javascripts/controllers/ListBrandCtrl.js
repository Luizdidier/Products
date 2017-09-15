angular.module('ListBrandCtrl',[])
.controller('ListBrandCtrl', function($scope, $http, $filter) {
	$http.get('/api/v1/brands').
	success(function(response) {
		$scope.brand = {};
		$scope.brand = response.data;
	});	
});