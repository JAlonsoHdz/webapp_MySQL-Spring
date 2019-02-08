<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>Demo</title>
    <meta name="description" content=""/>
    <meta name="viewport" content="width=device-width"/>
    <base href="/"/>
<!--     <link rel="stylesheet" type="text/css" href="/webjars/bootstrap/css/bootstrap.min.css"/> -->
<!--     <script type="text/javascript" src="/webjars/jquery/jquery.min.js"></script> -->
<!--     <script type="text/javascript" src="/webjars/bootstrap/js/bootstrap.min.js"></script> -->
<!--     <script type="text/javascript" src="/webjars/js-cookie/js.cookie.js"></script> -->
    
    <link rel="stylesheet" href="static/css/bootstrap-nbw.css" media="screen">
    <link rel="stylesheet" href="static/css/style2.css" media="screen">
    <link rel="stylesheet" href="static/fonts/font-awesome.min.css" media="screen">
    <script src="https://use.fontawesome.com/cdd22921f6.js"></script>
    <script src="static/js/jquery-1.11.1.min.js"></script>    
    <script src="static/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/js-cookie/2.1.0/js.cookie.js"></script>
    
    <script type="text/javascript">
	        
	    var logout = function() {
	        $.post("/logout", function() {
	            $("#user").html('');
	            $(".unauthenticated").show();
	            $(".authenticated").hide();
	        })
	        return true;
	    }
	    
	    if (window.location.hash == '#_=_') {
	    	history.replaceState
	    		? history.replaceState(null, null, window.location.href.split('#')[0])
	    		: window.location.hash = '';
	    }	    
	    $.get("/user", function(data) {
	        $("#user").html(data.userAuthentication.details.name);
	        $(".unauthenticated").hide()
	        $(".authenticated").show()
	    });
	    
	    $.ajaxSetup({
	    	beforeSend : function(xhr, settings) {
	    	  if (settings.type == 'POST' || settings.type == 'PUT'
	    	      || settings.type == 'DELETE') {
	    	    if (!(/^http:.*/.test(settings.url) || /^https:.*/
	    	        .test(settings.url))) {
	    	      // Only send the token to relative URLs i.e. locally.
	    	      xhr.setRequestHeader("X-XSRF-TOKEN",
	    	          Cookies.get('XSRF-TOKEN'));
	    	    }
	    	  }
	    	}
	    	});
	</script>
</head>
<body>
	<h1>Demo</h1>
	<div class="container"></div>
	
	<div class="container unauthenticated">
	    With Facebook: <a href="/login"><button type="button" class="btn btn-success">click here</button></a>
	    
	</div>
	<div class="container authenticated" style="display:none">
	    Logged in as: <span id="user"></span>
	    <div>
		    <button onClick="logout()" class="btn btn-primary">Logout</button>
		</div>
	</div>
</body>
</html>