<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String name;
	if (session.getAttribute("name") != null) {
		name = (String) session.getAttribute("name");
	} else {
		name = "���� �� ����";
	}
%>
<html>
<head>
<title>Session Test</title>
</head>
<body>
	<h2>���� �׽�Ʈ</h2>
	<input type="bottom" onclick="location.href='sessionSet.jsp'"
		value="���� �� ����">
	<input type="button" onclick="location.href='sessionDel.jsp'"
		value="���� �� ����">
	<input type="button" onclick="location.href='sessionInvalidate.jsp'"
		value="���� �ʱ�ȭ">
	<h3><%=name%></h3>
</body>
</html>