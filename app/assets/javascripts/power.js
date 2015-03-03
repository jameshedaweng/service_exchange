power = angular.module('power',[])
.controller('PowerFormCtrl', function($scope) {
  $scope.init = function(title, description, theme_color, category) {
    $scope.power = {
      title: title,
      description: description,
      theme_color: theme_color, 
      category: category
    };
  }
});