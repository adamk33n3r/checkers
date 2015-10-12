'use strict'

angular.module 'checkersApp'
.controller 'GameCtrl', ($scope) ->

  $scope.board = []

  isEven = (num) ->
    num % 2 is 0
  for row in [0..7]
    $scope.board.push([])
    for col in [0..7]
      i = row * 8 + col
      $scope.board[row].push(
        loc:
          row: row
          col: col
        color: if ((isEven row) and (isEven col)) or ((not isEven row) and (not isEven col)) then 'red' else 'black'
        piece:
          num: i
          loc:
            row: row
            col: col
          color: if (((isEven row) and (not isEven col)) or ((not isEven row) and (isEven col))) and (0 < i < 24) then 'black' else if (((isEven row) and (not isEven col)) or ((not isEven row) and (isEven col))) and (39 < i < 63) then 'red'
      )




  $scope.atLoc = (row, col, color) ->
    loc = $scope.board.loc
    return loc.row is row and loc.col is col

  $scope.onStartCallback = (event, ui, row, col, num) ->
    console.log("started dragging piece [" + row + "," + col + "] id=" + num)

  $scope.onStopCallback = (event, ui) ->
    console.log("stopped drag")

  $scope.onDragCallback = (event, ui) ->
    console.log("dragging")

  $scope.onDropCallback = (event, ui) ->
    console.log("dropped")

  $scope.onOverCallback = (event, ui) ->
    console.log("is over droppable square")

  $scope.onOutCallback = (event, ui) ->
    console.log("out of droppable square")

  $scope.infoCallback = (event,ui,a1,a2,a3) ->
    console.log(a1)
    console.log(a2)
    console.log(a3)
