<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
session.setMaxInactiveInterval(10);
// �ð����� 10�� ���ΰ�ħ�ϸ� �ٽ� ����
%>
<html>
<head>
<title>SessionTest</title>
</head>
<body>
<h2>���� �׽�Ʈ</h2>
isNew() : <%=session.isNew() %><br>
�����ð� : <%=session.getCreationTime() %><br>
���� ���� �ð� : <%=session.getLastAccessedTime() %><br>
����ID : <%=session.getId() %><br>
</body>
</html>