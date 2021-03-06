momentum = angular.module "Momentum.controllers", []

momentum.controller "DanController", ['$scope', '$http', ($scope, $http) ->

	$scope.postScholarship = ->
		#alert($scope.data.description)
		$http.post("/api/postscholarship",
			file: $scope.data.file
			title: $scope.data.title,
			description: $scope.data.description).success (response) ->
				alert "Success!"
			.error (response) ->
				alert "Failure!"
				
	$ ->
  	$('#degree_cb').change ->
  		$('#degree_choice').toggle()
  		
  	$('#gender_cb').change ->
  		$('.gc').toggle()
  		
  	$('#year_cb').change ->
  		$('#year_choice').toggle()
  	
  	$('#income_cb').change ->
  		$('#income_choice').toggle()
  		
  	$('#income_input').keyup ->
  		value = document.getElementById('income_input').value
  		if !isNaN(parseInt(value,10)) && parseInt(value,10) > 0
  			document.getElementById('income_input').value = parseInt(value,10)
  			document.getElementById('post-button').disabled = false
  		else
  			document.getElementById('post-button').disabled = true
]


		
