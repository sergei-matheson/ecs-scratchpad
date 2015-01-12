'use strict'

###*
 # @ngdoc overview
 # @name webApp
 # @description
 # # webApp
 #
 # Main module of the application.
###
angular
  .module('webApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngSanitize',
    'ngTouch',
    'ui.router'
  ])
  .config ($stateProvider, $urlRouterProvider) ->
    $urlRouterProvider.otherwise('/main')

    $stateProvider
      .state 'main',
        url: '/main'
        templateUrl: 'views/main.html'
      .state 'about',
        url: '/about'
        templateUrl: 'views/about.html'
      .state 'contact',
        url: '/contact'
        templateUrl: 'views/contact.html'
  .config ($locationProvider) ->
    $locationProvider.html5Mode(
      enabled: true, requireBase:false
    ).hashPrefix('#')
