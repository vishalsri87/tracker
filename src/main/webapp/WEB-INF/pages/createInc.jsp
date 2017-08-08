
<div ng-controller="TrackerController as ctrl">

	<form ng-submit="ctrl.submit()" name="myForm" class="form-horizontal">

		<input type="hidden" ng-model="ctrl.inc.id" />
		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-2 control-lable" for="incNumber">incNumber</label>
				<div class="col-md-7">
					<input type="text" ng-model="ctrl.inc.incNumber" id="incNumber"
						class="incNumber form-control input-sm"
						placeholder="Enter your incNumber" required ng-minlength="1" />
						{{ctrl.inc.incNumber}}
				</div>
			</div>
		</div>
		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-2 control-lable" for="issue">issue</label>
				<div class="col-md-7">
					<input type="text" ng-model="ctrl.inc.issue" id="issue"
						class="issue form-control input-sm" placeholder="Enter your issue"
						required ng-minlength="1" />
				</div>
			</div>
		</div>
		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-2 control-lable" for="description">description</label>
				<div class="col-md-7">
					<input type="text" ng-model="ctrl.inc.description" id="description"
						class="description form-control input-sm"
						placeholder="Enter your description" required ng-minlength="1" />
				</div>
			</div>
		</div>
		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-2 control-lable" for="resolution">resolution</label>
				<div class="col-md-7">
					<input type="text" ng-model="ctrl.inc.resolution" id="resolution"
						class="resolution form-control input-sm"
						placeholder="Enter your resolution" required ng-minlength="1" />
				</div>
			</div>
		</div>


		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-2 control-lable" for="sendBy">sendBy</label>
				<div class="col-md-7">
					<input type="text" ng-model="ctrl.inc.sendBy" id="sendBy"
						class="resolution form-control input-sm"
						placeholder="Enter your sendBy" required ng-minlength="1" />
				</div>
			</div>
		</div>
		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-2 control-lable" for="priority">priority</label>
				<div class="col-md-7">
					<input type="text" ng-model="ctrl.inc.priority" id="sendBy"
						class="priority form-control input-sm"
						placeholder="Enter your priority" required ng-minlength="1" />
				</div>
			</div>
		</div>
		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-2 control-lable" for="status">status</label>
				<div class="col-md-7">
					<input type="text" ng-model="ctrl.inc.status" id="status"
						class="status form-control input-sm"
						placeholder="Enter your status" required ng-minlength="1" />
				</div>
			</div>
		</div>
		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-2 control-lable" for="solveBy">solveBy</label>
				<div class="col-md-7">
					<input type="text" ng-model="ctrl.inc.solveBy" id="solveBy"
						class="solveBy form-control input-sm"
						placeholder="Enter your solveBy" required ng-minlength="1" />
				</div>
			</div>
		</div>
		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-2 control-lable" for="issueDate">issueDate</label>
				<div class="col-md-7">
					<input type="date" ng-model="ctrl.inc.issueDate" id="issueDate"
						class="issueDate form-control input-sm"
						placeholder="Enter your issueDate" required ng-minlength="1" />
				</div>
			</div>
		</div>
		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-2 control-lable" for="pickByTcs">pickByTcs</label>
				<div class="col-md-7">
					<input type="date" ng-model="ctrl.inc.pickByTcs" id="pickByTcs"
						class="pickByTcs form-control input-sm"
						placeholder="Enter your pickByTcs" required ng-minlength="1" />
				</div>
			</div>
		</div>

		<div>
			<input type="submit" value="Add" />
		</div>
	</form>

</div>