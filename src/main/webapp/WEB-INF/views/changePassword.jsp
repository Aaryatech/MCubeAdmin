<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><%@ taglib
	uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
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

.card-body {
    -ms-flex: 1 1 auto;
    flex: 1 1 auto;
    padding: 0px !important;
}
h2{
margin-bottom: 23px !important;
}
.password_hint {
  padding-top:10px;
  position: relative;
  display: inline-block;
}
.password_hint .rules {
  visibility: hidden;
  width: 438px;
  background-color: black;
  color: #fff;
  text-align: left;
  border-radius: 6px;
  padding: 5px 0 0 15px;

  /* Position the tooltip */
  position: absolute;
  z-index: 1;
}

.password_hint:hover .rules {
  visibility: visible;
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
				  <div class="text-center">
				 <h2 style="color: #ac1d24;">Change Password</h2>
					  </div>
              <!--  <h1>Login</h1>-->
               <!-- <p class="text-muted">Sign In to your account</p>-->
               <form action="${pageContext.request.contextPath}/changePasswordProcess"
									id="submitInsertClient" method="post">
               
               
                <div class="input-group mb-4">
                  <div class="input-group-prepend">
                    <span class="input-group-text">
                      <i class="icon-lock"></i>
                    </span>
                  </div>
                  <input class="form-control password" type="password" name="new_password" onchange="passwordChanged()" maxlength="8" value="@Qwerty1"
                    id="new_password" placeholder="New Password" pattern="(?=^.{8}$)(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&amp;*()_+}{&quot;:;'?/&gt;.&lt;,])(?!.*\s).*$">
                    
                </div>
                <div class="input-group mb-4">
                  <div class="input-group-prepend">
                    <span class="input-group-text">
                      <i class="icon-lock"></i>
                    </span>
                  </div>
                  <input class="form-control password" type="password" name="confirm_password" maxlength="8"
                  placeholder="Confirm Password" onblur="validatePassword()" id="confirm_password" value="@Qwerty1">
                </div>
	                <div class="row">
	                  <div class="col-3">
	                    <button class="btn btn-red px-4" type="submit">Submit</button>
	                  </div>
	                  
	                  <div class="col-1 text-right">
	                    <a href="${pageContext.request.contextPath}/"><button class="btn btn-red px-4" type="button">Cancel</button></a>
	                  </div> 
	                  
	                  	<div class="col-10 rule password_hint"><h6>Password Rules</h6>
			                 <span class="rules">Standard Password Rules
								  <ul>
									    <li>8 Characters Necessary</li>
										<li>Min 1 Capital Letter(A-Z)</li>
										<li>Min 1 Small Letter(a-z)</li>
										<li>Min 1 Number(0-9)</li>
										<li>Min 1 Special Character</li>
								</ul>
							</span>
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
	
	<script>

		function passwordChanged() {
			var strength = document.getElementById("strength");
			$("#error_password").hide();
			var strongRegex = new RegExp(
					"^(?=.{8})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])([$&+,:;=?@#|'<>.^*()%!-](?=.*\\W).*$",
					"g");
			var mediumRegex = new RegExp(
					"^(?=.{6})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$",
					"g");
			var enoughRegex = new RegExp("(?=.{6,}).*", "g");
			var pwd = document.getElementById("new_password").value;

			if (pwd.length == 0) {
				document.getElementById("strength").innerHTML = "Type Password";
				document.getElementById("allowPass").value = 0;
			} else if (false == enoughRegex.test(pwd)) {
				document.getElementById("strength").innerHTML = "More Characters";
				document.getElementById("allowPass").value = 0;
			} else if (strongRegex.test(pwd)) {
				document.getElementById("strength").innerHTML = "<span style='color:green'>Strong!</span>";
				document.getElementById("allowPass").value = 1;
			} else if (mediumRegex.test(pwd)) {
				document.getElementById("strength").innerHTML = "<span style='color:orange'>Medium!</span>";
				document.getElementById("allowPass").value = 1;
			} else {
				document.getElementById("strength").innerHTML = "<span style='color:red'>Weak!</span>";
				document.getElementById("allowPass").value = 0;
			}
		}
	</script>
 
  </body>
</html>