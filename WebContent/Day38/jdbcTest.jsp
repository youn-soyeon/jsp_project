<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	Connection conn = null;

	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:ORCL";

	Boolean connect = false;

	try {
		Class.forName(driver);
		conn = DriverManager.getConnection(url, "scott", "tiger");

		connect = true;

		conn.close();
	} catch (Exception e) {
		connect = false;
		e.printStackTrace();
	}
%>
<html>
<head>
<title>JDBC ���� �׽�Ʈ ����</title>
</head>
<body>
	<h3>
		<%
			if (connect == true) {
		%>
		����Ǿ����ϴ�.
		<%
			} else {
		%>
		���ῡ �����Ͽ����ϴ�.
		<%
			}
		%>
	</h3>
</body>
</html>