<jsp:include page="header.jsp" />  
<style>
table {
    width:100%;
}
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 5px;
    text-align: left;
}
table#t01 tr:nth-child(even) {
    background-color: #eee;
}
table#t01 tr:nth-child(odd) {
   background-color:#fff;
}
table#t01 th	{
    background-color: black;
    color: white;
}
</style>
        <div class="form-group" style="text-align: center;font-size: larger;">

<%
Object name1 = session.getAttribute("name");
if(name1==null){
	out.println("Login");
}
else{
	String name = session.getAttribute("name").toString();
	String email = session.getAttribute("email").toString();
	Object mobile = session.getAttribute("mobile_number").toString();
	String deviceID = session.getAttribute("deviceID").toString();

	out.println("hi "+name);
	out.println("your device ID: "+deviceID);
}

%>
        </div>
        <div style="margin-left: 130px;">
        
<table id="t01">
  <tr>
    <th>File Name</th>
    <th>Click to download</th>		
  </tr>
            <%@page import="java.io.*"%>
            <%
            String deviceID="";
        	Object name12 = session.getAttribute("name");
        	if(name12==null){
//            	out.println("Login");
            }
            else{
            	String name = session.getAttribute("name").toString();
            	String email = session.getAttribute("email").toString();
            	Object mobile = session.getAttribute("mobile_number").toString();
            	deviceID = session.getAttribute("deviceID").toString();

  //          	out.println("hi "+name);
   //         	out.println("your device ID: "+deviceID);
            }

            try{
                File f = new File("D:\\DRM"); // directory
				if(f != null){
	        		File[] files = f.listFiles();
	        		for (File file : files) {
	        			if (file.isDirectory()) {
	        				continue;
//	        				out.print("directory:");
	        				
	        			} else {
	        				if(!file.getName().contains(".mp3"))
	        					continue;
	        				out.print(" <tr><td>  ");
	        			}
//	        			out.println(" "+file.getName());
	  			out.println(file.getName() +"</td><td>"+ "<a href=\"encrypt.jsp?filepath="+file.getAbsolutePath()+"&deviceID="+deviceID+"\">downolad</a></td></tr>");

	        		}
	        		
				}
				else{
					out.println(" f is null");
				}
            }
            catch(Exception e){
            	out.println("<br> exception :"+e);
            }
             %>
             </table>
            </div>
        <footer id="footer" class="footer-social" style="background-color: black;
  color: white;
  height: 25px;
  width: 100%;
  margin-bottom: 0px;
  float: top;
  position: absolute;
  text-align: center;
   position: absolute;
   bottom:0;
   width:100%;
   height:25px;   /* Height of the footer */">project developed by: Saiprasad Dhumal, VJTI Mumbai.</footer>
</body></html>