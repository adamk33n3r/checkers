'use strict'

describe 'Controller: GameCtrl', ->

  # load the controller's module
  beforeEach module 'checkersApp'
  GameCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    GameCtrl = $controller 'GameCtrl',
      $scope: scope

  it 'should ...', ->
    expect(1).toEqual 1
