'use strict';

var App = angular.module('tracker', [ 'ui.router' ]);

App.config([ '$stateProvider', '$urlRouterProvider',
		function($stateProvider, $urlRouterProvider) {

			$urlRouterProvider.otherwise("/home")

			$stateProvider.state('home', {
				url : "/home",
				templateUrl : 'home',
						})

			.state('create', {
				url : "/inc/create",
				templateUrl : 'inc/create',
			})
			.state('details', {
				url : "/inc/details",
				templateUrl : 'inc/details',
			})

			.state('search', {
				url : "/inc/search",
				templateUrl : 'inc/search',
			})

		} ]);