<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<base href="/projects/mcube-financials/new/">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<meta name="description"
	content="CoreUI - Open Source Bootstrap Admin Template">
<meta name="author" content="Łukasz Holeczek">
<meta name="keyword"
	content="Bootstrap,Admin,Template,Open,Source,jQuery,CSS,HTML,RWD,Dashboard">
<title>MCube Underwriting Automation System</title>
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/assets/images/logoTop.jpg"
	type="image/x-icon" />
<!--	  
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css" rel="stylesheet">-->
<link
	href="${pageContext.request.contextPath}/resources/assets/css/bootstrap_limitless.min.css"
	rel="stylesheet">

<!-- Icons-->
<link rel="icon" type="image/ico" href="./img/favicon.png" sizes="any" />
<link
	href="https://cdn.jsdelivr.net/npm/@coreui/icons@0.4.1/css/free.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/flag-icon-css@3.4.0/css/flag-icon.min.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.css"
	rel="stylesheet">
<!-- Main styles for this application-->
<link
	href="${pageContext.request.contextPath}/resources/assets/css/style.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/assets/css/custom.css"
	rel="stylesheet">

<link
	href="${pageContext.request.contextPath}/resources/assets/css/pace.min.css"
	rel="stylesheet">



<!-- By ats -->
<%-- <jsp:include page="/WEB-INF/views/include/metacssjs.jsp"></jsp:include> --%>

<style>
.card-group {
	box-shadow: none;
}
</style>

</head>

<body>
	<section class="login-background">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-10 ">
					<div class="card-group padding-tb">

						<div class="card text-white login-bg py-5 d-md-down-none ">

							<div class="card-body text-center padding-tp">
								<div>
									<h2>WELCOME TO</h2>
									<hr class="login-hr">
									<h2>
										UNDERWRITING<br> AUTOMATION
									</h2>

								</div>
							</div>

						</div>
						<div class="card p-4">
							<div class="card-body ">
								<%--  <c:if test="${sessionScope.msg!=null}">
								<div
									class="alert bg-success text-white alert-styled-left alert-dismissible">
									<button type="button" class="close" data-dismiss="alert">
										<span>×</span>
									</button>
									<span class="font-weight-semibold">Well done!</span><strong>${msg}</strong>									
								</div>
								<%
									session=request.getSession();
									session.removeAttribute("msg");									
								%> 
								</c:if> --%>
								<div class="logo text-center">
									<img
										src="${pageContext.request.contextPath}/resources/assets/images/logo.jpg"
										alt="logo" width="70%" class="text-center">
								</div>
								<!--  <h1>Login</h1>-->
								<!-- <p class="text-muted">Sign In to your account</p>-->
								<form action="${pageContext.request.contextPath}/loginProcess"
									id="submitInsertClient" method="post">


									<div class="input-group mb-3">
										<div class="input-group-prepend">
											<span class="input-group-text"> <i class="icon-user"></i>
											</span>
										</div>
										<input class="form-control" type="text" placeholder="Username"
											id="uname" autocomplete="off">

									</div>

									<div class="input-group mb-3">
										<span class="validation-invalid-label" id="error_uname"
											style="display: none; color: red;">This field is
											required.</span>
									</div>
									<div class="input-group mb-4">
										<div class="input-group-prepend">
											<span class="input-group-text"> <i class="icon-lock"></i>
											</span>
										</div>
										<input class="form-control" type="password"
											placeholder="Password" id="pass">&nbsp;&nbsp;

									</div>
									<div class="input-group mb-3">
										<span class="validation-invalid-label" id="error_pass"
											style="display: none; color: red;">This field is
											required.</span>
									</div>
									<div class="row">
										<div class="col-6">
											<button class="btn btn-red px-4" id="submtbtn" type="submit">Login</button>
										</div>


										<div class="col-6 text-right">
											<a href="${pageContext.request.contextPath}/showForgotPass"><button
													class="btn btn-link px-0" type="button">Forgot
													password?</button></a>
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

	<script src=" https://code.jquery.com/jquery-3.3.1.js"></script>
	<script type="text/javascript">
		$(document).ready(function($) {

			$("#submitInsertClient").submit(function(e) {
				var isError = false;
				var errMsg = "";

				if (!$("#uname").val()) {

					isError = true;

					$("#error_uname").show()
					//return false;
				} else {
					$("#error_uname").hide()
				}
				if (!$("#pass").val()) {

					isError = true;

					$("#error_pass").show()
					//return false;
				} else {
					$("#error_pass").hide()
				}

				if (!isError) {

					var x = true;
					if (x == true) {

						document.getElementById("submtbtn").disabled = true;
						return true;
					}
					//end ajax send this to php page
				}
				return false;
			});
		});
	</script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</body>
</html>