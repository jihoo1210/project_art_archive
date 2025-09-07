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
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script src="<c:url value='/js/script.js' />"></script>
</head>

<body class="overflow-x-hidden d-flex flex-column">
	<header class="container-fluid fixed-top"
		style="background: rgb(246, 246, 246);">
		<nav class="container navbar navbar-expand-lg justify-content-between"
			data-bs-theme="light">
			<a href="#" class="navbar-brand text-uppercase fw-bold me-5">impression</a>
			<button class="navbar-toggler shadow-none border-none" type="button"
				data-bs-toggle="collapse" data-bs-target="#header-navbar"
				aria-controls="header-navbar" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="header-navbar">
				<ul class="navbar-nav flex-fill justify-content-start"
					id="navbar-scrollspy">
					<li class="nav-item"><a href="#archive-section"
						class="nav-link text-capitalize">archive</a></li>
					<li class="nav-item"><a href="#download-section"
						class="nav-link text-capitalize">download</a></li>
					<li class="nav-item"><a href="#notice-section"
						class="nav-link text-capitalize">notice board</a></li>
				</ul>
				<form action="login.jsp" method="get">
					<button type="submit" class="btn border btn-outline-dark text-uppercase">
						<c:choose>
							<c:when test="${not empty cookie.userid }">
               					my page
               				</c:when>
							<c:otherwise>
               					login
               				</c:otherwise>
						</c:choose>
					</button>
				</form>
			</div>
		</nav>
	</header>

	<section class="container img-section user-select-none">
		<img src="img/John_Everett_Millais_-_Ophelia_-_Google_Art_Project.jpg"
			alt="진주 목걸이를 한 여인" class="object-fit-contain">
	</section>

	<main>
		<div id="archive-section" class="pt-5 mx-auto">
			<h1 class="text-center text-uppercase mb-5">archive</h1>
			<div class="row container mx-auto main-section">
				<div class="main-section-content col-12 col-md-6 col-lg-3">
					<img
						src="img/960px-Van_Gogh_-_Starry_Night_-_Google_Art_Project.webp"
						alt="1">
				</div>
				<div class="main-section-content col-12 col-md-6 col-lg-3">
					<img
						src="img/960px-Van_Gogh_-_Starry_Night_-_Google_Art_Project.webp"
						alt="1">
				</div>
				<div class="main-section-content col-12 col-md-6 col-lg-3">
					<img
						src="img/960px-Van_Gogh_-_Starry_Night_-_Google_Art_Project.webp"
						alt="1">
				</div>
				<div class="main-section-content col-12 col-md-6 col-lg-3">
					<img
						src="img/960px-Van_Gogh_-_Starry_Night_-_Google_Art_Project.webp"
						alt="1">
				</div>
				<div class="main-section-content col-12 col-md-6 col-lg-3">
					<img
						src="img/960px-Van_Gogh_-_Starry_Night_-_Google_Art_Project.webp"
						alt="1">
				</div>
				<div class="main-section-content col-12 col-md-6 col-lg-3">
					<img
						src="img/960px-Van_Gogh_-_Starry_Night_-_Google_Art_Project.webp"
						alt="1">
				</div>
				<div class="main-section-content col-12 col-md-6 col-lg-3">
					<img
						src="img/960px-Van_Gogh_-_Starry_Night_-_Google_Art_Project.webp"
						alt="1">
				</div>
				<div class="main-section-content col-12 col-md-6 col-lg-3">
					<img
						src="img/960px-Van_Gogh_-_Starry_Night_-_Google_Art_Project.webp"
						alt="1">
				</div>
			</div>
		</div>
		<div id="download-section" class="mx-auto">
			<h1 class="text-center text-uppercase my-5">download</h1>
			<div class="row container mx-auto">
				<div class="col-12 col-md-6 col-lg-3 download-section-content">
					<div class="download-section-inner-container">
						<img src="img/Nebamun-Detail.jpg" alt="Ancient Art Download">
						<p>
							Ancient<br />Art<br />Download
						</p>
					</div>
				</div>
				<div class="col-12 col-md-6 col-lg-3 download-section-content">
					<div class="download-section-inner-container">
						<img src="img/Compianto_sul_Cristo_morto.jpg"
							alt="Medieval Art Download">
						<p>
							Medieval<br />Art<br />Download
						</p>
					</div>
				</div>
				<div class="col-12 col-md-6 col-lg-3 download-section-content">
					<div class="download-section-inner-container">
						<img
							src="img/960px-Van_Gogh_-_Starry_Night_-_Google_Art_Project.webp"
							alt="Modern Art Download">
						<p>
							Modern<br />Art<br />Download
						</p>
					</div>
				</div>
				<div class="col-12 col-md-6 col-lg-3 download-section-content">
					<div class="download-section-inner-container">
						<img src="img/Campbell's_Soup_Cans_by_Andy_Warhol.jpg"
							alt="Contemporary Art Download">
						<p>
							Contemporary<br />Art<br />Download
						</p>
					</div>
				</div>
			</div>
		</div>
		<div id="notice-section" class="mx-auto">
			<h1 class="text-center text-uppercase my-5">notice board</h1>
			<div class="d-flex flex-column container mx-auto table-responsive">
				<table class="table table-hover text-center">
					<thead>
						<tr>
							<th scope="row" class="text-uppercase">ID</th>
							<th scope="row" class="text-uppercase w-75">TITLE</th>
							<th scope="row" class="text-uppercase">WRITER</th>
							<th scope="row" class="text-uppercase">CREATED_AT</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">1</th>
							<td>제목</td>
							<td>글쓴이</td>
							<td>날짜</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</main>
	<script>
		<c:if test="${not empty resisterInfo }">
		alert("${resisterInfo}");
		</c:if>
	</script>
</body>

</html>