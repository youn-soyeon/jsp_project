<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<h2>1���� 100������ ����</h2>
<%
	int sum = 0;
	for (int i = 1; i <= 100; i++) {
		sum += i;
	}
	out.print(sum + "�Դϴ�.<h2>");
%>