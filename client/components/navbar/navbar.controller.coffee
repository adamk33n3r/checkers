'use strict'

angular.module 'checkersApp'
.controller 'NavbarCtrl', ($scope) ->
  $scope.menu = [
    title: 'Home'
    state: 'main'
  ]
  $scope.isCollapsed = true