<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

String sql = "INSERT INTO student1(num,name) values(12,'ȫ�浿')";
String sql2 = "SELECT * FROM student1 WHERE num=11";

try{
	Context init = new InitialContext();
	DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/OracleDB");
	conn = ds.getConnection();
	
	//�� ������ Ʈ����� ���� - AutoCommit true���� ������
	conn.setAutoCommit(false); // Ŀ�� ���������� �ϰڴ�!
	
	pstmt = conn.prepareStatement(sql);
	pstmt.executeUpdate();
	pstmt.close(); // �������� ���ִ°� ���� (���ص� ���̻����..)
	
	pstmt = conn.prepareStatement(sql2);
	rs = pstmt.executeQuery();
	if(!rs.next()){
		conn.rollback();
		out.println("<h3>������ ���Կ� ������ �߻��Ͽ� �ѹ��Ͽ����ϴ�.</h3>");
	} else{
		conn.commit();
		out.println("<h3>������ ������ ��� �Ϸ�Ǿ����ϴ�.</h3>");
	}
	
	pstmt.close();
	conn.setAutoCommit(true); // ������� ���������
}catch (Exception e) {
	out.println("<h3>������ ���Կ� �����Ͽ����ϴ�.</h3>");
}
%>