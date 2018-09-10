
<!DOCTYPE HTML>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%-- <%@ page isELIgnored="false" %>  --%>

<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Pragma" content="no-cache"> 
    <meta http-equiv="Cache-Control" content="no-cache"> 
    <meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">
    
    <title>Task Manager Application | Home</title>
    
    <link href="static/css/bootstrap.min.css" rel="stylesheet">
     <link href="static/css/style.css" rel="stylesheet">
     <script src="https://use.fontawesome.com/cdd22921f6.js"></script>
    
    <!--[if lt IE 9]>
		<script src="static/js/html5shiv.min.js"></script>
		<script src="static/js/respond.min.js"></script>
	<![endif]-->
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	  <a class="navbar-brand" href="/">Alonso WebApp</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	
	  <div class="collapse navbar-collapse" id="navbarColor02">
	    <ul class="navbar-nav mr-auto">
	      <li class="nav-item active">
	        <a class="nav-link" href="new-task">New Task <span class="sr-only">(current)</span></a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="all-tasks">All Tasks</a>
	      </li>      
	    </ul>
<!-- 	    <form class="form-inline my-2 my-lg-0"> -->
<!-- 	      <input class="form-control mr-sm-2" type="text" placeholder="Search"> -->
<!-- 	      <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button> -->
<!-- 	    </form> -->
	  </div>
	</nav>
	
	<c:choose>
		<c:when test="${mode == 'MODE_HOME' }" >
			<div class="container" id="homeDiv">
				<div class="jumbotron text-center">
					<h1>Welcome to Task Manager</h1>
				</div>
			</div>
		</c:when>
	</c:choose>
	
	<c:choose>
		<c:when test="${mode == 'MODE_TASKS' }" >
				<div class="container text-center" id="tasksDiv">
				<h3>My Tasks</h3>
				<hr>
				<div class="table-responsive">
				
					<table class="table table-striped table-bordered table-hover"">
						<thead>
							<tr class="table-dark">
								<th>Id</th>
								<th>Name</th>
								<th>Description</th>
								<th>Date created</th>
								<th>Finished</th>
								<th></th>
								<th></th>
							
							</tr>
						</thead>
						
						<tbody>
							<c:forEach items="${tasks}" var="task" >
								<tr>
									<td>${task.id}</td>
									<td>${task.name}</td>
									<td>${task.description}</td>
									<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${task.dateCreated}"/></td>
									<td>${task.finished}</td>
									<td><a href="update-tasks?id=${task.id}"><i class="fa fa-pencil" aria-hidden="true"></i></a></td>
									<td><a href="delete-tasks?id=${task.id}"><i class="fa fa-trash-o" aria-hidden="true"></i></a></td>
								</tr>
							</c:forEach>				
						</tbody>			
					</table>
							
				</div>		
			</div>
		</c:when>
	</c:choose>
	
	<c:choose>
		<c:when test="${mode == 'MODE_NEW'||mode == 'MODE_UPDATE' }" >
			<div class="container text-center">
				<h3>Manage Task</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-task">
					<input type="hidden" name="id" value="${task.id}"/>
					<div class="form-group row">						
						<label class="control-label col-md-3">Name</label>		
						<div class="col-md-7">				
							<input type="text" class="form-control" name="name" value="${task.name}"/>
						</div>			
					</div>
					<div class="form-group row">
						<label class="control-label col-md-3">Description</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="description" value="${task.description}" placeholder="${task.description}"/>
						</div>				
					</div>
					<div class="form-group row">
						<label class="control-label col-md-3">Finished</label>
						<div class="col-md-7">
							<div class="form-row">
								<input type="radio" class="col-sm-1" name="finished" value="true"/>
								<div class="col-sm-1">Yes</div>
								<input type="radio" class="col-sm-1" name="finished" value="false" checked/>
								<div class="col-sm-1">No</div>
							</div>
						</div>				
					</div>		
					<div class="form-group">
						<input type="submit" class="btn btn-primary" value="Save"/>
					</div>
				</form>
			</div>	
		</c:when>
	</c:choose>
	

	<script src="static/js/jquery-1.11.1.min.js"></script>    
    <script src="static/js/bootstrap.min.js"></script>
</body>
</html>