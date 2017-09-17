<div class="panel panel-default">
	<div class="panel-heading">details page</div>
	
<!-- <table>
<tr><td>Id</td><td>{{trController.detailPage.id}}</td></tr>
<tr><td>INC</td><td>{{trController.detailPage.incNumber}}</td></tr>
<tr><td>Issue</td><td>{{trController.detailPage.issue}}</td></tr>
<tr><td>Description</td><td>{{trController.detailPage.description}}</td></tr>
<tr><td>Resolution</td><td>{{trController.detailPage.resolution}}</td></tr>
</table> -->
		

</div>





	<form ng-submit="trController.submit()" name="myForm"
		class="form-horizontal" style="margin-left: 50px; margin-top: 20px">
<input type="hidden" ng-model="trController.detailPage.id" />
		
		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-2 control-lable" for="incNumber">incNumber</label>
				<div class="col-md-7">
					<input type="text" ng-model="trController.detailPage.incNumber"
						id="incNumber" class="incNumber form-control input-sm"
						placeholder="Enter your incNumber" required ng-minlength="1" />

				</div>
			</div>
		</div>
		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-2 control-lable" for="issue">issue</label>
				<div class="col-md-7">
					<input type="text" ng-model="trController.detailPage.issue" id="issue"
						class="issue form-control input-sm" placeholder="Enter your issue"
						required ng-minlength="1" />
				</div>
			</div>
		</div>
		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-2 control-lable" for="description">description</label>
				<div class="col-md-7">

					<textarea type="text" ng-model="trController.detailPage.description"
						id="description" class="description form-control input-sm"
						placeholder="Enter your description" required ng-minlength="1"></textarea>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-2 control-lable" for="resolution">resolution</label>
				<div class="col-md-7">
					<textarea type="text" ng-model="trController.detailPage.resolution"
						id="resolution" class="resolution form-control input-sm"
						placeholder="Enter your resolution" required ng-minlength="1"></textarea>
				</div>
			</div>
		</div>

		<div class="row">
		<div class="form-group col-md-12">
		<label class="col-md-2 control-lable">&nbsp;</label>
		<div class="form-group col-md-7">
			<select style="margin-left:11px" data-ng-options="o.name for o in trController.allSendBy"
				data-ng-model="trController.detailPage.sendBy">
				<option value="" label="-- Select Send By --" disabled >Select Send By</option>
			</select> 
			
			
			<select data-ng-options="o.name for o in trController.proirites"
				data-ng-model="trController.detailPage.priority">
				<option value="" label="-- Select Priority --" disabled >Priority</option>

			</select> <select data-ng-options="o.name for o in trController.allStatus"
				data-ng-model="trController.detailPage.incStatus">
				<option value="" label="-- Select Status --" disabled
					selected="selected">Select Status</option>

			</select> <select data-ng-options="o.name for o in trController.allSolveBy"
				data-ng-model="trController.detailPage.solveBy">
				<option value="" label="-- Select SolveBy --" disabled >Select SolveBy</option>

			</select>
		</div>
		</div>
</div>

				<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-2 control-lable" for="issueDate">issueDate</label>
				<div class="col-md-2">
					<input type="date" ng-model="trController.detailPage.issueDate"
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
					<input type="date" ng-model="trController.detailPage.pickByTcs"
						id="pickByTcs" class="pickByTcs form-control input-sm"
						placeholder="Enter your pickByTcs" required ng-minlength="1"
						value="{{trController.detailPage.pickByTcs | date : 'yyyy-MM-dd'}}" />
				</div>
			</div>
		</div>

		<div>
			<input type="submit" value="update" />
		</div>
	</form>













</div>