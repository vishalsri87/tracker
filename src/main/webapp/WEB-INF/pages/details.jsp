<div class="panel panel-default">
	<div class="panel-heading"><span  style="font-size:20px" class="label label-primary">details page</span></div>
	
<!-- <table>
<tr><td>Id</td><td>{{trController.detailPage.id}}</td></tr>
<tr><td>INC</td><td>{{trController.detailPage.incNumber}}</td></tr>
<tr><td>Issue</td><td>{{trController.detailPage.issue}}</td></tr>
<tr><td>Description</td><td>{{trController.detailPage.description}}</td></tr>
<tr><td>Resolution</td><td>{{trController.detailPage.resolution}}</td></tr>
</table> -->
		

</div>
<script>

document.getElementById('yourBox').onchange = function() {
	alert("hello");
    document.getElementById('submit').disabled = !this.checked;
    document.getElementById('priority').disabled = !this.checked;
    document.getElementById('incNumber').disabled = !this.checked;
    document.getElementById('issue').disabled = !this.checked;
    document.getElementById('description').disabled = !this.checked;
    document.getElementById('resolution').disabled = !this.checked;
    document.getElementById('sendby').disabled = !this.checked;
    document.getElementById('status').disabled = !this.checked;
    document.getElementById('solveby').disabled = !this.checked;
    document.getElementById('issuedate').disabled = !this.checked;
    document.getElementById('pickbytcs').disabled = !this.checked;
};


</script>


<br><br>

<form ng-submit="trController.submitUpdate()" name="myForm"
		class="form-horizontal" style="margin-left: 50px; margin-top: 20px">
<input type="hidden" ng-model="trController.detailPage.id" />
		
		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-2 control-lable" for="incNumber">incNumber</label>
				<div class="col-md-7">
					<input disabled type="text" ng-model="trController.detailPage.incNumber"
						id="incNumber" class="incNumber form-control input-sm"
						placeholder="Enter your incNumber" required ng-minlength="1"/>

				</div>
			</div>
		</div>
		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-2 control-lable" for="issue">issue</label>
				<div class="col-md-7">
					<input disabled type="text" ng-model="trController.detailPage.issue" id="issue"
						class="issue form-control input-sm" placeholder="Enter your issue"
						required ng-minlength="1" />
				</div>
			</div>
		</div>
		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-2 control-lable" for="description">description</label>
				<div class="col-md-7">

					<textarea disabled type="text" ng-model="trController.detailPage.description"
						id="description" class="description form-control input-sm"
						placeholder="Enter your description" required ng-minlength="1"></textarea>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-2 control-lable" for="resolution">resolution</label>
				<div class="col-md-7">
					<textarea disabled type="text" ng-model="trController.detailPage.resolution"
						id="resolution" class="resolution form-control input-sm"
						placeholder="Enter your resolution" required ng-minlength="1"></textarea>
				</div>
			</div>
		</div>

		<div class="row">
		<div class="form-group col-md-12">
		<label class="col-md-2 control-lable">&nbsp;</label>
		<div class="form-group col-md-7">
			<select disabled style="margin-left:11px" data-ng-options="o.name for o in trController.allSendBy track by o.id" id="sendby"
				data-ng-model="trController.detailPage.sendBy" ng-init="trController.detailPage.sendBy=(trController.detailPage.sendBy||trController.allSendBy[0])">
				<option value="" label="-- Select Send By --" disabled >Select Send By</option>
			</select> 
			
			
			<select disabled data-ng-options="o.name for o in trController.proirites  track by o.id" id="priority"
				data-ng-model="trController.detailPage.priority" ng-init="trController.detailPage.priority=(ttrController.detailPage.priority||trController.proirites[0])">
				<option value="" label="-- Select Priority --" disabled >Priority</option>

			</select> <select disabled data-ng-options="o.name for o in trController.allStatus  track by o.id" id="status"
				data-ng-model="trController.detailPage.incStatus" ng-init="trController.detailPage.incStatus=(trController.detailPage.incStatus||trController.allStatus[0])">
				<option value="" label="-- Select Status --" disabled
					selected="selected">Select Status</option>

			</select> <select disabled data-ng-options="o.name for o in trController.allSolveBy  track by o.id" id="solveby"
				data-ng-model="trController.detailPage.solveBy" ng-init="trController.detailPage.solveBy=(trController.detailPage.solveBy||trController.allSolveBy[0])">
				<option value="" label="-- Select SolveBy --" disabled >Select SolveBy</option>

			</select>
		</div>
		</div>
</div>

				<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-2 control-lable" for="issueDate">issueDate</label>
				<div class="col-md-2">
					<input disabled type="date" ng-model="trController.detailPage.issueDate" id ="issuedate"
						id="issueDate" class="issueDate form-control input-sm"
						placeholder="Enter your issueDate" required ng-minlength="1"
						value="{{trController.detailPage.issueDate | date : 'yyyy-MM-dd'}}" />
				</div>
			</div>
		</div>
		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-2 control-lable" for="pickByTcs">pickByTcs</label>
				<div class="col-md-2">
					<input disabled type="date" ng-model="trController.detailPage.pickByTcs"  id="pickbytcs"
						id="pickByTcs" class="pickByTcs form-control input-sm"
						placeholder="Enter your pickByTcs" required ng-minlength="1"
						value="{{trController.detailPage.pickByTcs | date : 'yyyy-MM-dd'}}" />
				</div>
			</div>
		</div>

		<div>
			<input disabled type="submit" value="update" id="submit"/>
			
<input type="checkbox" id="yourBox" />update
		</div>
	</form>













</div>