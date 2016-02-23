<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
session.setMaxInactiveInterval(10);
// 시간간격 10초 새로고침하면 다시 리셋
%>
<html>
<head>
<title>SessionTest</title>
</head>
<body>
<h2>세션 테스트</h2>
isNew() : <%=session.isNew() %><br>
생성시간 : <%=session.getCreationTime() %><br>
최종 접속 시간 : <%=session.getLastAccessedTime() %><br>
세션ID : <%=session.getId() %><br>
</body>
</html>