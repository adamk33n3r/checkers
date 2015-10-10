'use strict'

angular.module 'checkersApp'
.directive 'navbar', ->
  templateUrl: 'components/navbar/navbar.html'
  restrict: 'E'
  controller: 'NavbarCtrl'
