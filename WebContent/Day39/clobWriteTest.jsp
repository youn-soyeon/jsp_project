<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	// 외우기
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	StringBuffer sb = null;

	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:ORCL";

	// sql문을 미리 string객체로 만들어놓고 해야함!
	String sql = "INSERT INTO clobtable(num, content) VALUES (1,empty_clob())";
	String sql2 = "SELECT content FROM clobtable WHERE num=1 FOR UPDATE";

	try {
		Class.forName(driver);
		conn = DriverManager.getConnection(url, "scott", "tiger");

		// Commit : DML수행하고나서 확인후 저장한다
		// commit 실행해야만 됨 (자동commit안한다)
		conn.setAutoCommit(false);

		sb = new StringBuffer();
		for (int i = 0; i <= 10000; i++) {
			sb.append("홍길동");
		}

		//쿼리준비
		pstmt = conn.prepareStatement(sql); // sql문 들어감
		pstmt.executeUpdate(); // Insert문이므로 update해주어야함
		pstmt.close();

		pstmt = conn.prepareStatement(sql2);
		rs = pstmt.executeQuery(); // select문
		if (rs.next()) {
			// getClob() : clob타입의 칼럼을 가져오는메서드
			// rs타입의 객체를 clob타입으로 Casting해준다
			oracle.sql.CLOB clob = (oracle.sql.CLOB) (rs).getClob("content");
			BufferedWriter bw = new BufferedWriter(clob.getCharacterOutputStream());
			bw.write(sb.toString());
			bw.close();
		}
		pstmt.close();

		conn.commit();
		conn.setAutoCommit(true);
		out.println("데이터를 저장했습니다.");

		rs.close();
		pstmt.close();
		conn.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
%>