<%@ page import="java.sql.*"%>
<%@ page import ="javax.sql.*" %>
<%
  //String db = request.getParameter("user");
  String user = "root"; // assumes database name is the same as username
  try {
    Connection con;
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/qwer_drmproject", user, "fear");
    out.println ("database successfully opened.");
   
    
  }
  catch(SQLException e) {
    out.println("SQLException caught: " +e.getMessage());
  }
%>