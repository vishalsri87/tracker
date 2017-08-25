'use strict';
angular.module('tracker').controller('TrackerController', ['$scope', 'IncService','$location', function($scope, IncService,$location) {
	    var self = this;
	    self.incs=[];
			    self.inc = {
				id : null,
				issue : '',
				incNumber : '',
				description : '',
				resolution : '',
				sendBy : {'id': 1,'name':'L2 Team'},
				priority : '',
				incStatus:{"id" : 1,"name":"Open"},
				solveBy : {'id': 2,'name':'Lenin'},
				issueDate : '',
				pickByTcs : ''
				
			};
			    self.proirites=[];
	    
	    fetchAllIncs();
	    fetchAllPriority();
	    fetchAllSendBy();
	    self.submit = submit;
	    self.search = search;
	    fetchAllStatus();
	    fetchAllSolveBy();
	    
	    function fetchAllIncs(){
	    	console.log('inside fetchAllIncs');
	    	IncService.fetchAllIncs()
	            .then(
	            function(d) {
	                self.incs = d;
	                console.log(d);
	            },
	            function(errResponse){
	                console.error('Error while fetching Incidents');
	            }
	        );
	    }
	    function fetchAllPriority(){
	    	console.log('inside fetchAllPriority');
	    	IncService.fetchAllPriority()
	            .then(
	            function(d) {
	                self.proirites = d;
	                console.log(d);
	            },
	            function(errResponse){
	                console.error('Error while fetching proirites');
	            }
	        );
	    }
	    function fetchAllSendBy(){
	    	console.log('inside fetchAllSendBy');
	    	IncService.fetchAllSendBy()
	            .then(
	            function(d) {
	                self.allSendBy = d;
	                console.log(d);
	            },
	            function(errResponse){
	                console.error('Error while fetching AllSendBy');
	            }
	        );
	    }
	    
	    function fetchAllStatus(){
	    	console.log('inside fetchAllPriority');
	    	IncService.fetchAllStatus()
	            .then(
	            function(d) {
	            	self.allStatus=[];
	                self.allStatus = d;
	                console.log(d);
	            },
	            function(errResponse){
	                console.error('Error while fetching status');
	            }
	        );
	    }
	    
	    function fetchAllSolveBy(){
	    	console.log('inside fetchAllSolveBy');
	    	IncService.fetchAllSolveBy()
	            .then(
	            function(d) {
	            	self.allSolveBy = [];
	                self.allSolveBy = d;
	                console.log(d);
	            },
	            function(errResponse){
	                console.error('Error while fetching AllSolveBy');
	            }
	        );
	    }
	    
	    
	    
	    function createInc(inc){
	    	console.log('inside create');
	    	IncService.createInc(inc)
	            .then(
	            function(errResponse){
	                console.error('Error while creating Inc');
	            }
	        );
	    }
	    
	    function submit() {
	    	console.log('inside submit');
	        if(self.inc.id===null){
	        	createInc(self.inc);
	        	alert('Saving New Inc');
	            $location.path('/home');
	        }else{
	            alert('not saved');
	            $location.path('/home');
	        
	    }
	    }
	    
	    
	    function search(searchKey){
	    	console.log('inside search'+searchKey);
	    	IncService.search(searchKey)
	            .then(
	            function(d) {
	            	self.searchResult = [];
	                self.searchResult = d;
	                console.log(d);
	            },
	            function(errResponse){
	                console.error('Error while fetching search result');
	            }
	        );
	    }
	    
	    
	}]);




