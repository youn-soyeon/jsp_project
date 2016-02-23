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
<title>JDBC 연동 테스트 예제</title>
</head>
<body>
	<h3>
		<%
			if (connect == true) {
		%>
		연결되었습니다.
		<%
			} else {
		%>
		연결에 실패하였습니다.
		<%
			}
		%>
	</h3>
</body>
</html>