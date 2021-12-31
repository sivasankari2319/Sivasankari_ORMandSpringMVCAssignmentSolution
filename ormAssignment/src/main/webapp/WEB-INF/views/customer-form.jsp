<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h1 class="bg-info text-white" style="text-align: center">Customer
			Relationship Management</h1>
		<hr />

		<h2>
			<c:out
				value="${newCustomer ? 'Add a new customer' : 'Update customer'}" />
		</h2>

		<form action="/crmapp/customers/save" method="post">
			<div class="mb-3">
				<input type="hidden" class="form-control" name="id"
					value="${customer.id}">
			</div>

			<div class="form-inline">
				<input type="text" name="firstname" value="${customer.firstname}"
					class="form-control mb-4 col-4" placeholder="First Name">
			</div>

			<div class="form-inline">
				<input type="text" name="lastname" value="${customer.lastname}"
					class="form-control mb-4 col-4" placeholder="Last Name">
			</div>

			<div class="form-inline">
				<input type="text" name="email" value="${customer.email}"
					class="form-control mb-4 col-4" placeholder="Email">
			</div>

			<button type="submit" class="btn btn-info col-2">Save</button>
			<a href="/crmapp/customers/list" class="btn btn-danger">Cancel</a>
		</form>
	</div>

</body>
</html>