<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Your Pizza</title>
</head>
<body>
<h1> Your Pizza</h1>
	<p> Size: ${size } </p>
	<p> Toppings: ${ toppings } </p>
	<p> Gluten-Free Crust: ${ gluten } </p>
	<p> Specialty Instructions: ${special }</p>
	<p> Price: ${ price } </p>
	
<a href= "/custom" > Build Another? </a>
<a href= "/" > Back to Home Page</a>
</body>
</html>