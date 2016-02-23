<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	session.setAttribute("name", "Session Test!");
%>
<script>
	location.href = "sessionTest.jsp";
</script>