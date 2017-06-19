<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml11.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Product Detail</title>

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
	
		<h1>Order Detail </h1>	
		<form method="post" action="../orders/update" >
			
			<input type="hidden" name="id" value="${order.id}">
			<p>Order Date:</p>
			<p>
				<%= new java.text.SimpleDateFormat("MM/dd/yyyy").format(new java.util.Date()) %>
			</p>
					
			<p>Person:</p>		
			<p>
				<label>${user.firstName} </label><label>${user.lastName} </label>	
			</p>
			
			<hr/>
			
			<h5>Order Lines </h5>				
			
			<p>Product:</p>
			<p>
				<select  class="form-control" name="product">
				  <c:forEach var="p" items="${products}">
				  	<option value="${p}">${p.productName}</option>
				  </c:forEach>
				</select>
			</p>
					
			<p>Quantity:</p>		
			<p>
				<input type="text" name="orderLine.quantity">	
			</p>
						
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			
			<button type="submit" class="btn btn-success">
				    Add
			</button>			
		
			
								
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			
			<button type="submit" class="btn btn-success">
				<c:choose>
				    <c:when test="${order.id == 0}">
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