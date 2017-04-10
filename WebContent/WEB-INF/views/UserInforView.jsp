<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="Header.jsp"></jsp:include>
	<div style="margin-top: 1.5%; margin-bottom: 1.5%">Thông Báo</div>
	<jsp:include page="LeftNavigation.jsp"></jsp:include>
	<div
		style="background: #E0E0E0; height: 500px; width: 75%; padding: 5px; float: left; border: 1px black solid; margin-left: 3%">
		<div><h1>Thông tin người dùng</h1></div>
		<div>
			<table>
				<tr>
					<td>Mã giáo viên:</td>
					<td><input type="text" value=${loginedUser.getMaGiaoVien()}></td>
				</tr>
				<tr>
					<td> Password:</td>
					<td><input type="password" value=${loginedUser.getPassword()}></td>
				</tr>
				<tr>
					<td>Tên giáo viên:</td>
					<td><input type="text" value=${loginedUser.getTenGiaoVien()}></td>
				</tr>
				<tr>
					<td>Thông tin thêm:</td>
					<td><textarea>${loginedUser.getMaGiaoVien()}</textarea></td>
				</tr>
				<tr>
					<td>Ngày sinh:</td>
					<td><input type="date" value = ${loginedUser.getNgaySinh()} name="bday"></td>
				</tr>
				<tr>
					<td>Học vị:</td>
					<td><input type="text" value=${loginedUser.getHocVi()}></td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>