<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	Connection conn = null; // �ʱ�ȭ
	// ? : ���ε� �Ķ����, num�÷���
	String sql = "INSERT INTO student1(num, name) VALUES(?,'ȫ�浿')";

	try {
	Context init=new InitialContext();
	DataSource ds=(DataSource)init.lookup("java:comp/env/jdbc/OracleDB");
	conn = ds.getConnection();
	//executeUpdate(String sql) : ����, ����, ������ ���õ� SQL�� ���࿡ ����Ѵ�. ����� �� ���� ��ȯ
	PreparedStatement stmt=conn.prepareStatement(sql);
	
	for(int i=7; i<=10; i++){
		stmt.setInt(1,i);// ù��° �ε����� Ư����(i)�� set���ش�
		if(stmt.executeUpdate()!=0){
			out.println("<h3>"+i+"�� ���ڵ带 ����Ͽ����ϴ�.</h3>");
		}
	}
	} catch (Exception e) {
		out.println("<h3>���ڵ� ��Ͽ� �����Ͽ����ϴ�.</h3>");
		e.printStackTrace();
	}
%>