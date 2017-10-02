'use strict';

angular.module('tracker').factory('IncService', ['$http', '$q', function($http, $q){

    var REST_SERVICE_URI = 'http://localhost:8080/tracker/';

    var factory = {
    		fetchAllIncs: fetchAllIncs,
    		createInc: createInc,
    		updateInc: updateInc,
    		fetchAllPriority :fetchAllPriority,
    		fetchAllSolveBy : fetchAllSolveBy,
    	    fetchAllStatus : fetchAllStatus,
    	    fetchAllSendBy : fetchAllSendBy,
    	    search : search,
    	    fetchDetails : fetchDetails
            
    };

    return factory;

    function fetchDetails(id) {
    	var deferred = $q.defer();
        $http.get(REST_SERVICE_URI+'inc/pageDetails/'+id).then(
            function (response) {
            	deferred.resolve(response.data);
            	 
            },
            function(errResponse){
                console.error('Error while fetching Incidents');
                deferred.reject(errResponse);
            }
        );
        
        return deferred.promise;
    }
    
    function search(key) {
        var deferred = $q.defer();
        $http.get(REST_SERVICE_URI+'inc/search/'+key)
            .then(
            function (response) {
                deferred.resolve(response.data);
            },
            function(errResponse){
                console.error('Error while fetching search result');
                deferred.reject(errResponse);
            }
        );
        return deferred.promise;
    }
    
    
    function fetchAllIncs(month,year) {
    	var deferred = $q.defer();
        $http.get(REST_SERVICE_URI+'inc/jsonlist/'+month+'/'+year)
            .then(
            function (response) {
                deferred.resolve(response.data);
            },
            function(errResponse){
                console.error('Error while fetching Incidents');
                deferred.reject(errResponse);
            }
        );
        return deferred.promise;
    }
    
    function chartDate(month,year) {
    	var deferred = $q.defer();
        $http.get(REST_SERVICE_URI+'inc/jsonlist/chartDate/'+month+'/'+year)
            .then(
            function (response) {
                deferred.resolve(response.data);
            },
            function(errResponse){
                console.error('Error while fetching Incidents');
                deferred.reject(errResponse);
            }
        );
        return deferred.promise;
    }
    
    
    function fetchAllPriority() {
        var deferred = $q.defer();
        $http.get(REST_SERVICE_URI+'priority/jsonlist')
            .then(
            function (response) {
                deferred.resolve(response.data);
            },
            function(errResponse){
                console.error('Error while fetching priority');
                deferred.reject(errResponse);
            }
        );
        return deferred.promise;
    }
    
    function fetchAllSendBy() {
        var deferred = $q.defer();
        $http.get(REST_SERVICE_URI+'sendBy/jsonlist')
            .then(
            function (response) {
                deferred.resolve(response.data);
            },
            function(errResponse){
                console.error('Error while fetching send by');
                deferred.reject(errResponse);
            }
        );
        return deferred.promise;
    }
    
    function fetchAllStatus() {
        var deferred = $q.defer();
        $http.get(REST_SERVICE_URI+'status/jsonlist')
            .then(
            function (response) {
                deferred.resolve(response.data);
            },
            function(errResponse){
                console.error('Error while fetching status');
                deferred.reject(errResponse);
            }
        );
        return deferred.promise;
    }
    
    function fetchAllSolveBy() {
        var deferred = $q.defer();
        $http.get(REST_SERVICE_URI+'tcsDevs/jsonlist')
            .then(
            function (response) {
                deferred.resolve(response.data);
            },
            function(errResponse){
                console.error('Error while fetching tcs dev');
                deferred.reject(errResponse);
            }
        );
        return deferred.promise;
    }
    

    function createInc(inc) {
    	var deferred = $q.defer();
        $http.post(REST_SERVICE_URI+'inc/create', inc)
            .then(		
            function (response) {
            	deferred.resolve(response.data);
        		
            },
            function(errResponse){
                console.error('Error while creating Incident');
                deferred.reject(errResponse);
            }
        );
        return deferred.promise;
    }
    function updateInc(inc) {
    	alert(REST_SERVICE_URI+'inc/update');
    	var deferred = $q.defer();
        $http.post(REST_SERVICE_URI+'inc/update', inc)
            .then(		
            		
            function (response) {
            	alert(REST_SERVICE_URI+'inc/update');
            	deferred.resolve(response.data);
        		
            },
            function(errResponse){
                console.error('Error while updating Incident');
                deferred.reject(errResponse);
            }
        );
        return deferred.promise;
    }


}]);














