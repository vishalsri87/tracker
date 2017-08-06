'use strict';

angular.module('tracker').factory('IncService', ['$http', '$q', function($http, $q){

    var REST_SERVICE_URI = 'http://localhost:8080/tracker/';

    var factory = {
    		fetchAllIncs: fetchAllIncs,
    		createInc: createInc
        
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
}]);



function createInc(inc) {
    var deferred = $q.defer();
    $http.post(REST_SERVICE_URI+'/inc/create', inc)
        .then(		
        function (response) {
        	console.log(inc);
            deferred.resolve(response.data);
            console.log('Inc created');
        },
        function(errResponse){
            console.error('Error while creating Incident');
            deferred.reject(errResponse);
        }
    );
    return deferred.promise;
}














