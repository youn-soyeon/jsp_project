<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<html>
<head>
<title>Forward Action Test</title>
</head>
<body>
	<h2>������ �׼� �׽�Ʈ</h2>
	<form action="forwardTest1.jsp" method="post">
		<input type="hidden" name="forwardPage" value="forwardTest2.jsp">
		<table>
			<tr>
				<td>�̸�</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>����</td>
				<td><input type="text" name="age"></td>
			</tr>
			<tr>
				<td>�ּ�</td>
				<td><input type="text" name="address"></td>
			</tr>
			<tr>
				<td><input type="submit" name="����"></td>
			</tr>
		</table>
	</form>
</body>
</html>