<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Your Pizza</title>


<link rel="stylesheet" href="/style.css" />


</head>
<body>
	<h1> Your Pizza  </h1>
	<p> <b> Size : </b> ${size} </p>
	
    <p> <b> Toppings : </b> ${toppings}  </p>
    
    <p> <b> Gluten-Free Crust : </b> ${crust} </p>
    <p> <b> Specialty Instructions: </b>  ${comments}</p>
	
	<p> <b> Price : </b> <fmt:formatNumber value="${amount}" pattern="#.00" /></p>

	
	<c:if test="${amount > 15}">
	<h2 class="color"> Because your order meets the $ 15.00 minimum, you get 
		<br> ..... FREE DELIVERY ..... </h2>
	</c:if>
	
<a href= "/custom" > Build Another? </a>
<a href= "/" > Back to Home Page</a>
</body>
</html>