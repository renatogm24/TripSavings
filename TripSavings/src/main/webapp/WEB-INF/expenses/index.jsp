<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
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
	<div class="container justify-center">
		<h1 class="text-danger">All books</h1>
		
		<table class="table">
			<thead>
				<tr>
					<th scope="col">Expense</th>
					<th scope="col">Vendor</th>
					<th scope="col">Amount</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="expense" items="${expenses}">
					<tr>
						<td><c:out value="${expense.getTitle()}" /></td>
						<td><c:out value="${expense.getVendor()}" /></td>
						<td><c:out value="${expense.getAmount()}" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
		<h2 class="text-center mb-3">Create a book!</h2>
			<div style="width:50%;" class="mx-auto">
			<form:form
					class="row g-2 justify-content-center bg-dark text-light py-4 px-3 rounded"
					action="/expenses" method="post" modelAttribute="expense">

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
</body>
</html>