<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml11.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Person Detail</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="../resources/styles.css">

</head>
<body>
	<div class="detailsContainer">
	
		<h1>Person Detail </h1>	
		<form method="post" action="../persons/update" >
			
			<input type="hidden" name="id" value="${person.id}">
			<p>First Name:</p>
			<p>
				<input type="text" name="firstName" value="${person.firstName}" required >
			</p>
			
			<p>Last Name:</p>			
			<p>
				<input type="text" name="lastName" value="${person.lastName}" required >
			</p>
			
			<p>Email:</p>		
			<p>
				<input type="text" name="email" value="${person.email}" >
			</p>
			
			<p>Phone:</p>
			<p>
				<input type="text" name="phone" value="${person.phone}" >
			</p>	
			
			<p>Is enabled:</p>
			<p>
			<c:choose>
	            <c:when test="${person.enable == true}">
	                <input type="checkbox" name="enable" checked/>
	            </c:when>
	            <c:otherwise>
	                <input type="checkbox" name="enable" />
	            </c:otherwise>
	        </c:choose>
			</p>
			
			<hr/>
			<!-- Data for the address -->
			<input type="hidden" name="idAddress" value="${person.address.id}" >
			<p>City:</p>
			<p>
				<input type="text" name="city" value="${person.address.city}" >
			</p>
			
			<p>Country:</p>
			<p>
				<input type="text" name="country" value="${person.address.country}" >
			</p>
			
			<p>State:</p>
			<p>
				<input type="text" name="state" value="${person.address.state}" >
			</p>
			
			<p>Zipcode:</p>
			<p>
				<input type="text" name="zipcode" value="${person.address.zipcode}" >
			</p>
			
			
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			
			<button type="submit" class="btn btn-success">
				<c:choose>
				    <c:when test="${person.id == 0}">
				        Create 
				    </c:when>    
				    <c:otherwise>
				        Update
				    </c:otherwise>
				</c:choose>
			</button>
			
		</form>
	</div>
</body>
</html>