<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Request Test2</title>
</head>
<body>
	<h1>������� ����</h1>
	<table border="1">
		<tr>
			<td>����̸�</td>
			<td>�����</td>
		</tr>
		<%
			Enumeration e = request.getHeaderNames();
			while (e.hasMoreElements()) {
				String headerName = (String) e.nextElement();
		%>
		<tr>
			<td><%=headerName%></td>
			<td><%=request.getHeader(headerName)%></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>