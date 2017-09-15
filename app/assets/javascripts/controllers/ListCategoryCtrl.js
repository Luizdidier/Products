angular.module('ListCategoryCtrl',[])
.controller('ListCategoryCtrl', function($scope, $http, $filter) {
	$http.get('/api/v1/categories').
	success(function(response) {
		$scope.category = {};
		$scope.category = response.data;
	});	
});
