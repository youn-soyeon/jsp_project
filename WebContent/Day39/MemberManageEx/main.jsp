<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String id = null;
	if (session.getAttribute("id") != null) {
		id = (String) session.getAttribute("id");
	} else {
		out.println("<script>");
		out.println("location.href='loginForm.jsp'");
		out.println("</script>");
	}
%>
<html>
<head>
<title>ȸ������ �ý��� ���� ������</title>
</head>
<body>
	<h3><%=id%>�� �α��� �ϼ̽��ϴ�.
	</h3>
	<%
		if (id.equals("admin")) {
	%>
	<a href="member_list.jsp">�����ڸ�� ����(ȸ�� ��� ����)</a>
	<%
		}
	%>
</body>
</html>