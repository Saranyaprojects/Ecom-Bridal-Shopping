<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>


<%@ include file="header.jsp"%>

<html>
<head>
<title>Gorgeous Bridal Collection</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="home.css" rel="stylesheet">


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style>
	
body {
  background-image:
url("resources/images/back_img3.jpg")!important;
}
}
 .headertop{
 
    
    min-height: 10px;
    background: #ff0032;
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
}
#name{
    color: #05f20c;    
      
        font-family: sans-serif;
        weight: bold;
      
}
.nav-custom{
    background: #f4511e;
    width: 1200px;
    
}
.btn-custom{
   padding-top: 0;
   padding-bottom: 0;
    background: #cccc00;
    display: block;
    
}
.navbar-custom{
    background: #6200ea;
    
.button-group{
   postion: absolute;
  width:50px; 
}
.dropdown-toggle{
    bacground: #ff0032;
}
#dropdown-custom{
    background: #ff0032;
    font-family: sans-serif;
}
#logindrodown{
    width: 600px;
    min-height: 400px;
    bacground: #ff6666;
    padding-left: 30px;
     padding-right: 30px;
}
.tales {
  width: 100%;
  height: 200px;
}
.carousel-inner{
  width:50%;
  max-height: 300px !important;
}
.container-fluid{
	background: #ff0032;
}
ul.dropdown-lr {
  width: 300px;
}
.navbar-min-height{
    min-height: 150px;
    }
    #footer{
margin-top: 400px;
}

@media only screen and (max-width: 768px) {
    /* Not working */
    .navbar-min-height{
        min-height: 30px;
    }
}
 	</style>
 
 <!-- Start WOWSlider.com HEAD section -->
<link rel="stylesheet" type="text/css" href="resources/engine1/style.css" />
<script type="text/javascript" src="resources/engine1/jquery.js"></script>
<!-- End WOWSlider.com HEAD section -->

</head>
<body>
	
	<!-- Start WOWSlider.com BODY section -->
<div id="wowslider-container1">
<div class="ws_images"><ul>
		<li><img src="resources/data1/images/1_img.jpg" alt="1_img" title="" id="wows1_0"/></li>
		<li><img src="resources/data1/images/2_img.jpg" alt="2_img" title="" id="wows1_1"/></li>
		<li><img src="resources/data1/images/3_img.jpg" alt="3_img" title="" id="wows1_2"/></li>
		<li><a href="http://wowslider.net"><img src="resources/data1/images/5_img.jpg" alt="html5 slider" title="" id="wows1_4"/></a></li>
		<li><img src="resources/data1/images/6_img.jpg" alt="6_img" title="" id="wows1_5"/></li>
	</ul></div>
	<div class="ws_bullets"><div>
		<a href="#" title="1_img"><span><img src="resources/data1/tooltips/1_img.jpg" alt="1_img"/>1</span></a>
		<a href="#" title="2_img"><span><img src="resources/data1/tooltips/2_img.jpg" alt="2_img"/>2</span></a>
		<a href="#" title="3_img"><span><img src="resources/data1/tooltips/3_img.jpg" alt="3_img"/>3</span></a>
		<a href="#" title="5_img"><span><img src="resources/data1/tooltips/5_img.jpg" alt="5_img"/>5</span></a>
		<a href="#" title="6_img"><span><img src="resources/data1/tooltips/6_img.jpg" alt="6_img"/>6</span></a>
	</div></div><div class="ws_script" style="position:absolute;left:-99%"><a href="http://wowslider.net">javascript image slider</a> by WOWSlider.com v8.8</div>
<div class="ws_shadow"></div>
</div>	
<script type="text/javascript" src="resources/engine1/wowslider.js"></script>
<script type="text/javascript" src="resources/engine1/script.js"></script>
<!-- End WOWSlider.com BODY section -->
	
	
<%-- <%@ include file="Footer.jsp"%> --%>



</body>

</html>
