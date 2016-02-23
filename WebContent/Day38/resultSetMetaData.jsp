<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	Connection conn = null;
	String sql = "SELECT * FROM student1";

	try {
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();

		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		ResultSetMetaData rsmd = rs.getMetaData();

		out.println("�÷� �� : " + rsmd.getColumnCount() + "<br>");
		for (int i = 1; i <= rsmd.getColumnCount(); i++) {
			out.println(i + "��° �÷��� �̸� : " + rsmd.getColumnName(i) + "<br>");
			out.println(i + "��° �÷��� Ÿ�� �̸� : " + rsmd.getColumnTypeName(i) + "<br>");
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
%>