<%@page import="java.io.Reader"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	StringBuffer sb = null;

	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:ORCL";

	try {
		Class.forName(driver);
		conn = DriverManager.getConnection(url, "scott", "tiger");

		pstmt = conn.prepareStatement("SELECT * FROM clobtable where num=1");
		rs = pstmt.executeQuery();
		if (rs.next()) {
			Reader rd = rs.getCharacterStream("content");

			sb = new StringBuffer();
			char[] buf = new char[1024];
			int readcnt;
			//read(������ ����, offset, ����)
			while ((readcnt = rd.read(buf, 0, 1024)) != -1) {
				sb.append(buf, 0, readcnt); // ���� �����
			}
		}

		rs.close();
		pstmt.close();
		conn.close();
		out.println(sb.toString()); // ��� 

	} catch (Exception e) {
		e.printStackTrace();
	}
%>