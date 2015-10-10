'use strict'

angular.module 'checkersApp'
.controller 'NavbarCtrl', ($scope) ->
  $scope.menu = [
    title: 'Home'
    state: 'main'
  ,
    title: 'Game',
    state: 'game'
  ]
  $scope.isCollapsed = true
