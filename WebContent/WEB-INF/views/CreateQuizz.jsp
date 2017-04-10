<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Tạo Câu Hỏi</title>
</head>
<body>
	<jsp:include page="Header.jsp"></jsp:include>
	<div style="margin-top: 1.5%; margin-bottom: 1.5%">Thông Báo</div>
	<jsp:include page="LeftNavigation.jsp"></jsp:include>
	<div
		style="background: #E0E0E0; height: 500px; width: 75%; padding: 5px; float: left; border: 1px black solid; margin-left: 3%">
		<div>
			<h1>Tạo Câu Hỏi</h1>
		</div>
		<div>
			<table>
				<tr>
					<td>Nội dung câu hỏi:</td>
					<td><textarea>${loginedUser.getMaGiaoVien()}</textarea></td>
				</tr>
				<tr>
					<td>Câu 1:</td>
					<td><textarea>${loginedUser.getMaGiaoVien()}</textarea></td>
				</tr>
				<tr>
					<td>Câu 2:</td>
					<td><textarea>${loginedUser.getMaGiaoVien()}</textarea></td>
				</tr>
				<tr>
					<td>Câu 3:</td>
					<td><textarea>${loginedUser.getMaGiaoVien()}</textarea></td>
				</tr>
				<tr>
					<td>Câu 4:</td>
					<td><textarea>${loginedUser.getMaGiaoVien()}</textarea></td>
				</tr>
				<tr>
					<td>Đáp án:</td>
					<td><select>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
					</select></td>
				</tr>
				<tr>
				<input type="submit" value="Tạo">
				</tr>
			</table>
		</div>
	</div>
</body>
</html>