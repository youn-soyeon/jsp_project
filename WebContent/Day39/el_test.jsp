<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	session.setAttribute("test", "Session Test");
%>
<html>
<head>
<title>���尴ü ��� ����</title>
</head>
<body>
	<form action="el_test2.jsp" method="post">
		<table border=1>
			<tr>
				<td>�̸�:</td>
				<td><input type="text" name="name" value="ȫ�浿"></td>
			</tr>
			<tr>
				<td colspan=2 align=center><input type="submit" value="�Է�"></td>
			</tr>
		</table>
	</form>
</body>
</html>