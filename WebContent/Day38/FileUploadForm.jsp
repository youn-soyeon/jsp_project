<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<html>
<head>
<title>FileUpload Form</title>
</head>
<body>
	<center>
		<form action="fileUpload.jsp" method="post"
			enctype="multipart/form-data">
			<table border=1>
				<tr>
					<td colspan=2 align=center><h3>���� ���ε� ��</h3></td>
				<tr>
					<td>�ø� ��� :</td>
					<td><input type="text" name="name"></td>
					<br>
				</tr>
				<tr>
					<td>���� :</td>
					<td><input type="text" name="subject"></td>
					<br>
				</tr>
				<tr>
					<td>���ϸ�1 :</td>
					<td><input type="file" name="fileName1"></td>
					<br>
				</tr>
				<tr>
					<td>���ϸ�2 :</td>
					<td><input type="file" name="fileName2"></td>
					<p />
				</tr>
				<tr>
					<td colspan=2 align=center><input type="submit" name="����"></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>