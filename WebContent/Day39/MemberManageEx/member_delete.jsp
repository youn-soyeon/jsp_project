<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String id = null;
	if ((session.getAttribute("id") == null) || (!((String) session.getAttribute("id")).equals("admin"))) {
		out.println("<script>");
		out.println("location.href='loginForm.jsp'");
		out.println("</script>");
	}

	String delete_id = request.getParameter("id");

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	try {
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();

		pstmt = conn.prepareStatement("DELETE FROM member2 WHERE id=?");
		pstmt.setString(1, delete_id);
		pstmt.executeUpdate();

		out.println("<script>");
		out.println("location.href='loginForm.jsp'");
		out.println("</script>");
	} catch (Exception e) {
		e.printStackTrace();
	}
%>