<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<html>
<head>
<title>Out Test</title>
</head>
<body>
	<h2>Out Test</h2>
	<table border="1">
		<tr>
			<td>autoFlush ����</td>
			<td><%=out.isAutoFlush()%></td>
		</tr>
		<tr>
			<td>��� ������ ũ��</td>
			<td><%=out.getBufferSize()%>����Ʈ</td>
		</tr>
		<tr>
			<td>��� ������ ���� ��</td>
			<td><%=out.getRemaining()%>����Ʈ</td>
		</tr>
	</table>
</body>
</html>