<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	//현재 페이지의 요청과 응답에 관한 제어권을 URL로 지정된 주소로 영구적으로 넘긴다.
	//forward된 페이지의 요청 처리가 종료되면 응답도 종료된다.
	pageContext.forward("pageContextTest2.jsp");
%>