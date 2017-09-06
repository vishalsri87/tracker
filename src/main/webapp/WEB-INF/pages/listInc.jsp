  <h2>List of Incidents</h2>

   
                  <table class="table table-hover table-striped table-responsive" style=" margin-top:20px">
                      <thead>
                         <tr class="panel panel-default">
                              <th>Issue</th>
                              <th>IncNumber</th>
                              <th>Description</th>
                              <th>resolution</th>
                              <th>Status</th>
                              <th>SendBy</th>
                              <th>Priority</th>
                              <th>SolvedBy</th>
                              <th>IssueDate</th>
                              <th>PickByTcs</th>
                              
                          </tr>
                      </thead>
                      <tbody>
                          <tr ng-repeat="inc in trController.incs">
                         
                         
			
                              <td><span ng-bind="inc.issue"></span></td>
                              <td>
                              <a style="color:#1a0dab;" href="#" ui-sref="details" ng-click="trController.getDetails(inc.id)">
                         <span ng-bind="inc.incNumber"></span></a>
                              </td>
                              <td><span ng-bind="inc.description"></span></td>
                              <td><span ng-bind="inc.resolution"></span></td>
                              <td ng-if="inc.incStatus.id == 1"><span class="label label-danger"  ng-bind="inc.incStatus.name"></span></td>
                              <td ng-if="inc.incStatus.id == 2"><span class="label label-success"  ng-bind="inc.incStatus.name"></span></td>
                              <td ng-if="inc.incStatus.id == 3"><span class="label label-warning"  ng-bind="inc.incStatus.name"></span></td>
                              <td><span class="label label-default" ng-bind="inc.sendBy.name"></span></td>
                              <td><span class="label label-info" ng-bind="inc.priority.name"></span></td>
                              <td><span class="label label-default" ng-bind="inc.solveBy.name"></span></td>
                              <td><span class="label label-primary">{{inc.issueDate | date:'dd-MM-yyyy'}}</span></td>
                              <td><span class="label label-primary">{{inc.pickByTcs | date:'dd-MM-yyyy'}}</span></td>
                              
                          </tr>
                      </tbody>
                  </table>
                 
             