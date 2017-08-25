<div class="row">
 <div class="col-lg-6">
    <div class="input-group">
      <input type="text" class="form-control" placeholder="Search for..." ng-keyup=trController.search(trController.searchKey) ng-model="trController.searchKey">
      <span class="input-group-btn">
        <button class="btn btn-default" type="button" on-click="trController.search(trController.searchKey)">Go!</button>
      </span>
    </div><!-- /input-group -->
  </div><!-- /.col-lg-6 -->
</div><!-- /.row -->
 
 <br>
   
                  <table class="table table-hover table-striped table-responsive" style=" margin-top:20px">
                      <thead>
                         <tr class="panel panel-default">
                              <th>Issue</th>
                              <th>IncNumber</th>
                              <th>Status</th>
                              <th>Description</th>
                              <th>resolution</th>
                              <th>Send By</th>
                              <th>Priority</th>
                              <th>Solved By</th>
                              <th>Issue Date</th>
                              <th>PickByTcs</th>
                              
                          </tr>
                      </thead>
                      <tbody>
                          <tr ng-repeat="inc in trController.searchResult">
                         
                              <td><span ng-bind="inc.issue"></span></td>
                              <td><span class="label label-default" ng-bind="inc.incNumber"></span></td>
                              <td ng-if="inc.incStatus.id == 1"><span class="label label-danger"  ng-bind="inc.incStatus.name"></span></td>
                              <td ng-if="inc.incStatus.id > 1"><span class="label label-success"  ng-bind="inc.incStatus.name"></span></td>
                              <td><span ng-bind="inc.description"></span></td>
                              <td><span ng-bind="inc.resolution"></span></td>
                              <td><span ng-bind="inc.sendBy.name"></span></td>
                              <td><span class="label label-info" ng-bind="inc.priority.name"></span></td>
                              <td><span ng-bind="inc.solveBy.name"></span></td>
                              <td><span class="label label-primary">{{inc.issueDate | date:'dd-MM-yyyy'}}</span></td>
                              <td><span class="label label-primary">{{inc.pickByTcs | date:'dd-MM-yyyy'}}</span></td>
                              
                          </tr>
                      </tbody>
                  </table>
                
             