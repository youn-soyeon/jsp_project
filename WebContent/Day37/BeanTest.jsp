<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="beantest" class="Day37.BeanTest" scope="page"/>
<%-- <jsp:setProperty name="beantest" property="name" value="BeanTest!"/> --%>
<%-- <jsp:setProperty name="beantest" property="name" param="name"/> --%>
<html>
<head>
<title>JavaBean Test</title>
</head>
<body>
<b>�ڹٺ� ��� ����</b>
<h3><%=beantest.getName() %></h3>
<%-- <h3><jsp:getProperty name="beantest" property="name"/></h3> --%>
</body>
</html>