<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<html>
<head>
<title>ȸ������ �ý��� �α��� ������</title>
</head>
<body>
	<%-- form�� name �Ӽ��� href���� ������ ��� --%>
	<form name="loginform" action="loginProcess.jsp" method="post">
		<center>
			<table border=1>
				<tr>
					<td colspan="2" align=center><b><font size=5>�α���
								������</font></b></td>
				</tr>
				<tr>
					<td>���̵� :</td>
					<td><input type="text" name="id" /></td>
				</tr>
				<tr>
					<td>��й�ȣ :</td>
					<td><input type="password" name="pass" /></td>
				</tr>
				<tr>
					<td colspan="2" align=center><a
						href="javascript:loginform.submit()">�α���</a>&nbsp;&nbsp; <a
						href="joinForm.jsp">ȸ������</a></td>
				</tr>
			</table>
		</center>
	</form>
</body>
</html>