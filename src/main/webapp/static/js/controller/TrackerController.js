'use strict';
angular.module('tracker').controller('TrackerController', ['$scope', 'IncService', function($scope, IncService) {
	    var self = this;
	    self.incs=[];
	    self.inc={id:null,issue:'',incNumber:'',description:'',description:'',resolution:'',sendBy:'',priority:'',solveBy:'',issueDate:'',pickByTcs:'',incStatus:''};
	    
	    
	    fetchAllIncs();
	    self.submit = submit;
	   
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
	            console.log('Saving New Inc', self.inc);
	            createInc(self.inc);
	        }
	        console.log('moving to home');
	        
	    }
	    
	    
	}]);




