<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>

<html>
<head>
<title>JSTL xml ���̺귯�� ��� ����</title>
</head>
<body>

	<x:parse var="xmldata">
		<students> 
		
		<student> 
		<name>ȫ�浿</name> 
		<age>18</age>
		<gender>��</gender> 
		<phone>011-3456-11xx</phone> 
		</student> 
		
		<student> 
		<name>��浿</name>
		<age>19</age> 
		<gender>��</gender> 
		<phone>010-4567-00xx</phone> 
		</student> 
		
		<student>
		<name>ȫ���</name> 
		<age>18</age> 
		<gender>��</gender> 
		<phone>����</phone> 
		</student> 
		
		<student>
		<name>����</name> 
		<age>18</age> 
		<gender>��</gender> 
		<phone>����</phone> 
		</student> 
		
		</students>
	</x:parse>

	<x:forEach select="$xmldata//student">
		<x:if select="./name!='ȫ���'">
			<x:out select="./name" />
			<x:set select="./age" var="age" />
			<x:out select="$age" />
			<x:out select="./gender" />

			<x:choose>
				<x:when select="./phone!='����'">
[��ȭ��ȣ : <x:out select="./phone" />]
</x:when>
				<x:otherwise>[��ȭ ����]</x:otherwise>
			</x:choose>
			<br>
		</x:if>
	</x:forEach>
</body>
</html>