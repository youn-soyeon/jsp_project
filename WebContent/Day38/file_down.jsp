<%@page import="com.oreilly.servlet.ServletUtils"%>
<%@page import="java.io.*"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String fileName = request.getParameter("file_name");

	String savePath = "Day38/upload";
	ServletContext context = getServletContext();
	String sDownloadPath = context.getRealPath(savePath);
	String sFilePath = sDownloadPath + "\\" + fileName;

	byte b[] = new byte[4096];
	File oFile = new File(sFilePath);

	FileInputStream in = new FileInputStream(sFilePath);

	String sMimeType = getServletContext().getMimeType(sFilePath);
	System.out.println("sMimeType>>>" + sMimeType);

	//octet-stream�� 8��Ʈ�� �� �Ϸ��� �����͸� ���մϴ�. �������� ���� ���� ������ �ǹ��մϴ�.

	if (sMimeType == null)
		sMimeType = "application/octet-stream";

	response.setContentType(sMimeType);

	//�ѱ� ���ε�(�� �κ��� �ѱ� ���ϸ��� ������ ���� ������ �ݴϴ�.)
	String sEncoding = new String(fileName.getBytes("euc-kr"), "8859_1");

	response.setHeader("Content-Disposition", "attachment; fileName= " + sEncoding);

	ServletOutputStream out2 = response.getOutputStream();
	int numRead;

	//����Ʈ �迭 b�� 0������ numRead�� ���� �������� ���
	while ((numRead = in.read(b, 0, b.length)) != 1) {
		out2.write(b, 0, numRead);
	}

	out2.flush();
	out2.close();
	in.close();

	//ServletUtils.retrunFile(PdsMisc.UPLOAD_DIRECTORY+File.separator+StringMisc.uniToEuc(fileName),response.getOutputStream());
%>