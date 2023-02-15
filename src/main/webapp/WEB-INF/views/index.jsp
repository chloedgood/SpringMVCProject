<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>

	<meta charset="UTF-8">
	<title>Home</title>
</head>
<body>

	<h1> Welcome to MVC's Pizza </h1>
	
	<c:set var = "now" value ="<%=new java.util.Date()%>" />
	 
	<h3> Today's date : <fmt:formatDate type = "day" value = "${day}" /> <fmt:formatDate type = "date" value = "${now}" /> </h3>
		<img class="image-size" src="/pizza.jpg " alt="Pizza" />
	

		<h1>Specialty Pizza's</h1>
		<u1>
			<a href ="/specialty/Cheese/10"> Cheese and Roasted Garlic Pizza</a><br><br>

			<a href ="/specialty/Supreme/15"> All the Meats and Veggies</a><br><br>

			<a href ="/specialty/Pepperoni/12"> Pepperoni and Garlic Pizza</a><br><br>
		</u1>



		<!--  Using c:forEach Loop thru List and using c:url generate urls -->	
		<c:forEach items="${productlist}" var="product">
		<a href = "<c:url value = "/specialty/${product.name}/${product.price}"/>">${product.name}</a> <br><br>
		</c:forEach>
	
		<h1>Custom Pizza's</h1>
		
			<a href ="/custom"> Build your own!</a>

		<br>
		<h1>Leave a Review</h1>
		<br>
			<a href ="/review" > Leave a Review.</a>            

</body>
</html>









