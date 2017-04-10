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
		<div>
			<h1>Xem danh sách câu hỏi</h1>
		</div>
		<div>
			<table style="width: 100%">
				<tr>

					<td style="text-align: right">Thông tin cần tìm: <input
						type="text"> <select>
							<option>Theo khoa</option>
							<option>Theo bộ môn</option>
							<option>Theo mã câu hỏi</option>
					</select> <input type="submit" value="Search"></td>
				</tr>
			</table>
		</div>
		<div>Danh sách câu hỏi</div>
		<div>
			<table style="width: 100%">
				<tr>
					<td style="width: 30%">
						<div style="border: 1px solid black">
							<table style="width: 100%">
								<tr>
									<td>Mã câu hỏi</td>
									<td style="text-align: right">Thời gian</td>
								</tr>
								<tr>
									<td colspan="2"><p>Nội dung câu hỏi</p></td>
								</tr>
							</table>
						</div>
					</td>
					<td style="width: 30%">
						<div style="border: 1px solid black">
							<table style="width: 100%">
								<tr>
									<td>Mã câu hỏi</td>
									<td style="text-align: right">Thời gian</td>
								</tr>
								<tr>
									<td colspan="2"><p>Nội dung câu hỏi</p></td>
								</tr>
							</table>
						</div>
					</td>
					<td style="width: 30%">
						<div style="border: 1px solid black">
							<table style="width: 100%">
								<tr>
									<td>Mã câu hỏi</td>
									<td style="text-align: right">Thời gian</td>
								</tr>
								<tr>
									<td colspan="2"><p>Nội dung câu hỏi</p></td>
								</tr>
							</table>
						</div>
					</td>
				</tr>
				<tr>
				</tr>
			</table>
		</div>
		<div>
			<table style="width: 100%">
				<tr>
					<td style="text-align: right"><input type="submit" value="<<">
						Trang <input style="width: 20px" type="text">/100 <input
						type="submit" value=">>">
			</table>
			</td>
			</tr>
			</table>
		</div>
	</div>
</body>
</html>