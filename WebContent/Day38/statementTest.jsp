<%@page import="javax.sql.*"%>
<%@page import="java.sql.*"%>
<%@page import="javax.naming.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	Connection conn = null;
	String sql = "INSERT INTO student1(num, name) VALUES (6,'ȫ�浿')";

	try {
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();
		Statement stmt = conn.createStatement();

		int result = stmt.executeUpdate(sql);
		if (result != 0) {
			out.println("<h3>���ڵ尡 ��ϵǾ����ϴ�.</h3>");
		}
	} catch (Exception e) {
		out.println("<h3>���ڵ� ��Ͽ� �����Ͽ����ϴ�.</h3>");
		e.printStackTrace();
	}
%>