<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

String sql = "INSERT INTO student1(num,name) values(12,'홍길동')";
String sql2 = "SELECT * FROM student1 WHERE num=11";

try{
	Context init = new InitialContext();
	DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/OracleDB");
	conn = ds.getConnection();
	
	//이 밑으로 트랜잭션 관리 - AutoCommit true해줄 때까지
	conn.setAutoCommit(false); // 커밋 인위적으로 하겠당!
	
	pstmt = conn.prepareStatement(sql);
	pstmt.executeUpdate();
	pstmt.close(); // 쿼리마다 해주는게 좋음 (안해도 굳이상관은..)
	
	pstmt = conn.prepareStatement(sql2);
	rs = pstmt.executeQuery();
	if(!rs.next()){
		conn.rollback();
		out.println("<h3>데이터 삽입에 문제가 발생하여 롤백하였습니다.</h3>");
	} else{
		conn.commit();
		out.println("<h3>데이터 삽입이 모두 완료되었습니다.</h3>");
	}
	
	pstmt.close();
	conn.setAutoCommit(true); // 원래대로 돌려줘야함
}catch (Exception e) {
	out.println("<h3>데이터 삽입에 실패하였습니다.</h3>");
}
%>