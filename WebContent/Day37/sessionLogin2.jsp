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
	<%--session�̹Ƿ� �ٸ��������� �̵��ߴٰ� ���ƿ͵�
	�������� �����ϴ� �� ���°� �����ȴ�. --%>
		<h3>�α��� �Ǿ����ϴ�.</h3>
		<h3>
			�α��� ���̵� :
			<%=(String) session.getAttribute("id")%></h3>
		<a href="sessionLogout.jsp">�α׾ƿ�</a>
	</center>
</body>
</html>