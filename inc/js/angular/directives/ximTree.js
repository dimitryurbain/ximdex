// Generated by CoffeeScript 1.8.0
angular.module("ximdex.common.directive").directive("ximTree", [
  "$window", function($window) {
    var base_url;
    base_url = $window.X.baseUrl;
    return {
      templateUrl: base_url + '/inc/js/angular/templates/ximTree.html',
      restrict: "E"
    };
  }
]);
