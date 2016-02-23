<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	session.setAttribute("id", request.getParameter("id"));
%>
<html>
<head>
<title>Session Login</title>
</head>
<body>
	<center>
	<%--session이므로 다른페이지로 이동했다가 돌아와도
	브라우저를 유지하는 한 상태가 유지된다. --%>
		<h3>로그인 되었습니다.</h3>
		<h3>
			로그인 아이디 :
			<%=(String) session.getAttribute("id")%></h3>
		<a href="sessionLogout.jsp">로그아웃</a>
	</center>
</body>
</html>