'use strict'; 

var App = angular.module('tracker',['ui.router']);

App.config(['$stateProvider', '$urlRouterProvider', function($stateProvider, $urlRouterProvider){
     
    $urlRouterProvider.otherwise("/home")
     
    $stateProvider
    .state('home', {
        url: "/home",
        templateUrl: 'home',
        controller : "TrackerController as trController"
        
    })
 
    .state('create', {
        url: "/inc/create",
        templateUrl: 'inc/create',
    })
 
       
    
 
}]);