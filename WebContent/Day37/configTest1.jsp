<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<html>
<head>
<title>Config Test</title>
</head>
<body>
	<h2>config �׽�Ʈ</h2>
	<table border="1">
		<tr>
			<td>�ʱ� �Ķ���� �̸�</td>
			<td>�ʱ� �Ķ���� ��</td>
		</tr>
		<%
			Enumeration e = config.getInitParameterNames();
			while (e.hasMoreElements()) {
				String init_paraName = (String) e.nextElement();
		%>
		<tr>
			<td><%=init_paraName%></td>
			<td><%=config.getInitParameter(init_paraName)%></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>