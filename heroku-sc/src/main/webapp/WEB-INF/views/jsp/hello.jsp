<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.8/angular.min.js"></script> -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
  <script src="resources/core/js/hello.js"></script>
  
  
<title>Maven + Spring MVC</title>
 
<spring:url value="/resources/core/css/hello.css" var="coreCss" />
<spring:url value="/resources/core/css/bootstrap.min.css" var="bootstrapCss" />
<link href="${bootstrapCss}" rel="stylesheet" />
<link href="${coreCss}" rel="stylesheet" />

<style type="text/css">
body {
	background-color: #9AFEFF;
	margin:80px 80px 100px 100px;
}
div#fixedheader {
	position:fixed;
	top:0px;
	left:0px;
	width:100%;
	
	background-color: #00FFFF;
	padding:20px;
}
div#fixedfooter {
	position:fixed;
	bottom:0px;
	left:0px;
	width:100%;
	
	background-color: #00FFFF;
	padding:8px;
}
button#myButton{
	background-color: #254117;
    border: none;
    color: #008080;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
</style></head>

<body>
	<div id="fixedheader" style="color:#008080;">
		<div class="btn-group">
		  <button type="button" class="btn btn-success" style="color:white; background-color: #1589FF">Home</button>
		  <button type="button" class="btn btn-success" style="color:white; background-color: #1589FF">Why Us</button>
		  <button type="button" class="btn btn-success" style="color:white; background-color: #1589FF">About Us</button>
		  <button type="button" class="btn btn-success" style="color:white; background-color: #1589FF">Contact Us</button>
		</div>	
	</div>
	<div class="container-fluid">
	  <h1></h1>
	  <p></p>
	  <div class="row">
	    <div class="col-sm-6" style="background-color:lavender;">
			<input type="text" ng-model="searchBox" size="55" placeholder="Search by name...">
	  	</div>
	    <div class="col-sm-6" style="background-color:lavender;">
		   <form action="search" method="post">
			   <select name="dropdownCity" id="dropdownCity">
			   	  <option value="Choose City">Choose City</option>
				  <option value="New Delhi">New Delhi</option>
				  <option value="Chennai">Chennai</option>
				  <option value="Mumbai">Mumbai</option>
			   </select>
		   	   <!--  <input type="text" name="cn"> -->
		       <button type="submit" id="citySubmit">Search</button>
		   </form>		    
		</div>
		
	  </div>
	</div>    
   	<br>
   	<br>    	
    <div class="row">    	
	  	<div class="col-sm-2">	  		
	  		<form method="post" action="filterSc">
	  			<div><b>Area</b></div>
			    <input type="checkbox" name="Areas" value="Rohini">Rohini<br />
			    <input type="checkbox" name="Areas" value="Pitampura">Pitampura<br />
			    <input type="checkbox" name="Areas" value="Karol Bagh">Karol Bagh<br />
			    <div><b>Ownership</b></div>
			    <input type="checkbox" name="Ownership" value="Public">Public<br />
			    <input type="checkbox" name="Ownership" value="Private">Private<br />
			    
			    <button type="submit" id="filterSubmit">Search</button>
			</form>
	  	</div>
	  	
	  	<div class="col-sm-10">
        <c:forEach items="${schools}" var="school">
        	<tr>          
            	<p>${school.schoolName}</p>
            	<p>${school.imageName}</p>
            	<p>${school.address}</p>
            	<p>${school.area}</p>
            	<p>${school.city}</p>
            	<p>${school.state}</p>
            	<p>${school.affiliation}</p>            	
            	<p>${school.ownership}</p>
            	<p>${school.type}</p>
            	<p>${school.classes}</p>
            	<p>${school.preprimary}</p>
            	<p>${school.medium}</p>
            	<p>${school.playground}</p>
            	<p>${school.schoolBus}</p>
            	<p>${school.email}</p>
            	<p>${school.website}</p>
            	<p>${school.phone}</p>            	
           </tr>
    	</c:forEach>
    	</div>      
    </div>
 <div id="fixedfooter">Bottom div content</div>   

 
<spring:url value="/resources/core/js/hello.js" var="coreJs" />
<spring:url value="/resources/core/css/bootstrap.min.js" var="bootstrapJs" />
 
<script src="${coreJs}"></script>
<script src="${bootstrapJs}"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
 
</body>
</html>