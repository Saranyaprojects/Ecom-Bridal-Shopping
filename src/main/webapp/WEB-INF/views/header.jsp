	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	    pageEncoding="ISO-8859-1"%> 
	    
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	    <html>
	
	<head>
	<title>Gorgeous Bridal Collection</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link href="resources/css/style.css" rel="stylesheet">
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script>
	$(document).ready(function () {
	    $('.dropdown-toggle').dropdown();
	});
	</script>
	 </head>
	 
	 <body>
	 <nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
	                    <button class="navbar-toggle" data-toggle="collapse" data-target="#myMenu">
	                    <span class="icon-bar"></span>
	                    <span class="icon-bar"></span>
	                    <span class="icon-bar"></span>
	                    </button>
	            
	                </div> 
	                
	 	<div class="collapse navbar-collapse" id="myMenu">
	    <ul class="nav navbar-nav">
	    <li><a href="home"><h4>Gorgeous Bridal Collection</h4></a></li>
	    <li><a href="home"><img src="resources/images/logo_img.jpg" alt="logo" width="50" height="50"></a></li>
	   	<c:if test="${pageContext.request.userPrincipal.name != null }">
	    </c:if>
	    <c:if test="${pageContext.request.userPrincipal.name == null }">
	    <li><a href="home">Home</a></li>
	    </c:if>
	    <c:if test="${pageContext.request.userPrincipal.name==null }">
		<li><a href="albums" id="page">Products</a></li>
		<li><a href="About" id="page">About</a></li>
		</c:if>
								<security:authorize access="hasRole('ROLE_USER')">
										<li><a href="About" id="page">About</a></li>
								
								<li><a href="albums" id="page">Products</a></li>
								<li><a href="contacts" rel="stylesheet">Contact</a></li>
								
								
								
								</security:authorize>
	      <security:authorize access="hasRole('ROLE_ADMIN')"> 
	                   		<li>
	                  <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" id="#">Categories<span class="caret"></span></a>
					<ul class="dropdown-menu" >
						<li><a href="CategoryView">View</a></li>
						<li><a href="Category">Add</a></li>
						
						
					</ul>
	                   		
	</li>   
	<li>
	                  <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" id="#">Products<span class="caret"></span></a>
					<ul class="dropdown-menu" >
						<li><a href="ViewProduct">View</a></li>
						<li><a href="Product">Add</a></li>
						
						
					</ul>
					<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Supplier<span class="caret"></span></a>
	        <ul class="dropdown-menu">
	          <li><a href="SupplierView">View</a></li>
	          <li><a href="Supplier">Add</a></li>
	        
	        </ul>
	      </li>   
								<li><a href="displayartist" id="page">Supplier</a></li>
               		
	                       <li><a href="About" rel="stylesheet">About</a></li>
                     	                       <li><a href="About" rel="stylesheet">Contact</a></li>
<!-- 	                       	                       <a href="Contact/Contact.html" rel="stylesheet">Contact</a></li>
 -->	                       	                       
	                       
                       <!-- <li><a href="FeedBack" rel="stylesheet">Feedback</a></li> -->
	                       </security:authorize>
<!-- 	                       <li><a href="Contact" rel="stylesheet">Contact</a></li>
 -->	                    </ul>
	                    
	                    <ul class="nav navbar-nav navbar-right">
	                    <c:if test="${pageContext.request.userPrincipal.name==null }">
	                   <c:url value="/Signup" var="Signup"></c:url>
	                    <c:url value="/login1" var="login1"></c:url> 
	       <li><a href="${Signup}"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
	        	        <li><a href="${login1}"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
	        
	        </c:if>
	        <c:if test="${pageContext.request.userPrincipal.name!=null }">
										<li id="right"><security:authorize access="hasRole('ROLE_USER')">
						<li><a href="#">Hi ${pageContext.request.userPrincipal.name}!!</a></li>
						
						<li><a href="myCart"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
										<li><a href="History"><span
										class="glyphicon glyphicon-list"></span> Orders</a></li>
						</security:authorize><security:authorize access="hasRole('ROLE_ADMIN')">
						<li><a href="admincart"><span
										class="glyphicon glyphicon-list-alt"></span> Orders</a></li>
						</security:authorize></li>
						
						<c:url value="/logout" var="logout"></c:url>
								<li id="right"><a href="${logout}"><span
										class="glyphicon glyphicon-log-out"></span> Logout</a></li>
										</c:if>
	        
	      </ul>
	               </div>
	</div>
	
	</nav>
	 
	 </body> 
	 </html> 
	
