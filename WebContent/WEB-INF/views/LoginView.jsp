<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<script src="bootstrap/js/jquery.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>

	<meta charset="utf-8">
	<title> Login </title>
	<link rel="stylesheet" href="">
	<style>
		
	</style>
</head>
<body style="margin: auto" >

<form method="POST" action="Login?action=login">
<div >
<h1> Login</h1>
<p> ${errorString} </p>
<table>
	<tr>
		<td>
			User name: 
		</td>
		<td>
			<input name="userInput" type="text" value="${user.getMaGiaoVien()}"><br>
		</td>
	</tr>
	<tr>
		<td>
			Password:
		</td>
		<td>
			<input name="passwordInput" type="text" value="${user.getPassword()}"><br>
		</td>
	</tr>
	<tr r></tr>
</table>
<div>
	<input type="submit" name="" value="Login">
</div>

</div>
</form>
<div class="container">
<button class="btn btn-primary"></button>
</div>
</body>
</html>