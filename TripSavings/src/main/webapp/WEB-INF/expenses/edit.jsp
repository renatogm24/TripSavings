<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Grace Recipe</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/css/style.css">
<script type="text/javascript" src="js/app.js"></script>
</head>
<body>
	<div class="container">
		<div class="row justify-content-evenly">
			<div class="px-5 px-sm-0 col-sm-6 col-md-4 mb-5">
				<h2 class="text-center mb-3">Edit expense!</h2>			
				<form:form
					class="row g-2 justify-content-center bg-dark text-light py-4 px-3 rounded"
					action="/expenses/${expense.id}" method="post" modelAttribute="expense">
					<input type="hidden" name="_method" value="put">
					<form:label for="title" path="title" class="form-label">Title:</form:label>
					<form:errors path="title" class="text-danger" />
					<form:input type="text" path="title" class="form-control"
						id="title" />
					<form:label for="vendor" path="vendor" class="form-label">Vendor:</form:label>
					<form:errors path="vendor" class="text-danger" />
					<form:input type="text" path="vendor" class="form-control"
						id="vendor" />
					<form:label for="amount" path="amount" class="form-label">Amount:</form:label>
					<form:errors path="amount" class="text-danger" />
					<form:input type="number" path="amount" class="form-control"
						id="amount" />
					<form:label for="description" path="description" class="form-label">Description:</form:label>
					<form:errors path="description" class="text-danger" />
					<form:input type="text" path="description" class="form-control"
						id="description" />
					<button class="btn btn-primary mt-4" type="submit">Save</button>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>