'use strict'

angular.module 'checkersApp'
.controller 'GameCtrl', ($scope) ->
  $scope.board = []
  isEven = (num) ->
    num % 2 is 0
  for row in [1..8]
    $scope.board.push(for col in [1..8]
      loc:
        row: row
        col: col
      color: if ((isEven row) and (isEven col)) or ((not isEven row) and (not isEven col)) then 'red' else 'black'
    )


