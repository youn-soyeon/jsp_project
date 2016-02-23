<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<html>
<head>
<title>Attribute Test</title>
</head>
<body>
	<h2>영역과 속성 테스트</h2>
	<%
		request.setCharacterEncoding("euc-kr");
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		if (name != null && id != null) {
			//name과 id속성을 setAttribute()이용하여 application객체에 넣었다
			//HashMap처럼 생각! setAttribute(key, value)
			application.setAttribute("name", name);
			application.setAttribute("id", id);
		}
	%>
	<h3><%=name%>님 반갑습니다. <br><%=name%>
		님의 아이디는
		<%=id%>입니다.
	</h3>
	<form action="attributeTest2.jsp" method="post">
		<table border="1">
			<tr>
				<td>e-mail 주소</td>
				<td><input type="text" name="email"></td>
			<tr>
				<td>집주소</td>
				<td><input type="text" name="address"></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="tel"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" name="전송"></td>
			</tr>
		</table>
	</form>
</body>
</html>