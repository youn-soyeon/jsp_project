<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>pageContext Test</title>
</head>
<body>
<%
// 현재페이지의 요청과 응답에 관한 제어구너을URL로 지정된 주소로 임시로 넘긴다.
// include된 페이지의 처리가 끝나면 제어권은 다시 원래의 페이지로 돌아온다.
// 따라서, include로 지정된 페이지의 내용을 원래 페이지에 삽입하는 효과를 가진다.
pageContext.include("pageContextTest3.jsp");
%>
<h2>pageContext의 forward메서드로 포워딩 된 페이지 입니다.</h2>
</body>
</html>