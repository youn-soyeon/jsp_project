<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="vo.User" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			User user = (User)session.getAttribute("user");
			
			if(user == null) {
		%>
				<a href="login.html" target="rightFrame">�α���</a>
		<%
			} else {
		%>
				<a href="logout" target="rightFrame">�α׾ƿ�</a>
		<%
			}
		%>
	</body>
</html>