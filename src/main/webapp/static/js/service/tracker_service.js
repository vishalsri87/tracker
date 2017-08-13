'use strict';

angular.module('tracker').factory('IncService', ['$http', '$q', function($http, $q){

    var REST_SERVICE_URI = 'http://localhost:8080/tracker/';

    var factory = {
    		fetchAllIncs: fetchAllIncs,
    		createInc: createInc,
    		fetchAllPriority :fetchAllPriority,
    		fetchAllSolveBy : fetchAllSolveBy,
    	    fetchAllStatus : fetchAllStatus,
    	    fetchAllSendBy : fetchAllSendBy
        
    };

    return factory;

    function fetchAllIncs() {
        var deferred = $q.defer();
        $http.get(REST_SERVICE_URI+'inc/jsonlist')
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
            	console.log(inc);
                deferred.resolve(response.data);
                alert('Inc created');
            },
            function(errResponse){
                console.error('Error while creating Incident');
                deferred.reject(errResponse);
            }
        );
        return deferred.promise;
    }


}]);














