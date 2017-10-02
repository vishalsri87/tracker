<div class="panel panel-default">
	<div class="panel-heading">Create Incidents</div>


	<form ng-submit="trController.submit()" name="myForm"
		class="form-horizontal" style="margin-left: 50px; margin-top: 20px">

		<input type="hidden" ng-model="trController.inc.id" />
		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-2 control-lable" for="incNumber">incNumber</label>
				<div class="col-md-7">
					<input type="text" ng-model="trController.inc.incNumber"
						id="incNumber" class="incNumber form-control input-sm"
						placeholder="Enter your incNumber" required ng-minlength="1" />

				</div>
			</div>
		</div>
		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-2 control-lable" for="issue">issue</label>
				<div class="col-md-7">
					<input type="text" ng-model="trController.inc.issue" id="issue"
						class="issue form-control input-sm" placeholder="Enter your issue"
						required ng-minlength="1" />
				</div>
			</div>
		</div>
		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-2 control-lable" for="description">description</label>
				<div class="col-md-7">

					<textarea type="text" ng-model="trController.inc.description"
						id="description" class="description form-control input-sm"
						placeholder="Enter your description" required ng-minlength="1"></textarea>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-2 control-lable" for="resolution">resolution</label>
				<div class="col-md-7">
					<textarea type="text" ng-model="trController.inc.resolution"
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
				data-ng-model="trController.inc.sendBy">
				<option value="" label="-- Select Send By --" disabled
					selected="selected">Select Send By</option>
			</select> <select data-ng-options="o.name for o in trController.proirites"
				data-ng-model="trController.inc.priority">
				<option value="" label="-- Select Priority --" disabled
					selected="selected">Priority</option>

			</select> <select data-ng-options="o.name for o in trController.allStatus"
				data-ng-model="trController.inc.incStatus">
				<option value="" label="-- Select Status --" disabled
					selected="selected">Select Status</option>

			</select> <select data-ng-options="o.name for o in trController.allSolveBy"
				data-ng-model="trController.inc.solveBy">
				<option value="" label="-- Select SolveBy --" disabled
					selected="selected">Select SolveBy</option>

			</select>
		</div>
		</div>
</div>

		<!-- <div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-2 control-lable" for="sendBy">sendBy</label>
				<div class="col-md-7">
					<select data-ng-options="o.name for o in trController.allSendBy"
						data-ng-model="trController.inc.sendBy">
						<option value="" label="-- Select Send By --" disabled
							selected="selected">Select Send By</option>
					</select>
					<input type="text" ng-model="trController.inc.sendBy.id" id="sendBy"
							class="resolution form-control input-sm"
							placeholder="Enter your sendBy" required ng-minlength="1" />
				</div>
			</div>
		</div>
		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-2 control-lable" for="priority">priority</label>
				<div class="col-md-7">
					<select data-ng-options="o.name for o in trController.proirites"
						data-ng-model="trController.inc.priority">
						<option value="" label="-- Select Priority --" disabled
							selected="selected">Priority</option>

					</select>

					
						<input type="text" ng-model="trController.inc.priority.id" id="sendBy"
							class="priority form-control input-sm"
							placeholder="Enter your priority" required ng-minlength="1" />
				</div>
			</div>
		</div>
		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-2 control-lable" for="status">status</label>
				<div class="col-md-7">
					<select data-ng-options="o.name for o in trController.allStatus"
						data-ng-model="trController.inc.incStatus">
						<option value="" label="-- Select Status --" disabled
							selected="selected">Select Status</option>

					</select>

					<input type="text" ng-model="trController.inc.incStatus.id" id="incStatus"
							class="status form-control input-sm"
							placeholder="Enter your status" required ng-minlength="1" />
				</div>
			</div>
		</div>
		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-2 control-lable" for="solveBy">solveBy</label>
				<div class="col-md-7">
					<select data-ng-options="o.name for o in trController.allSolveBy"
						data-ng-model="trController.inc.solveBy">
						<option value="" label="-- Select SolveBy --" disabled
							selected="selected">Select SolveBy</option>

					</select>

					<input type="text" ng-model="trController.inc.solveBy.id" id="solveBy"
							class="solveBy form-control input-sm"
							placeholder="Enter your solveBy" required ng-minlength="1" />
				</div>
			</div>
		</div> -->
		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-2 control-lable" for="issueDate">issueDate</label>
				<div class="col-md-2">
					<input type="date" ng-model="trController.inc.issueDate " 
						id="issueDate" class="issueDate form-control input-sm"
						placeholder="Enter your issueDate" required ng-minlength="1"
						value="{{trController.inc.issueDate | date : 'yyyy-MM-dd'}}" />
				</div>
			</div>
		</div>
		<div class="row">
			<div class="form-group col-md-12">
				<label class="col-md-2 control-lable" for="pickByTcs">pickByTcs</label>
				<div class="col-md-2">
					<input type="date" ng-model="trController.inc.pickByTcs"
						id="pickByTcs" class="pickByTcs form-control input-sm"
						placeholder="Enter your pickByTcs" required ng-minlength="1"
						value="{{trController.inc.pickByTcs | date : 'yyyy-MM-dd'}}" />
				</div>
			</div>
		</div>

		<div>
			<input type="submit" value="Add" />
		</div>
	</form>

</div>
</div>