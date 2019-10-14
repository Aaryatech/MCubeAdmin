<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><%@ taglib
	uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>

<jsp:include page="/WEB-INF/views/include/metacssjs.jsp"></jsp:include>
<c:url var="getSubmoduleList" value="/getSubmoduleList" />
<c:url value="/getUserInfo" var="getUserInfo"></c:url>

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
			
				<div
					class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
					<div class="d-flex">
						<div class="breadcrumb">
							<a href="${pageContext.request.contextPath}/dash" class="breadcrumb-item"><i
								class="icon-home2 mr-2"></i> Dashboard</a>  
						</div>

						<a href="#" class="header-elements-toggle text-default d-md-none"><i
							class="icon-more"></i></a>



					</div>




				</div>


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
								<h2 class="card-title"><i class="icon-user-plus "
											style="color: black; font-size:25px;"></i>&nbsp;&nbsp;Add User</h2>
								<a href="${pageContext.request.contextPath}/userList"
							class="breadcrumb-elements-item">User List</a>
							</div>

							<div class="card-body">

								<%
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
									if (session.getAttribute("successMsg") != null) {
								%>
								<div
									class="alert bg-success text-white alert-styled-left alert-dismissible">
									<button type="button" class="close" data-dismiss="alert">
										<span>×</span>
									</button>
									<span class="font-weight-semibold">Well done!</span>
									<%
										out.println(session.getAttribute("successMsg"));
									%>
								</div>
								<%
									session.removeAttribute("successMsg");
									}
								%>

								<form
									action="${pageContext.request.contextPath}/submitInsertUserInfo"
									id="submitInsertEmp" method="get" enctype="multipart/form-data">


									<div class="form-group row">
										<label class="col-form-label col-lg-2" for="profilePic">
											Profile Pic :</label>
										<div class="col-lg-4">
											<div class="input-group-btn  ">

												<span class="filename" style="user-select: none1;"><img
													id="temppreviewimageki1" name="image1"
													class="temppreviewimageki1" alt="l"
													style="width: 200px; height: auto; display: none"> </span>
												<!-- image-preview-clear button -->
												<button type="button" title="Clear selected files"
													class="btn btn-default btn-secondary fileinput-remove fileinput-remove-button legitRipple image-preview-clear image-preview-clear1"
													id="1" style="display: none;">
													<i class="icon-cross2 font-size-base mr-2"></i> Clear
												</button>

												<div class="btn btn-primary btn-file legitRipple">
													<i class="icon-file-plus"></i> <span class="hidden-xs">Browse</span><input
														type="file" class="file-input browseimage browseimage1"
														data-fouc="" id="1" name="profilePic"
														accept=".jpg,.png,.gif">
												</div>
											</div>


										</div>

										<div class="col-lg-4"></div>
									</div>


									<div class="form-group row">
										<label class="col-form-label col-lg-2" for="fname">
											User Details <span style="color: red">* </span>:
										</label>
										<div class="col-lg-3">
											<input type="text" class="form-control  "
												placeholder="First Name" id="fname" name="fname"
												autocomplete="off" onchange="trim(this)"> <span
												class="validation-invalid-label" id="error_fname"
												style="display: none;">This field is required.</span>
										</div>





										<div class="col-lg-3">
											<input type="text" class="form-control  "
												placeholder="Last Name" id="sname" name="sname"
												autocomplete="off" onchange="trim(this)"> <span
												class="validation-invalid-label" id="error_sname"
												style="display: none;">This field is required.</span>
										</div>
									</div>

									<div class="form-group row">
										<label class="col-form-label col-lg-2" for="locId">
											Access Right <span style="color: red">* </span>:
										</label>
										<div class="col-lg-5">
											<select name="locId" data-placeholder="Select" id="locId"
												class="form-control form-control-select2 select2-hidden-accessible"
												data-fouc="" aria-hidden="true">

												<option value="">Select</option>


												<option value="1">Master Admin</option>

												<option value="1">Admin</option>

												<option value="1">Associate</option>

											</select>
										</div>
									</div>

									<div class="form-group row">
										<label class="col-form-label col-lg-2" for="mobile1">Contact
											No <span style="color: red">* </span>:
										</label>
										<div class="col-lg-4">
											<input type="text" class="form-control"
												placeholder="Contact No." id="mobile1" name="mobile1"
												onchange="checkUnique(this.value,1)" autocomplete="off"
												onchange="trim(this)" maxlength="10"> <span
												class="validation-invalid-label" id="error_mobile1"
												style="display: none;">This field is required.</span> <span
												class="validation-invalid-label" id="error_mobile1_unique"
												style="display: none;">This Mobile No. is already
												exist.</span>
										</div>
									</div>



									<div class="form-group row">
										<label class="col-form-label col-lg-2" for="email">Email
											<span style="color: red">* </span>:
										</label>
										<div class="col-lg-4">
											<input type="text" class="form-control" placeholder="Email"
												id="email" name="email" onchange="checkUnique(this.value,2)"
												autocomplete="off"> <span
												class="validation-invalid-label" id="error_email"
												style="display: none;">This field is required.</span> <span
												 id="error_email_unique" style="color: red"
												>Email Id Will Be Default Username to Enter in System</span>
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

	<script type="text/javascript">
		function setDate(value) {
			///alert("Value " +value)
			if (value == 1) {
				//alert(value)
				//document.getElementById("relDate").removeAttribute("required");
				document.getElementById("abc").style.display = "none";
				document.getElementById("xyz").style.display = "none";

				//alert(value)
			} else {
				//alert(value)
				//document.getElementById("relDate").setAttribute("required","true");
				document.getElementById("abc").style.display = "block";
				document.getElementById("xyz").style.display = "block";

				//alert(value)

			}

		}
	</script>
	<script>
		function checkAdd() {

			if (document.getElementById("checkSameAdd").checked == true) {

				document.getElementById("permntAdd").value = document
						.getElementById("tempAdd").value;

			} else {

				document.getElementById("permntAdd").value = "";
			}

		}
	</script>

	<script>
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
		function validateMobile(mobile) {
			var mob = /^[1-9]{1}[0-9]{9}$/;

			if (mob.test($.trim(mobile)) == false) {

				//alert("Please enter a valid email address .");
				return false;

			}
			return true;

		}

		$(document)
				.ready(
						function($) {

							$("#submitInsertEmp")
									.submit(
											function(e) {
												var isError = false;
												var errMsg = "";

												
												if (!isError) {

													var x = true;
													if (x == true) {

														document
																.getElementById("submtbtn").disabled = true;
														return true;
													}
													//end ajax send this to php page
												}
												return false;
											});
						});
		//
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

	<script type="text/javascript">
		function checkUnique(inputValue, valueType) {
			//alert("hi");

			document.getElementById("submtbtn").disabled = false;

			var valid = false;
			if (valueType == 1) {
				//alert("Its Mob no");
				if (inputValue.length == 10) {
					valid = true;
					//alert("Len 10")
				} else {
					//alert("Not 10");
				}
			} else if (valueType == 2) {
				//alert("Its Email " );

				var mailformat = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
				if (inputValue.match(mailformat)) {
					valid = true;
					//alert("Valid Email Id");
				} else {
					valid = false;
					//alert("InValid Email Id");
				}
			}
			if (valid == true) {
				$
						.getJSON(
								'${getUserInfo}',
								{
									inputValue : inputValue,
									valueType : valueType,
									ajax : 'true',

								},
								function(data) {

									if (valueType == 2) {

										if (data.empId == 0) {

											$("#error_email").hide();
											document
													.getElementById("emailExist").value = 0;

										} else {
											$("#error_email").show();
											/* document.getElementById("email").value = ""; */
											document
													.getElementById("emailExist").value = 1;
											document
													.getElementById("error_email").innerHTML = "This Email is already exist.";
										}

									} else {

										if (data.empId == 0) {

											$("#error_mobile1").hide();
											document
													.getElementById("mobile1Exist").value = 0;

										} else {
											$("#error_mobile1").show()
											/* document.getElementById("mobile1").value = ""; */
											document
													.getElementById("mobile1Exist").value = 1;
											document
													.getElementById("error_mobile1").innerHTML = "This Mobile No. is already exist.";
										}

									}

								});
				document.getElementById("uname").value = document
						.getElementById("email").value;
			}
		}
	</script>

	<!-- <script type="text/javascript">
	$('#submtbtn').on('click', function() {
        swalInit({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            type: 'warning',
            showCancelButton: true,
            confirmButtonText: 'Yes, delete it!',
            cancelButtonText: 'No, cancel!',
            confirmButtonClass: 'btn btn-success',
            cancelButtonClass: 'btn btn-danger',
            buttonsStyling: false
        }).then(function(result) {
            if(result.value) {
                swalInit(
                    'Deleted!',
                    'Your file has been deleted.',
                    'success'
                );
            }
            else if(result.dismiss === swal.DismissReason.cancel) {
                swalInit(
                    'Cancelled',
                    'Your imaginary file is safe :)',
                    'error'
                );
            }
        });
    });
	
	</script> -->

</body>
</html>
