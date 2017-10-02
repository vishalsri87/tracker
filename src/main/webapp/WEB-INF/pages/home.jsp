<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html ng-app="tracker" lang="en-US" ng-app="mobiApps">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Tracker</title>
<style>
.content-bg {
    background: #fefefe url('../images/bgimage.png') repeat;
   # background-color: #044461;
}

.my_menu{
	
	margin-top:15px;
}
.common-margin{
	
	margin-top:15px;
}
.common-margin-left{
	margin-top:20px;
	margin-left: 90px;
}

.my_menu .navbar-default{
	background:none;border:none;
}
.my_menu .navbar-nav .active a,.my_menu .navbar-nav .active a:hover{
	background:red;color:#fff;
}
.my_menu .navbar-nav li a:hover{
	background:yellow;color:#fff;
}
.carousel-inner > .item > img, .carousel-inner > .item > a > img {
    width: 100%;
	margin:auto;
	height:40%;
}


.tab_style{
	border: 1px solid #D9D9D9;
    border-radius: 25px;
    width:102px;
    text-align: center;
    
}
.features-div{
	border: 1px solid #F2F2F2;
	margin-top: 20px; 
	margin-bottom: 30px; 
	border-radius: 10px;
	padding:10px
}

.features-heading {
    font-size: 20px;
    line-height: 48px;
    height: 50px;
    color: #044461;
    text-shadow: 2px 2px 5px rgba(150,150,150,1);
    margin: 0;
    padding: 0 10px;
}

.footer {
    padding: 5px 0 10px;
    text-align: center;
    font-size: 16px;
    line-height: 20px;
    color: #f0f0f0;
   
}
.footer-link:link, .footer-link:visited {
    display: block;
    padding: 10px;
    text-align: center;
    color: #f0f0f0;
    font-size: 13px;
    background: rgba(0,0,0,.1);
    border-radius: 10px;
    margin-top: 5px;
}
.footer-link:hover {
    color: #fff;
    text-decoration: none;
    background: rgba(255,255,255,.1);
}
.footer-span {
    width: 175px;
    margin-left:2px;
}

.footer-margin{margin-left:70px}
.footer-bottom{
	font-size: 13px; 
	padding-top: 10px; 
	margin-top: 5px; 
	color: #e0e0e0; 
	border-top: 2px solid #1D5773;
	}

@media(max-width:1200px){
	.my_menu .pull-right{float:none !important;}
	.my_menu .navbar-nav li .tab_style{width:auto}
	
}
@media(max-width:600px){
	.footer-span {width:auto}
	.footer-margin{margin-left:0px}
	.footer-skelton {
  height: 200px;
 }
	
}

/* below code making footer stick to bottom*/
html {
	position: relative;
	min-height: 100%;
}

body {
	/* Margin bottom by footer height */
	background: #fefefe url('../images/bgimage.png') repeat;
	margin-bottom: 50px;
}

.footer-skelton {
	position: absolute;
	bottom: 0;
	width: 100%;
	/* Set the fixed height of the footer here */
	height: 50px;
	background-color: #044461;
}
</style>


<link href="css/mystyle.css" rel="stylesheet">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	


<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
<script
	src="http://angular-ui.github.io/ui-router/release/angular-ui-router.js"></script>
<script src="<c:url value='/static/js/app.js' />"></script>

<script src="<c:url value='/static/js/fusioncharts.js' />"></script>
<script src="<c:url value='/static/js/fusioncharts.charts.js' />"></script>
<script src="<c:url value='/static/js/angular-fusioncharts.min.js' />"></script>


<script src="<c:url value='/static/js/service/tracker_service.js' />"></script>
<script
	src="<c:url value='/static/js/controller/TrackerController.js' />"></script>


<script src="https://cdn.jsdelivr.net/alasql/0.3/alasql.min.js"></script>	
<style>
table {
	table-layout: fixed;
	width: 100%;
	word-wrap: break-word;
}
</style>
<script src="<c:url value='/static/js/Chart.min.js' />"></script>
<script src="http://cdn.jsdelivr.net/angular.chartjs/latest/angular-chart.min.js"></script>
<script>
(function (ChartJsProvider) {
  ChartJsProvider.setOptions({ colors : [ '#803690', '#00ADF9', '#DCDCDC', '#46BFBD', '#FDB45C', '#949FB1', '#4D5360'] });
}); 
</script>
</head>
<body style="font-family:" Times NewRoman", Georgia, Serif;">
<div class="container-fluid">
		<div class="row">
			

<!-- 			<div class="col-md-7 my_menu">
				<nav class="navbar navbar-default">

					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#mynavbar">
							<span class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>

						</button>

					</div>
					end navbar-header

					<div class="collapse navbar-collapse" id="mynavbar">
						<ul class="nav navbar-nav pull-right">
							<li class="active"><a ui-sref="home" class="tab_style"
								ui-sref-active="active">Home</a></li>
							<li><a ui-sref="create" class="tab_style"
								ui-sref-active="active">Create</a></li>
							<li><a ui-sref="search" class="tab_style"
								ui-sref-active="active">Search</a></li>
						</ul>
					</div>
				</nav>
			</div> -->

				<nav class="navbar navbar-inverse" style="background-color: #044461;border-color: #044461;">
					<div class="container-fluid">
						<div class="navbar-header">
						<a class="navbar-brand" ui-sref="home"
								ui-sref-active="active">Issue Tracker</a>
						</div>
						<ul class="nav navbar-nav">
							<li><a ui-sref="home"
								ui-sref-active="active">Home</a></li>
							<li><a ui-sref="create"
								ui-sref-active="active">Create</a></li>
							<li><a ui-sref="search" 
								ui-sref-active="active">Search</a></li>
								
							<li><a ui-sref="audit" 
								ui-sref-active="active">Audit</a></li>
								
								
						</ul>
					</div>
				</nav>








			</div>
	</div>

	<!--==============================logo and navigation end================================-->




	</div>
	<div ng-controller="TrackerController as trController">
		<div ui-view></div>



	</div>

</body>
</div>
<!-- <div class="footer-skelton" style="color: #ffffff;text-align: center;">@citi.com</div>
 -->
</html>