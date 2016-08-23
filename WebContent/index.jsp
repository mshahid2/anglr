<html ng-app="myapp">
<head>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.25/angular.min.js"></script>
          <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.25/angular-route.js"></script>
      <script src="script.js"></script>
</head>
<body ng-controller="teamController">
<h1>Angular HotFix</h1>
<table border="1">
<tr>
<th>Team Name </th>
<th>Member Name </th>
<th>Member Location </th>
</tr>
<tr ng-repeat ="var in locval">
<td>{{var.strTEamName}}</td>
<td>{{var.strMemberName}}</td>
<td>{{var.strMemberLocation}}</td>
</tr>
</table>
<script type="text/javascript">
 var myapp= angular.module('myapp',[]);
 myapp.controller('teamController',function($scope,$http){
	 $http.get('http://localhost:9000/shahid/api/getAll').success(function(response){
		 $scope.locval = response;
	 })
 })
</script>

</body>
</html>