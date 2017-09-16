<div class="input-group" >

<br>
<form ng-submit="trController.fetchAllIncsByDate()" style="background-color:#c2c2c2">
			<select data-ng-model="trController.listInc.year">
				<option value="" label="-- Select Status --" disabled
					selected="selected">Select year</option>
					<option value='2016'>2016</option>
					<option value='2017'>2017</option>
					
			</select>
		<select data-ng-model="trController.listInc.month">
				<option value="" label="-- Select Status --" disabled
					selected="selected">Select Month</option>
					<option value='01'>Jan</option>
					<option value='02'>Feb</option>
					<option value='03'>March</option>
					<option value='04'>April</option>
					<option value='05'>May</option>
					<option value='06'>June</option>
					<option value='07'>July</option>
					<option value='08'>Aug</option>
					<option value='09'>Sept</option>
					<option value='10'>Oct</option>
					<option value='11'>Nov</option>
					<option value='12'>Dec</option>
					
			</select>
			<input class="btn btn-default" style="height:22px;padding-top:0px" type="submit" value="Submit" />
		
</form>
</div>
<button type="submit" ng-click="trController.exportData()" class="btn btn-primary pull-right" style="margind-right:10px">Export</button> 

  <h2>List of Incidents</h2>

   
                  <table class="table table-hover table-striped table-responsive" style=" margin-top:20px;max-width: none;">
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
                 
             