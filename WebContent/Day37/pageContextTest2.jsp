<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>pageContext Test</title>
</head>
<body>
<%
// ������������ ��û�� ���信 ���� �������URL�� ������ �ּҷ� �ӽ÷� �ѱ��.
// include�� �������� ó���� ������ ������� �ٽ� ������ �������� ���ƿ´�.
// ����, include�� ������ �������� ������ ���� �������� �����ϴ� ȿ���� ������.
pageContext.include("pageContextTest3.jsp");
%>
<h2>pageContext�� forward�޼���� ������ �� ������ �Դϴ�.</h2>
</body>
</html>