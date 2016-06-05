<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>encrypt.jsp</title>
</head>
<body>
<%@page import="java.io.*"%>
<%
String filepath = request.getParameter("filepath");
String id = request.getParameter("deviceID");
out.println("we received: "+filepath+" : "+id);
File F = new File(filepath);
int temp,i, index=0;
byte temp2=0;
byte []Earray=new byte[9999999];
int filesize;
System.out.println("encryption called");
try{
	FileInputStream fin=new FileInputStream(F);
	byte []idarr=new byte[50];
	idarr = id.getBytes();
	for(index=0;index<idarr.length;index++){
			Earray[index]=idarr[index];
	}
	Earray[index++] = (byte)94;
	for(filesize=index;true;filesize++){
		temp=fin.read();
		if(temp==-1){
			break;
		}
		Earray[filesize]=(byte)temp;
		if(Earray[filesize]<0)
			Earray[filesize]+=256;
}

	System.out.println("Size of the file before encryption ::" + filesize);
	int half = (filesize/2);
	filesize--;
	for(i=0;i<half;i++)
	{
		temp2=Earray[filesize-i];
		Earray[filesize-i]=Earray[i];
		Earray[i]=temp2;
	}
	System.out.println("File encrypted.");
	
	F=new File("D:\\DRM\\encrypted.mp3");
	FileOutputStream fout=new FileOutputStream(F);
	System.out.println("\nsize of the file" + filesize);
	for(i=0;i<=filesize;i++){
		fout.write((int)Earray[i]);
	}
	System.out.println("File has writtern to the disk.");
	fout.close();
	out.println("<br>Encrypted File has written to the disk");
}
catch(Exception e){
	out.println(" Exception in encrypt.jsp:- "+e);	
}
String site = new String("/drmprojectjsp/download.jsp?filename=D:\\DRM\\encrypted.mp3");
response.setStatus(response.SC_MOVED_TEMPORARILY);
response.setHeader("Location", site);	
%>
</body>
</html>