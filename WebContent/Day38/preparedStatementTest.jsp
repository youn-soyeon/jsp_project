<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	Connection conn = null; // 초기화
	// ? : 바인딩 파라미터, num컬럼값
	String sql = "INSERT INTO student1(num, name) VALUES(?,'홍길동')";

	try {
	Context init=new InitialContext();
	DataSource ds=(DataSource)init.lookup("java:comp/env/jdbc/OracleDB");
	conn = ds.getConnection();
	//executeUpdate(String sql) : 삽입, 수정, 삭제와 관련된 SQL문 실행에 사용한다. 적용된 행 수를 반환
	PreparedStatement stmt=conn.prepareStatement(sql);
	
	for(int i=7; i<=10; i++){
		stmt.setInt(1,i);// 첫번째 인덱스에 특정값(i)를 set해준다
		if(stmt.executeUpdate()!=0){
			out.println("<h3>"+i+"번 레코드를 등록하였습니다.</h3>");
		}
	}
	} catch (Exception e) {
		out.println("<h3>레코드 등록에 실패하였습니다.</h3>");
		e.printStackTrace();
	}
%>