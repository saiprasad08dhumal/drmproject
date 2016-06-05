<jsp:include page="header.jsp" />          
        
        <%
        String action = request.getParameter("action");
        out.println(" action "+action);
        if(action!=null && action.equals("logout")){
        	out.println("successfully logged out!!!");
        	session.invalidate();
        	out.println("successfully logged out!!!");
        	 String site = new String("/drmprojectjsp/");
  		   response.setStatus(response.SC_MOVED_TEMPORARILY);
  		   response.setHeader("Location", site);	
        }
        else{
        	out.println(" Login and start your session:-");
        }
        %>
<div class="row">
            <div class="login">
                
<h2 align="justify" class="col-xs-offset-4">Login</h2>
<hr />
<form action="create_session.jsp" method="post" class="form-horizontal" role="form" novalidate role="form">
       
    <div class="form-group">
                        <label class="col-sm-3 control-label required" for="customer_login_email">Email / mobile number:</label>
        <div class="col-sm-4">    <input type="email"     id="customer_login_email" name="email_or_mobile" required class="form-control" /></div>
    </div>

    <div class="form-group">
                        <label class="col-sm-3 control-label required" for="customer_login_password">Password</label>
        <div class="col-sm-4">
                    <input type="password"     id="customer_login_password" name="password" required class="form-control" />
            <a href="/forgot-your-password">
                Forgot your password?
            </a>
        </div>
    </div>

    <div class="form-group">
                        <label class="col-sm-3 control-label required" for="customer_login_rememberCustomerLogin">Remember me</label>
        <div class="col-sm-9">
            <input type="checkbox"     id="customer_login_rememberCustomerLogin" name="customer_login[rememberCustomerLogin]" required checked="checked" value="1" />
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-offset-4 col-sm-2">
            <button type="submit" id="customer_login_login" name="customer_login[login]" class="btn btn-primary btn-lg btn-block" >Login</button>
        </div>
    </div>
</form>
            </div>
          
        </div>
    
        </div>

    
    
            <footer id="footer" class="footer-social" style="background-color: black;
  color: white;
  height: 25px;
  width: 100%;
  margin-bottom: 0px;
  float: top;
  position: absolute;
  text-align: center;
   position:absolute;
   bottom:0;
   width:100%;
   height:25px;   /* Height of the footer */">project developed by: Saiprasad Dhumal, VJTI Mumbai.</footer>
</body></html>