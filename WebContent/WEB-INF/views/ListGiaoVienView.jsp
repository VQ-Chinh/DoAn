<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WelCome</title>
</head>
<body>
	<h1>Danh sách giáo viên</h1>
	<table border="1" cellpadding="5" cellspacing="1">
		<tr>
			<th>Mã giáo viên</th>
			<th>Tên giáo viên</th>
			<th>Ngày sinh</th>
			<th>Học vị</th>
			<th>Loại giáo viên</th>
		</tr>
		<c:forEach items="${listGiaoVien}" var="gv">
			<tr>
				<td>${gv.getMaGiaoVien()}</td>
				<td>${gv.getTenGiaoVien()}</td>
				<td>${gv.getNgaySinh()}</td>
				<td>${gv.getHocVi()}</td>
				<td>${gv.getLoaiGiaoVien()}</td>
				<td><a href="editProduct?code=${product.code}">Edit</a></td>
				<td><a href="deleteProduct?code=${product.code}">Delete</a></td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>