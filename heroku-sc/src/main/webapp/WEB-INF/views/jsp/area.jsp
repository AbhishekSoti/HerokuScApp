<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>yow</h1>
<div>



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
</body>
</html>

