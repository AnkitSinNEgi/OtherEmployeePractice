<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Success</title>
<style type="text/css">
    span {
        display: inline-block;
        width: 200px;
        text-align: left;
    }
</style>
</head>
<body>
	<div align="center">
        <h2>Registration Succeeded!</h2>
        <span>First name:</span><span>${user.firstName}</span><br/>
        <span>E-mail:</span><span>${user.emailId}</span><br/>
        <span>Last name:</span><span>${user.lastName}</span><br/>
      <!--   <span>In Time:</span><span>${user.inTime}</span><br/>
        <span>Out Time:</span><span>${user.outTime}</span><br/>    -->
    </div>
</body>
</html>