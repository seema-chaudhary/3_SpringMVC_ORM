<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
<script type="text/javascript"
	src="<c:url value="/resources/js/script.js"/>"></script>
</head>
<body style="background-color: #f0f0f0">
	<div class="text-center">
		<hr>
		<h1 class="">Home page</h1>
		<a href="register" class="btn btn-primary btn-sm">Register</a> <a
			href="google1" class=" btn btn-sm btn-danger">Google-1</a> <a
			href="google2" class=" btn btn-sm btn-warning">Google-2</a>
		<a href="load_file_upload" class="btn btn-sm btn-primary">File
			Upload</a>
			
			<div class="container p-5">
			<div class="row">
				<div class="col-md-8 offset-md-2">
					<div class="card">
						<div class="card-body">
							<h4>My Search Engine</h4>
							<form action="search" method="post">
								<div class="mb-3">
									<input type="text" name="keyword" class="form-control"
										placeholder="Enter keyword">
									<button class="btn btn-sm btn-primary mt-3">Search
										Google</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
	</div>
	
	<hr>
	
		<%
		String name = (String) request.getAttribute("name");
		Integer id = (Integer) request.getAttribute("id");
		%>
		<h2>
			Welcome,
			<%=name%>
		</h2>
		<h2>
			ID:
			<%=id%>
		</h2>
</body>
</html>