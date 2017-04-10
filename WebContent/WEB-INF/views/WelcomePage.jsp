<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>WelCome</title>
</head>
<body>
<h1> welcome to Hell </h1>
<p style="color:red"> ${userName} </p>
<a href="Welcome?action=login" method="get">Login  </a> <br>
<a href="Login?action=logout" method="get">Logout </a>
</body>
</html>