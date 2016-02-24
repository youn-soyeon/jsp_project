<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	// �ܿ��
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	StringBuffer sb = null;

	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:ORCL";

	// sql���� �̸� string��ü�� �������� �ؾ���!
	String sql = "INSERT INTO clobtable(num, content) VALUES (1,empty_clob())";
	String sql2 = "SELECT content FROM clobtable WHERE num=1 FOR UPDATE";

	try {
		Class.forName(driver);
		conn = DriverManager.getConnection(url, "scott", "tiger");

		// Commit : DML�����ϰ��� Ȯ���� �����Ѵ�
		// commit �����ؾ߸� �� (�ڵ�commit���Ѵ�)
		conn.setAutoCommit(false);

		sb = new StringBuffer();
		for (int i = 0; i <= 10000; i++) {
			sb.append("ȫ�浿");
		}

		//�����غ�
		pstmt = conn.prepareStatement(sql); // sql�� ��
		pstmt.executeUpdate(); // Insert���̹Ƿ� update���־����
		pstmt.close();

		pstmt = conn.prepareStatement(sql2);
		rs = pstmt.executeQuery(); // select��
		if (rs.next()) {
			// getClob() : clobŸ���� Į���� �������¸޼���
			// rsŸ���� ��ü�� clobŸ������ Casting���ش�
			oracle.sql.CLOB clob = (oracle.sql.CLOB) (rs).getClob("content");
			BufferedWriter bw = new BufferedWriter(clob.getCharacterOutputStream());
			bw.write(sb.toString());
			bw.close();
		}
		pstmt.close();

		conn.commit();
		conn.setAutoCommit(true);
		out.println("�����͸� �����߽��ϴ�.");

		rs.close();
		pstmt.close();
		conn.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
%>