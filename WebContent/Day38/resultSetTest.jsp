<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
<%@page import="java.sql.*"%>
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

		while (rs.next()) {
			out.println("<h3>" + rs.getInt(1) + "," + rs.getString(2) + "</h3>");
		}
		rs.close();
	} catch (Exception e) {
		out.println("<h3>������ �������⿡ �����Ͽ����ϴ�.</h3>");
		e.printStackTrace();
	}
%>