<!DOCTYPE HTML>
<html>
<head>
</head>
<body>
<%@ page import="java.sql.*"%>
<%@ page import ="javax.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>

<%
String username = request.getParameter("email_or_mobile");
String pwd = request.getParameter("password");
String user = "root";
try {
  Connection con;
  Class.forName("com.mysql.jdbc.Driver");
  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/qwer_drmproject", user, "fear");
  out.println ("database successfully opened."+con);
//  String sqlquery = "SELECT * FROM `customer_registration` where emailId='"+username+"' and password='"+pwd+"'";
PreparedStatement ps=con.prepareStatement("select * from customer_registration where emailId=? and password=?");
ps.setString(1,username);  
ps.setString(2, pwd); 

ResultSet rs=ps.executeQuery();  
rs.next();
//rs.getString(0);
	  out.println(rs.getString(1));
	  out.println(rs.getString(2));  

		session.setAttribute("name", rs.getString(2));
		session.setAttribute("email", rs.getString(3));
		session.setAttribute("mobile_number", rs.getString(4));
		session.setAttribute("deviceID", rs.getString(1));
		out.println("session started.");
		
		 String site = new String("/drmprojectjsp/display_download.jsp");
		   response.setStatus(response.SC_MOVED_TEMPORARILY);
		   response.setHeader("Location", site);	
}
catch(Exception e){
	out.println("exception in create session.jsp:- "+e);
}
%>
</body>
</html>