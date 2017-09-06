'use strict';
angular
		.module('tracker')
		.controller(
				'TrackerController',
				[
						'$scope',
						'IncService',
						'$location',
						function($scope, IncService, $location) {
							var self = this;
							self.proirites = [];
							self.incs = [];
							self.inc = {
								id : null,
								issue : '',
								incNumber : '',
								description : '',
								resolution : '',
								sendBy : {
									'id' : 1,
									'name' : 'L2 Team'
								},
								priority : '',
								incStatus : {
									"id" : 1,
									"name" : "Open"
								},
								solveBy : {
									'id' : 2,
									'name' : 'Lenin'
								},
								issueDate : '',
								pickByTcs : ''

							};

							fetchAllIncs();
							fetchAllPriority();
							fetchAllSendBy();
							self.submit = submit;
							self.search = search;
							self.getDetails = getDetails;
							fetchAllStatus();
							fetchAllSolveBy();

							function fetchAllIncs() {
								console.log('inside fetchAllIncs');
								var dateObj = new Date();
								var month = dateObj.getUTCMonth() + 1; //months from 1-12
								var day = dateObj.getUTCDate();
								var year = dateObj.getUTCFullYear();

								
								IncService.fetchAllIncs(month,year)
										.then(
												function(d) {
													self.incs = d;
													console.log(d);
												},
												function(errResponse) {
													console.error('Error while fetching Incidents');
												});
							}
							function fetchAllPriority() {
								console.log('inside fetchAllPriority');
								IncService
										.fetchAllPriority()
										.then(
												function(d) {
													self.proirites = d;
													console.log(d);
												},
												function(errResponse) {
													console.error('Error while fetching proirites');
												});
							}
							function fetchAllSendBy() {
								console.log('inside fetchAllSendBy');
								IncService
										.fetchAllSendBy()
										.then(
												function(d) {
													self.allSendBy = d;
													console.log(d);
												},
												function(errResponse) {
													console.error('Error while fetching AllSendBy');
												});
							}

							function fetchAllStatus() {
								console.log('inside fetchAllPriority');
								IncService
										.fetchAllStatus()
										.then(
												function(d) {
													self.allStatus = [];
													self.allStatus = d;
													console.log(d);
												},
												function(errResponse) {
													console.error('Error while fetching status');
												});
							}

							function fetchAllSolveBy() {
								console.log('inside fetchAllSolveBy');
								IncService
										.fetchAllSolveBy()
										.then(
												function(d) {
													self.allSolveBy = [];
													self.allSolveBy = d;
													console.log(d);
												},
												function(errResponse) {
													console.error('Error while fetching AllSolveBy');
												});
							}

							function createInc(inc) {
								IncService.createInc(inc).then(function(d) {
									getDetails(inc['id']);
									$location.path('/search');
									
								}, function(errResponse) {
									console.error('Error while creating Inc');
								});

							}

							function getDetails(id) {
								IncService.fetchDetails(id).then(
												function(d) {
													self.detailPage = d;
													console.log('*********');
													console.log(self.detailPage);
												},
												function(errResponse) {
													console.error('Error while fetching Incidents');
												});

							}

							function submit() {
								if (self.inc.id === null) {
									createInc(self.inc);
									
								} else {
									alert('not saved');
									
								}
							}

							function search(searchKey) {
								IncService
										.search(searchKey)
										.then(
												function(d) {
													self.searchResult = [];
													self.searchResult = d;
													console.log(d);
												},
												function(errResponse) {
													console.error('Error while fetching search result');
												});
							}

						} ]);
