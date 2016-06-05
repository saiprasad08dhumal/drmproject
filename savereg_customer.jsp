<html>
<head>
<title>save registration</title>
</head>

<body>
<%@ page import="java.sql.*"%>
<%@ page import ="javax.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>

<%

  //String db = request.getParameter("user");
  String user = "root";
  try {
    Connection con;
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/qwer_drmproject", user, "fear");
    out.println ("database successfully opened."+con);
   
    
    

        String names = request.getParameter("name");
        String eaddress = request.getParameter("email");
        String mobile = request.getParameter("mobile_number");
        String deviceID = request.getParameter("deviceID");
        String pw = request.getParameter("password");
        

        String queryText = "insert into customer_registration values('"+deviceID+"','"+names+"','"+eaddress+"','"+mobile+"','"+pw+"')";
        out.println("query string: "+queryText);
        Statement stat = con.createStatement();
         stat.executeUpdate(queryText);

    out.println("data inserted");
	session.setAttribute("name", names);
	session.setAttribute("email", eaddress);
	session.setAttribute("mobile_number", mobile);
	session.setAttribute("deviceID", deviceID);
	out.println("session started.");
    stat.close();
	 String site = new String("/drmprojectjsp/");
	   response.setStatus(response.SC_MOVED_TEMPORARILY);
	   response.setHeader("Location", site);	
}
catch(Exception e){
	}
%>

        
</body>
</html>