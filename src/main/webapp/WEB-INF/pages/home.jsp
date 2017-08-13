<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html ng-app="tracker">
  <head>  
    <title>Tracker</title>  
   
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
     <%-- <link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link> --%>
      <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
    <script src="http://angular-ui.github.io/ui-router/release/angular-ui-router.js"></script>
      <script src="<c:url value='/static/js/app.js' />"></script>
      <script src="<c:url value='/static/js/service/tracker_service.js' />"></script>
      <script src="<c:url value='/static/js/controller/TrackerController.js' />"></script>
      
  </head>
  <body style="font-family: "Times New Roman", Georgia, Serif;">
  <div class="collapse navbar-collapse" id="mynavbar">
							<ul class="nav navbar-nav pull-right">
								<li class="active"><a ui-sref="home" class="tab_style" ui-sref-active="active">Home</a></li>
								<li><a ui-sref="create" class="tab_style" ui-sref-active="active">Create</a></li>
								
							</ul>
						</div>
      
      <div ui-view></div>
      
       
      
      
  </body>
</html>