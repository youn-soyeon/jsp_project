<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	Cookie cookie = new Cookie("language", request.getParameter("language"));
	cookie.setMaxAge(60 * 60 * 24); // 쿠키유효시간 : 하루
	response.addCookie(cookie);
%>

<script>
	location.href = "cookieExample.jsp"
</script>