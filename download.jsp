<!DOCTYPE unspecified PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>
downloading...
</title>
</head>
<body>
<%@page import="java.io.*"%>
<%
	

/* 	String name = session.getAttribute("name").toString();
	String email = session.getAttribute("email").toString();
	Object mobile = session.getAttribute("mobile_number").toString();
	String deviceID = session.getAttribute("deviceID").toString();
 
	out.println("hi "+name);
	out.println("your device ID: "+deviceID);
*/		
String filename = "a.mp3";
filename = request.getParameter("filename"); // accept complete filepath
//String filepath;// = "C:\\Users\\sai\\workspace\\drmprojectjsp\\WebContent\\uploads\\";
//filepath = "D:\\DRM\\";

response.setContentType("application/octet-stream");
String disHeader = "Attachment; Filename="+filename;
response.setHeader("Content-Disposition", disHeader);
File fileToDownload = new File(filename);

InputStream in = null;
ServletOutputStream outs = response.getOutputStream();

try {
in = new BufferedInputStream
(new FileInputStream(fileToDownload));
int ch;
while ((ch = in.read()) != -1) {
outs.print((char) ch);
}
}
finally {
if (in != null) in.close(); // very important
}

outs.flush();
outs.close();
in.close();


%>
</body>
</html>