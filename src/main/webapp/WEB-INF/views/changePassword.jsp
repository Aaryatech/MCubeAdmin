<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <base href="/projects/mcube-financials/new/">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <meta name="description" content="CoreUI - Open Source Bootstrap Admin Template">
    <meta name="author" content="Łukasz Holeczek">
    <meta name="keyword" content="Bootstrap,Admin,Template,Open,Source,jQuery,CSS,HTML,RWD,Dashboard">
    <title>Mcube Financials</title>
<!--	  
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css" rel="stylesheet">-->
	   <link href="${pageContext.request.contextPath}/resources/assets/css/bootstrap_limitless.min.css" rel="stylesheet">
   
    <!-- Icons-->
    <link rel="icon" type="image/ico" href="./img/favicon.png" sizes="any" />
    <link href="https://cdn.jsdelivr.net/npm/@coreui/icons@0.4.1/css/free.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/flag-icon-css@3.4.0/css/flag-icon.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.css" rel="stylesheet">
    <!-- Main styles for this application-->
    <link href="${pageContext.request.contextPath}/resources/assets/css/style.css" rel="stylesheet">
	  <link href="${pageContext.request.contextPath}/resources/assets/css/custom.css" rel="stylesheet">
    
   <link href="${pageContext.request.contextPath}/resources/assets/css/pace.min.css" rel="stylesheet">


  
    <!-- By ats -->
   
   <script 	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <style>
  .card-group {
    box-shadow:none;
}
  </style>
  </head>
  <body >
	  <section class="login-background">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-md-10 ">
          <div class="card-group padding-tb">
           
            <div class="card text-white login-bg py-5 d-md-down-none " >
				
              <div class="card-body text-center padding-tp">
                <div>
                  <h2>WELCOME TO</h2>
					<hr class="login-hr">
                  <h2>
UNDERWRITING<br>
AUTOMATION</h2>
                 
                </div>
              </div>
					
            </div>
			   <div class="card p-4">
              <div class="card-body ">
				  <div class="title-head text-center">
				 <h2>CHANGE PASSWORD</h2>
					  </div>
              <!--  <h1>Login</h1>-->
               <!-- <p class="text-muted">Sign In to your account</p>-->
               <form action="${pageContext.request.contextPath}/toChangePassword"
									id="submitInsertClient" method="post">
               
               
                <div class="input-group mb-3">
                <div class="input-group mb-2">
                  <div class="input-group-prepend">
                    <span class="input-group-text">
                      <i class="icon-lock"></i>
                    </span>
                  </div>
                  <input class="form-control password" type="password" name="new_password"
                    id="new_password" placeholder="New Password">
                  </div>
                    <div class="input-group mb-1">
						<label class="control-label col-sm-2" for="page_name"></label>
							<div class="col-sm-3"><span id="strength" style="font-size: 10px;">
							(Password format: Must contain at least <b>one number(0-9)</b> and <b>
							one upper case(A-Z)</b> and <b> one lower case(a-z)</b> letter, and
							<b> one special character</b> and <b>at least 8 </b> and <b>maximum 14 </b>
							characters)</span> 
														</div>
													</div>
                    
                </div>
                <div class="input-group mb-4">
                  <div class="input-group-prepend">
                    <span class="input-group-text">
                      <i class="icon-lock"></i>
                    </span>
                  </div>
                  <input class="form-control password" type="password" name="confirm_password"
                  placeholder="Confirm Password" onblur="validatePassword()" id="confirm_password">
                </div>
                <div class="row">
                  <div class="col-6">
                    <button class="btn btn-red px-4" type="submit">Submit</button>
                  </div>
                 
                  <div class="col-6 text-right">
                    <a href="${pageContext.request.contextPath}/"><button class="btn btn-link px-0" type="button">Cancel</button></a>
                  </div>
                </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
		 </section>
	  
	    
    <footer class="app-footer-v2">
      <div>
       
        <span>&copy; 2019 Mcube Financials. All rights reserved.</span>
      </div>
    
    </footer>
    <!-- CoreUI and necessary plugins-->
   
     
    <!-- Plugins and scripts required by this view-->
  
				  
<script src=" https://code.jquery.com/jquery-3.3.1.js"></script>
 
 <script>		
		 function validatePassword() {
			 //alert("Hi");
				var pass = document.getElementById("new_password").value;
				var conpass = document.getElementById("confirm_password").value;
				// alert(pass+" "+conpass);

				if (pass != conpass) {

					document.getElementById("confirm_password").value = "";
					alert("Confirm password not matched!");
					return false;
				}
			}
		 
		 $('.password').hover(function () {
			   $('.password').attr('type', 'text'); 
			}, function () {
			   $('.password').attr('type', 'password'); 
			});
	</script>
 
  </body>
</html>