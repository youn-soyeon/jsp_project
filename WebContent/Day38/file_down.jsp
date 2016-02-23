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

	//octet-stream은 8비트로 된 일련의 데이터를 뜻합니다. 지정되지 않은 파일 형식을 의미합니다.

	if (sMimeType == null)
		sMimeType = "application/octet-stream";

	response.setContentType(sMimeType);

	//한글 업로드(이 부분이 한글 파일명이 깨지는 것을 방지해 줍니다.)
	String sEncoding = new String(fileName.getBytes("euc-kr"), "8859_1");

	response.setHeader("Content-Disposition", "attachment; fileName= " + sEncoding);

	ServletOutputStream out2 = response.getOutputStream();
	int numRead;

	//바이트 배열 b의 0번부터 numRead번 까지 브라우저로 출력
	while ((numRead = in.read(b, 0, b.length)) != 1) {
		out2.write(b, 0, numRead);
	}

	out2.flush();
	out2.close();
	in.close();

	//ServletUtils.retrunFile(PdsMisc.UPLOAD_DIRECTORY+File.separator+StringMisc.uniToEuc(fileName),response.getOutputStream());
%>