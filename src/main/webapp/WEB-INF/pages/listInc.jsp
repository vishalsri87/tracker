<span class="lead">List of Incidents </span>
                  <table class="table table-hover table-striped table-responsive">
                      <thead>
                          <tr>
                              <th>ID.</th>
                              <th>Issue</th>
                              <th>IncNumber</th>
                              <th>Description</th>
                              <th>resolution</th>
                              <th>Send By</th>
                              <th>Priority</th>
                              <th>Solved By</th>
                              <th>Issue Date</th>
                              <th>PickByTcs</th>
                              <th>Status</th>
                              
                          </tr>
                      </thead>
                      <tbody>
                          <tr ng-repeat="inc in trController.incs">
                         
                              <td><span ng-bind="inc.id"></span></td>
                              <td><span ng-bind="inc.issue"></span></td>
                              <td><span ng-bind="inc.incNumber"></span></td>
                              <td><span ng-bind="inc.description"></span></td>
                              <td><span ng-bind="inc.resolution"></span></td>
                              <td><span ng-bind="inc.sendBy.name"></span></td>
                              <td><span ng-bind="inc.priority.name"></span></td>
                              <td><span ng-bind="inc.solveBy.name"></span></td>
                              <td><span ng-bind="inc.issueDate"></span></td>
                              <td><span ng-bind="inc.pickByTcs"></span></td>
                              <td><span ng-bind="inc.incStatus.name"></span></td>
                              
                          </tr>
                      </tbody>
                  </table>
             