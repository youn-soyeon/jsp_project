<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%
request.setCharacterEncoding("euc-kr");
String name=request.getParameter("name");
String subject=request.getParameter("subject");
String fileName1=request.getParameter("fileName1");
String fileName2=request.getParameter("fileName2");
//�Ʒ� ���� �߰�
String origfileName1 = request.getParameter("origfileName1");
String origfileName2 = request.getParameter("origfileName2");
%>
<html>
<head>
<title>���� ���ε� Ȯ�� �� �ٿ�ε�</title>
</head>
<body>
	�ø� ��� :
	<%=name %><br> ���� :
	<%=subject %><br>
	<!-- ���ϸ� ��ũ�Ŵ� �κ� ������ -->
	���ϸ�1:
	<a href="file_down.jsp?file_name=<%=fileName1 %>"><%=origfileName1 %></a>
	<br> ���ϸ�2:
	<a href="file_down.jsp?file_name=<%=fileName2 %>"><%=origfileName2 %></a>
	<p>
</body>
</html>