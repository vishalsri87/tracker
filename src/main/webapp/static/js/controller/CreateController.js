'use strict';
angular.module('tracker').controller('CreateController', ['$scope', 'IncService', function($scope, IncService) {
	console.log('inside createController');
    
	    self.inc={id:null,incNumber:'',issue:'',description:'',description:'',sendBy:'',priority:'',status:'',solveBy:'',issueDate:'',pickByTcs:''};
	    self.submit = submit;
	   

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



