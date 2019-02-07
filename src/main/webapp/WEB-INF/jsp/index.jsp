
<!DOCTYPE HTML>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%-- <%@ page isELIgnored="false" %>  --%>

<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Pragma" content="no-cache"> 
    <meta http-equiv="Cache-Control" content="no-cache"> 
    <meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">
    
    <title>Alonso portfolio</title>
    
    <link rel="stylesheet" href="static/css/bootstrap-nbw.css" media="screen">
    <link rel="stylesheet" href="static/css/style2.css" media="screen">
    <link rel="stylesheet" href="static/fonts/font-awesome.min.css" media="screen">
    <script src="https://use.fontawesome.com/cdd22921f6.js"></script>
    
     
     
    
    <!--[if lt IE 9]>
		<script src="static/js/html5shiv.min.js"></script>
		<script src="static/js/respond.min.js"></script>
	<![endif]-->
</head>
<body>

	  <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
            <div class="container">
                <a href="/" class="navbar-brand">Alonso portfolio</a>
                <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse"> 
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a href="/" class="nav-link">Home</a>
                        </li>
                        <li class="nav-item">
                                <a href="new-task" class="nav-link">New task</a>
                        </li>
                        <li class="nav-item">
                                <a href="all-tasks" class="nav-link">All tasks</a>
                        </li>
                        <li class="nav-item">
                                <a href="" data-toggle="modal" 
                                    data-target="#contactModal" class="nav-link">WebApp Feedback </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
	
	
	
	<c:choose>
		<c:when test="${mode == 'MODE_HOME' }" >
			 <!-- HOme section-->

            <header id="home-section">
                <div class="dark-overlay">
                    <div class="home-inner">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12">
                                    <h1 class="display-10">This <strong>demo application</strong> build on Spring</h1>
                                    <div class="d-flex flex-row">
                                        <div class="p-4 align-self-start">
                                            <i class="fa fa-check"></i>
                                        </div>
                                        <div class="p-4 p-4 align-self-end">
                                                The demo it was build using Java Spring framework on the backend and uses bootstrap to render the view.
                                        </div>
                                    </div>

                                    <div class="d-flex flex-row">
                                            <div class="p-4 align-self-start d-none d-lg-block">
                                                <i class="fa fa-check"></i>
                                            </div>
                                            <div class="p-4 p-4 align-self-end d-none d-lg-block">
                                                 The application is hosted on Elastic beanstalk and uses RDS to host MySQL database which are part of AWS 
                                            </div>
                                    </div>

                                    <div class="d-flex flex-row">
                                            <div class="p-4 align-self-start d-none d-lg-block">
                                                <i class="fa fa-check"></i>
                                            </div>
                                            <div class="p-4 p-4 align-self-end d-none d-lg-block">
                                                
                                                The application provides functionality to manage tasks which includes CRUD operations. You can create, read, update and delete tasks. 
                                            </div>
                                    </div>
                                </div>
                                
                            </div>

                            
                        </div>
                    </div>
                </div>
            </header>

            <!-- Explore HEAD section-->

            <section id="explore-head-section">
                <div class="container">
                    <div class="row">
                        <div class="col text-center">
                            <div class="p-5">
                                <h1 class="display-4">Explore</h1>
                                <p class="lead">
                                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
                                    
                                </p>
                                <a href="#" class="btn btn-outline-secondary">Find out more</a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Explore body section-->
            <section id="explore-section" class="bg-light text-muted py-5">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <img src="img/explore-section1.jpeg" alt="" class="img-fluid mb-3 rounded-circle">
                        </div>
                        <div class="col-md-6">
                            <h3>Explore & connect</h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus nesciunt reprehenderit ad temporibus nobis repellendus consequuntur, error culpa, asperiores, consequatur autem velit commodi eos voluptates. Ipsa laborum impedit quas quam.</p>
                            <div class="d-flex flex-row">
                                    <div class="p-4 align-self-start">
                                        <i class="fa fa-check"></i>
                                    </div>
                                    <div class="p-4 p-4 align-self-end">
                                            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
                                    </div>
                            </div>

                            <div class="d-flex flex-row">
                                    <div class="p-4 align-self-start">
                                        <i class="fa fa-check"></i>
                                    </div>
                                    <div class="p-4 p-4 align-self-end">
                                            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
                                    </div>
                            </div>    
                        </div>
                    </div>
                </div>
            </section>

            <!-- Create HEAD section-->

            <section id="create-head-section" class="bg-primary">
                <div class="container">
                    <div class="row">
                        <div class="col text-center">
                            <div class="p-5">
                                <h1 class="display-4">Create</h1>
                                <p class="lead">
                                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
                                    
                                </p>
                                <a href="#" class="btn btn-outline-light">Find out more</a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Create body section-->
            <section id="create-section" class="py-5">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6">
                                <h3>Create your passion</h3>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus nesciunt reprehenderit ad temporibus nobis repellendus consequuntur, error culpa, asperiores, consequatur autem velit commodi eos voluptates. Ipsa laborum impedit quas quam.</p>
                                <div class="d-flex flex-row">
                                        <div class="p-4 align-self-start">
                                            <i class="fa fa-check"></i>
                                        </div>
                                        <div class="p-4 p-4 align-self-end">
                                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
                                        </div>
                                </div>
    
                                <div class="d-flex flex-row">
                                        <div class="p-4 align-self-start">
                                            <i class="fa fa-check"></i>
                                        </div>
                                        <div class="p-4 p-4 align-self-end">
                                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
                                        </div>
                                </div>    
                            </div>
                            <div class="col-md-6">
                                <img src="img/create-section1.jpeg" alt="" class="img-fluid mb-3 rounded-circle">
                            </div>
                            
                        </div>
                    </div>
                </section>

            <!-- Share HEAD section-->

            <section id="share-head-section" class="bg-primary">
                    <div class="container">
                        <div class="row">
                            <div class="col text-center">
                                <div class="p-5">
                                    <h1 class="display-4">Share</h1>
                                    <p class="lead">
                                            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
                                        
                                    </p>
                                    <a href="#" class="btn btn-outline-light">Find out more</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
    
                <!-- Share body section-->
                <section id="share-section" class="bg-light text-muted py-5">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6">
                                <img src="img/share-section1.jpeg" alt="" class="img-fluid mb-3 rounded-circle">
                            </div>
                            <div class="col-md-6">
                                <h3>Share & collaborate</h3>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus nesciunt reprehenderit ad temporibus nobis repellendus consequuntur, error culpa, asperiores, consequatur autem velit commodi eos voluptates. Ipsa laborum impedit quas quam.</p>
                                <div class="d-flex flex-row">
                                        <div class="p-4 align-self-start">
                                            <i class="fa fa-check"></i>
                                        </div>
                                        <div class="p-4 p-4 align-self-end">
                                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
                                        </div>
                                </div>
    
                                <div class="d-flex flex-row">
                                        <div class="p-4 align-self-start">
                                            <i class="fa fa-check"></i>
                                        </div>
                                        <div class="p-4 p-4 align-self-end">
                                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
                                        </div>
                                </div>    
                            </div>
                        </div>
                    </div>
                </section>

                <!-- Main footer-->

                <footer id="main-footer" class="bg-dark">
                    <div class="container">
                        <div class="row">
                            <div class="col text-center">
                                <div class="py-4">
                                    <h1 class="h3">My theme</h1>
                                    <p>Copyright by Alonso Hernandez</p>
                                    <button class="btn ntn-primary" data-toggle="modal" 
                                    data-target="#contactModal">Contact US</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>

                <!-- Contact Modal-->

                <div class="modal fade text-dark" id="contactModal">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-tittle" id="contactModalTittle">
                                    Contact me
                                </h5>
                            </div>   
                            <div class="modal-body">
                            
                            	<form class="form-horizontal" method="POST" action="save-feedback">
																														
		                                    <div class="form-group">
		                                        <label>Name</label>
		                                        <input type="text" class="form-control" name="name" />
		                                    </div>
		                                    <div class="form-group">
		                                        <label>Email</label>
		                                        <input type="text" class="form-control" name="email" />
		                                    </div>
		                                    <div class="form-group">
		                                        <label>Message</label>
		                                        <textarea class="form-control" name="message"></textarea>
		                                    </div>
		                                																				
										<div class="modal-footer">
			<!--                                 <button class="btn btn-primary btn-block" value="Save">Submit</button> -->
			                                <input type="submit" class="btn btn-primary btn-block" value="Submit"/>
			                            </div>	
													
									</form>                                                                            
                            </div>
                            
                        </div>
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
							<tr>
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
								<tr class="table-secondary" style="color:#000">
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
	
				
				<form class="form-horizontal" method="POST" action="save-task" modelAttribute="">
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
							<input type="text" class="form-control" name="description" value="${task.description}"/>
						</div>				
					</div>
					<div class="form-group row">
						<label class="control-label col-md-3">Finished</label>
						<div class="col-md-7">
												
									<div class="form-row">
										<input type="radio" class="col-sm-1" name="finished" value="false" <c:if test="${task.finished == true}">checked</c:if> /> 
										<div class="col-sm-1">Yes</div>
										<input type="radio" class="col-sm-1" name="finished" value="true"  <c:if test="${task.finished == false}">checked</c:if> />
<%-- 										<form:checkboxes items = "${tasks}" path = "task.finished" /> --%>
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