<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show book</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/css/style.css">
<script type="text/javascript" src="js/app.js"></script>
</head>
<body>
	<div class="container justify-content-center mx-auto text-center">
		<ul>
			<li>Title: <c:out value="${expense.getTitle()}"/> </li>
			<li>Vendor: <c:out value="${expense.getVendor()}"/> </li>
			<li>Amount: <c:out value="${expense.getAmount()}"/> </li>
			<li>Description: <c:out value="${expense.getDescription()}"/> </li>
		</ul>
		<a class="btn btn-primary" href="/expenses">Go back</a>		
	</div>
</body>
</html>