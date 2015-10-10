'use strict'

angular.module 'checkersApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'main',
    url: '/'
    templateUrl: 'app/routes/main/main.html'
    controller: 'MainCtrl'
