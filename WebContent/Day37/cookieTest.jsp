<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	//new Cookie(��Ű�̸�, ��Ű��)
	Cookie cookie = new Cookie("name", "hongkildong");
	cookie.setMaxAge(600);
	response.addCookie(cookie);
%>
<html>
<head>
<title>Cookie Test</title>
</head>
<body>
	<h2><%=cookie.getName()%></h2>
	<h2><%=cookie.getValue()%></h2>
	<h2><%=cookie.getMaxAge()%></h2>
	<a href="cookieTest2.jsp">��Ű �� �ҷ�����</a>
</body>
</html>