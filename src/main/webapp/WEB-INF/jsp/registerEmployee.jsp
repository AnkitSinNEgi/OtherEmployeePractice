<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Employee</title>
<link href="webjars/bootstrap/5.2.3/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	background-color: #f0f0f0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
}

.container {
	background-color: white;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.form-group {
	margin-bottom: 10px;
}
</style>
</head>
<body>
	<div class="container">
		<h2>Register Employee</h2>
		<form:form action="/jsp/register" method="post" modelAttribute="user">
			
			<div class="form-group">
				Employee First Name:
				<form:input path="firstName" type="text"
					placeholder="first name" />
			</div>
			<div class="form-group">
				Employee Last Name:
				<form:input path="lastName" type="text"
					placeholder="last name" />
			</div>
			<div class="form-group">
				Email ID:
				<form:input path="emailId" type="email"
					placeholder="enter employee email" />
			</div>
			<div class="form-group">
				<form:button class="btn btn-success">Register</form:button>
			</div>
		</form:form>
		<br> <a href="/jsp/viewUsers">Back to Employee List</a>
	</div>
	<script src="webjars/bootstrap/5.2.3/js/bootstrap.min.js"></script>
	<script src="webjars/jquery/3.6.4/jquery.min.js"></script>
</body>
</html>
