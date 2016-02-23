<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Request Test3</title>
</head>
<body>
	<h1>��Ű, URL/URI, ��û��Ŀ� ���õ� ���� ����</h1>
	<table border="1">
		<tr>
			<td>��Ű����</td>
			<%
				Cookie[] cookie = request.getCookies();
				if (cookie == null) {
			%>
			<td>��Ű�� �������� �ʽ��ϴ�</td>
			<%
				} else {
					for (int i = 0; i < cookie.length; i++) {
			%>
			<td><%=cookie[i].getName()%>(<%=cookie[i].getValue()%>)&nbsp;
				&nbsp;</td>
			<%
				}
				}
			%>

		<tr>
			<td>���� �����θ�</td>
			<td><%=request.getServerName()%></td>
		<tr>
			<td>���� ��Ʈ��ȣ</td>
			<td><%=request.getServerPort()%></td>
		<tr>
			<td>��û URL</td>
			<td><%=request.getRequestURL()%></td>
		<tr>
			<td>��û URI</td>
			<td><%=request.getRequestURI()%></td>
		<tr>
			<td>��û ����</td>
			<td><%=request.getQueryString()%></td>
		<tr>
			<td>Ŭ���̾�Ʈ ȣ��Ʈ��</td>
			<td><%=request.getRemoteHost()%></td>
		<tr>
			<td>Ŭ���̾�Ʈ IP�ּ�</td>
			<td><%=request.getRemoteAddr()%></td>
		<tr>
			<td>��������</td>
			<td><%=request.getProtocol()%></td>
		<tr>
			<td>��û���</td>
			<td><%=request.getMethod()%></td>
		<tr>
			<td>���ؽ�Ʈ ���</td>
			<td><%=request.getContextPath()%></td>
	</table>
</body>
</html>