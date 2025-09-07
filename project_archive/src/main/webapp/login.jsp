<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Impression</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="<c:url value='/css/style.css' />">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body class="overflow-x-hidden d-flex flex-column" id="login-body">
	<main class="container-xl mx-auto" id="login-section">
		<div class="mx-auto px-4 max-w-75 min-vh-100 pb-5"
			style="background-color: rgba(246, 246, 246, .9);">
			<form action="index.jsp" method="get"
				class="d-flex justify-content-end">
				<button type="submit"
					class="btn btn-outline-dark mt-3 text-capitalize">back to
					main</button>
			</form>
			<form action="<c:url value='login' />"
				class="d-flex flex-column px-4 mx-auto max-w-75 mb-5">
				<h1 class="text-center text-uppercase mt-5">login	</h1>
				<label for="login-userid" class="text-uppercase mt-3">id</label> <input
					type="text" class="form-control" id="login-userid"> <label
					for="login-password" class="text-uppercase mt-3">password</label> <input
					type="text" class="form-control" id="login-password">
				<div class="d-flex">
					<div class="col-2 col-sm-6 col-md-10">
						<div class="form-check form-switch">
							<input class="form-check-input" type="checkbox" role="switch"
								id="switchCheckDefault"> <label
								class="form-check-label text-capitalize"
								for="switchCheckDefault">remember id</label>
						</div>
					</div>
					<button type="submit"
						class="btn btn-outline-dark mt-4 col-10 col-sm-6 col-md-2">login</button>
				</div>
			</form>
			<hr>
			<form action="<c:url value='/resiste' />" method="post"
				class="d-flex flex-column mx-auto px-4 max-w-75 mb-5">
				<h1 class="text-center text-uppercase mt-5">resister</h1>
				<label for="res-userid" class="text-uppercase mt-3">id</label> <input
					type="text" class="form-control" id="res-userid" name="userid">

				<label for="userpass" class="text-uppercase mt-3">password</label> <input
					type="text" class="form-control" id="res-password" name="password">
				<div class="d-flex">
					<div class="col-2 col-sm-6 col-md-10"></div>
					<button type="submit"
						class="btn btn-outline-dark mt-4 col-10 col-sm-6 col-md-2">resister</button>
				</div>
			</form>
			<hr>
			<form action="#"
				class="d-flex flex-column mx-auto px-4 max-w-75 mb-5">
				<h1 class="text-center text-uppercase mt-5">find password</h1>
				<label for="userid" class="text-uppercase mt-3">id</label> <input
					type="text" class="form-control" id="uesrid">
				<div class="d-flex">
					<div class="col-2 col-sm-6 col-md-9"></div>
					<button type="submit"
						class="btn btn-outline-dark mt-4 col-10 col-sm-6 col-md-3">find
						password</button>
				</div>
			</form>
		</div>
	</main>
	<script>
    	<c:if test="${not empty sessionScope.isResiste}">
    		alert("${sessionScope.isResiste}");
    	</c:if>
    </script>
</body>

</html>