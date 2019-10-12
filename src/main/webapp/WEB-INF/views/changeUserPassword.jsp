<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>

<jsp:include page="/WEB-INF/views/include/metacssjs.jsp"></jsp:include>

<style type="text/css">
.password_hint {
  padding-top:10px;
  position: relative;
  display: inline-block;
  color: red;
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

<body>

	<!-- Main navbar -->
	<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
	<!-- /main navbar -->


	<!-- Page content -->
	<div class="page-content">

		<!-- Main sidebar -->
		<jsp:include page="/WEB-INF/views/include/left.jsp"></jsp:include>
		<!-- /main sidebar -->


		<!-- Main content -->
		<div class="content-wrapper">

			<!-- Page header -->
			<%-- <div class="page-header page-header-light">


				<div
					class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
					<div class="d-flex">
						<div class="breadcrumb">
							<a href="#" class="breadcrumb-item"><i
								class="icon-home2 mr-2"></i> Home</a> <span
								class="breadcrumb-item active">Dashboard</span>
						</div>

						<a href="#" class="header-elements-toggle text-default d-md-none"><i
							class="icon-more"></i></a>
					</div>

					<div class="breadcrumb justify-content-center">
						<a href="${pageContext.request.contextPath}/userList"
							class="breadcrumb-elements-item">User List</a>

					</div>


				</div>
			</div> --%>
			<!-- /page header -->


			<!-- Content area -->
			<div class="content">

				<!-- Form validation -->
				<div class="row">
					<div class="col-md-12">
						<!-- Title -->
						<!-- <div class="mb-3">
							<h6 class="mb-0 font-weight-semibold">Hidden labels</h6>
							<span class="text-muted d-block">Inputs with empty values</span>
						</div> -->
						<!-- /title -->


						<div class="card"> 
							<div class="card-header header-elements-inline">
								<h2 class="card-title"><i class="icon-pencil3"
											style="color: black; font-size:25px"></i>&nbsp;&nbsp;Change Password</h2>
								<!-- <div class="header-elements">
									<div class="list-icons">
										<a class="list-icons-item" data-action="collapse"></a>
									</div>
								</div> -->
							</div>

							<div class="card-body">

								<%-- <%
									if (session.getAttribute("errorMsg") != null) {
								%>
								<div
									class="alert bg-danger text-white alert-styled-left alert-dismissible">
									<button type="button" class="close" data-dismiss="alert">
										<span>×</span>
									</button>
									<span class="font-weight-semibold">Oh snap!</span>
									<%
										out.println(session.getAttribute("errorMsg"));
									%>
								</div>

								<%
									session.removeAttribute("errorMsg");
									}
								%>
								<%
									if (session.getAttribute("msg") != null) {
								%>
								<div
									class="alert bg-success text-white alert-styled-left alert-dismissible">
									<button type="button" class="close" data-dismiss="alert">
										<span>×</span>
									</button>
									<span class="font-weight-semibold">Well done!</span>
									<%
										out.println(session.getAttribute("msg"));
									%>
								</div>
								<%
									session=request.getSession();
									session.removeAttribute("msg");
									}
								%> --%>
								
								<c:if test="${sessionScope.msg!=null}">
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
								</c:if>

								<form
									action="${pageContext.request.contextPath}/updateUserNewPassword"
									id="changePasswordForm" method="post">

									<div class="form-group row">
										<label class="col-form-label col-lg-2" for="old_password">
											Old Password<span style="color: red">* </span>:
										</label>
										<div class="col-lg-4">
											<input type="password" class="form-control password"  value="#Sts@123e"
												placeholder="Old Password" id="old_password" name="old_password"
												autocomplete="off" onchange="trim(this)">
											<span class="validation-invalid-label" id="error_old_password"
												style="display: none;">Please enter old password.</span>
										</div>
									</div>


									<div class="form-group row">
										<label class="col-form-label col-lg-2" for="new_password">New
											Password <span style="color: red">* </span>:
										</label>
										<div class="col-lg-4">
											<input type="password" class="form-control password" value="@Qwerty!2"
												placeholder="New Password" id="new_password" name="new_password"
												autocomplete="off" onchange="passwordChanged()" maxlength="14"
												pattern="(?=^.{8,14}$)(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&amp;*()_+}{&quot;:;'?/&gt;.&lt;,])(?!.*\s).*$">
											<span class="validation-invalid-label" id="error_new_password"
												style="display: none;">Please enter new password.</span> 
										</div>
										
										<div class="col-lg-3">
											<div class="col-6 rule password_hint"><h6>Password Rules</h6>
								                 <span class="rules">Standard password Rules
													  <ul>
														  <li>14 Character Password</li>
														   <li>Min 8 and Max 14 characters necessary</li>
															<li>Min 1 Capital Letter(A-Z)</li>
															<li>Min 1 Small Letter(a-z)</li>
															<li>Min 1 Number(0-9)</li>
															<li>Min 1 Special Character</li>
													</ul>
												</span>
            							    </div>
										</div>
										
									</div>


									<div class="form-group row">
										<label class="col-form-label col-lg-2" for="confirm_password">Confirm 
											Password<span style="color: red">* </span>:
										</label>
										<div class="col-lg-4">
											<input type="password" class="form-control password" placeholder="Confirm Password" value="@Qwerty!2"
											 id="confirm_password" name="confirm_password" autocomplete="off"  maxlength="14" onblur="validatePassword()">
											<span class="validation-invalid-label" id="error_confirm_password"
												style="display: none;">Please enter confirm password.</span> 
										</div>										
									</div>

									<div class="form-group row mb-0">
										<div class="col-lg-10 ml-lg-auto">
											<!-- <button type="reset" class="btn btn-light legitRipple">Reset</button> -->
											<button type="submit" class="btn btn-primary"
												id="submtbtn">
												Submit <i class="icon-paperplane ml-2"></i>
											</button>
											<a href="${pageContext.request.contextPath}/userList"><button
													type="button" class="btn btn-primary">
													<i class="${sessionScope.cancelIcon}" aria-hidden="true"></i>&nbsp;&nbsp;
													Cancel
												</button></a> 
												<!-- <input type="hidden" id="mobile1Exist" name="mobile1Exist"><input
												type="hidden" id="emailExist" name="emailExist"> -->
										</div>
									</div>
								</form>
									
							</div>
						</div>


					</div>
				</div>

			</div>
			<!-- /content area -->


			<!-- Footer -->
			<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
			<!-- /footer -->

		</div>
		<!-- /main content -->

	</div>
	<!-- /page content -->

	<script>
	$(document).ready(function($) {

		$("#changePasswordForm").submit(function(e) {
			var isError = false;
			var errMsg = "";

			if (!$("#old_password").val() || $("#old_password").val()=="") {

				isError = true;

				$("#error_old_password").show()

			} else {
				$("#error_old_password").hide()
			}
			
			if (!$("#new_password").val() || $("#new_password").val()=="") {

				isError = true;

				$("#error_new_password").show()

			} else {
				$("#error_new_password").hide()
			}
			

			if (!$("#confirm_password").val() || $("#confirm_password").val()=="") {

				isError = true;

				$("#error_confirm_password").show()

			} else {
				$("#error_confirm_password").hide()
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
	//
	
	
		function trim(el) {
			el.value = el.value.replace(/(^\s*)|(\s*$)/gi, ""). // removes leading and trailing spaces
			replace(/[ ]{2,}/gi, " "). // replaces multiple spaces with one space 
			replace(/\n +/, "\n"); // Removes spaces after newlines
			return;
		}

		function validateEmail(email) {

			var eml = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

			if (eml.test($.trim(email)) == false) {

				return false;

			}

			return true;

		}
		
		//
		
			

		function passwordChanged() {
			var strength = document.getElementById("strength");
			$("#error_password").hide();
			var strongRegex = new RegExp(
					"^(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])([$&+,:;=?@#|'<>.^*()%!-](?=.*\\W).*$",
					"g");
			var mediumRegex = new RegExp(
					"^(?=.{6,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$",
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
	
	<script type="text/javascript">
		// Single picker
		$('.datepickerclass').daterangepicker({
			singleDatePicker : true,
			selectMonths : true,
			selectYears : true,
			locale : {
				format : 'DD-MM-YYYY'
			}
		});

		//daterange-basic_new
		// Basic initialization
		$('.daterange-basic_new').daterangepicker({
			applyClass : 'bg-slate-600',

			cancelClass : 'btn-light',
			locale : {
				format : 'DD-MM-YYYY',
				separator : ' to '
			}
		});
	</script>


	<script type="text/javascript">
		function readURL(input) {
			/* 
			if (input.files && input.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					$('#image1').attr('src', e.target.result);
				}

				reader.readAsDataURL(input.files[0]);
			} */
		}

		$("#profilePic").change(function() {

			//readURL(this);
		});

		$(function() {

			//image 1
			// Create the close button

			// Clear event
			$('.image-preview-clear').click(function() {
				var imgid = $(this).attr('id');

				$('.browseimage' + imgid).val("");
				$('.image-preview-clear' + imgid).hide();

				//$('.image-preview-input-title'+imgid).text("Browse"); 
				$('.temppreviewimageki' + imgid).attr("src", '');
				$('.temppreviewimageki' + imgid).hide();
			});
			// Create the preview image
			$(".browseimage").change(
					function() {
						var img = $('<img/>', {
							id : 'dynamic',
							width : 250,
							height : 200,
						});
						var imgid = $(this).attr('id');
						var file = this.files[0];
						var reader = new FileReader();
						// Set preview image into the popover data-content
						reader.onload = function(e) {

							//	$('.image-preview-input-title'+imgid).text("Change");
							$('.image-preview-clear' + imgid).show();
							//	$('.image-preview-filename'+imgid).val(file.name);   
							img.attr('src', e.target.result);

							$(".temppreviewimageki" + imgid).attr("src",
									$(img)[0].src);
							$(".temppreviewimageki" + imgid).show();

						}
						reader.readAsDataURL(file);
					});
			//end  
		});
	</script>




</body>
</html>
