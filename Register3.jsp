       <jsp:include page="header.jsp" />
<h2 align="center">Create an account</h2>
<hr>
    

<form action="savereg_customer.jsp" method="post" class="form-horizontal" role="form" novalidate>


	<div class="form-group">
	<center>
	<h3>Step1: download our music player, which will fetch your device id</h3>
        <a class="btn-danger btn-lg" href="download.jsp?filename=D:\\DRM\\clientui.jar"> start download</a>
	</center>
	</div>

        <div class="form-group">
                        <label class="col-sm-3 control-label required" for="customer_registration_firstName">Copy paste your device ID:-> </label>
        <div class="col-sm-6">
                <input type="text" id="customer_registration_firstName" name="deviceID" required class="form-control">
                
        </div>
    </div>
    
    
    <div class="form-group">
                        <label class="col-sm-3 control-label required" for="customer_registration_firstName">Full Name </label>
        <div class="col-sm-6">
                <input type="text" id="customer_registration_firstName" name="name" required class="form-control">
                
        </div>
    </div>

    <div class="form-group">
                        <label class="col-sm-3 control-label required" for="customer_registration_lastName">Email ID</label>
        <div class="col-sm-6">
                <input type="text" id="customer_registration_lastName" name="email" required class="form-control">
                
        </div>
    </div>

    <div class="form-group">
                        <label class="col-sm-3 control-label required" for="customer_registration_mobileNumber">Mobile</label>
        <div class="col-sm-6">
            <div class="row">
                <div class="col-xs-3">
                                            <input type="text" id="customer_registration_mobileCountryCode" name="country_code" required value="91" disabled="disabled" class="form-control">
                </div>
                <div class="col-sm-9">
                        <input type="text" id="customer_registration_mobileNumber" name="mobile_number" required class="form-control">
                </div>
            </div>
                
                
        </div>
    </div>

   

    <div class="form-group">
                        <label class="col-sm-3 control-label text-left required" for="customer_registration_password_first">Password</label>
        <div class="col-sm-6">
                    <input type="password" id="customer_registration_password_first" name="password" required class="form-control">
                
        </div>
    </div>

    <div class="form-group">
                        <label class="col-sm-3 control-label text-left required" for="customer_registration_password_second">Repeat password</label>
        <div class="col-sm-6">
                    <input type="password" id="customer_registration_password_second" name="password_seacond" required class="form-control">
                
        </div>
    </div>

    
    <div class="form-group">
        <div class="col-sm-offset-3 col-sm-6">
            <button type="submit" id="customer_registration_registration" name="customer_registration[registration]" class="btn btn-primary btn-lg btn-block">Register</button>
        </div>
    </div>
</form>	
        <div style="margin: 100px;"></div>
   
	        <footer id="footer" class="footer-social" style="background-color: black;
  color: white;
  height: 25px;
  width: 100%;
  margin-bottom: 0px;
  float: bottom;
  position: relative;
  text-align: center;
   position:relative;
   bottom:0;
   width:100%;
   height:25px;   /* Height of the footer */">project developed by: Saiprasad Dhumal, VJTI Mumbai.</footer>
</body></html>