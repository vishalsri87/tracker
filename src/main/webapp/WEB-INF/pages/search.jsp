<div class="row">

	<div class="col-lg-6"  style=" margin-left :50px;">
		<div class="input-group" >
			<input type="text" class="form-control" placeholder="Search for..."
				ng-keyup=trController.search(trController.searchKey)
				ng-model="trController.searchKey"> <span
				class="input-group-btn">
				<button class="btn btn-default" type="button"
					ng-click="trController.search(trController.searchKey)">Go!</button>
			</span>
		</div>
		<!-- /input-group -->
	</div>
	<!-- /.col-lg-6 -->
</div>
<!-- /.row -->

<br>
<div  >
<div class="row" style="margin-top:20px;">
	<div class="col-lg-8" >
	<div class="row" ng-repeat="inc in trController.searchResult" style="margin-left :50px;padding-right:20px;">
				<h3 style="font-size: 18px !important; color: #1a0dab; font-weight: bold;">
					<a style="color: #1a0dab;" href="#" ui-sref="details"
						ng-click="trController.getDetails(inc.id)"><span
						ng-bind="inc.incNumber"></span>
					</a>
				</h3>
				<span style="color:green;font-size: 14px !important;" ng-bind="inc.description"></span>	<br><br>
			<span style="color:#545454;font-size: 14px !important;" ng-bind="inc.resolution">	</span><br><br>
	       		
	
	
	</div>
	
		
	</div>



	<div class="col-lg-4" style="padding-left:20px;">
	<h2 style="font-family: DauphinPlain;font-size: 24px;">This is Search page</h2>
   <span style="color:green;font-size: 14px !important;" >
   
It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span>
	</div>
</div>
</div>


