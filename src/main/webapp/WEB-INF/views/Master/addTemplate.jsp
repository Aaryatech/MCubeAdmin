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
			<%-- <div class="page-header page-header-light">


				
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
								<h2 class="card-title">
									<i class="icon-file-plus "
										style="color: black; font-size: 25px"></i>&nbsp;&nbsp;Add
									Template
								</h2>

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
									action="${pageContext.request.contextPath}/submitInsertTemp"
									id="submitInsertEmp" method="get" enctype="multipart/form-data">




									<div class="form-group row">


										<label class="col-form-label col-lg-2" for="locId">
											Client Name : </label> <label class="col-form-label col-lg-2"
											for="locId"> Nikhil Salunkhe </label>
 
									</div>

									<div class="form-group row">
										<label class="col-form-label col-lg-2" for="locId">
											Property Type<span style="color: red">* </span>:
										</label>
										<div class="col-lg-5">
											<select name="locId" data-placeholder="Select" id="locId"
												class="form-control form-control-select2 select2-hidden-accessible"
												data-fouc="" aria-hidden="true">
												<option value="">Select</option>
												<option value="1">Home Loan</option>
												<option value="1">Car Loan</option>

											</select>
										</div>
									</div>

									<div class="form-group row">
										<label class="col-form-label col-lg-2" for="fname">
											Template Name <span style="color: red">* </span>:
										</label>
										<div class="col-lg-5">
											<input type="text" class="form-control  "
												placeholder="Template Name" id="fname" name="fname" s
												autocomplete="off" onchange="trim(this)">
										</div>


									</div>

									<div class="form-group row">
										<label class="col-form-label col-lg-2" for="fname">
											Import File <span style="color: red">* </span>:
										</label>
										<div class="col-lg-5">
											<input type="file" class="form-control  "
												placeholder="First Name" id="fname" name="fname"
												Value="Nikhil Salunkhe" readonly="readonly"
												autocomplete="off" onchange="trim(this)">
										</div>


									</div>

									<div class="form-group row mb-0">
										<div class="col-lg-10 ml-lg-auto">
											<!-- <button type="reset" class="btn btn-light legitRipple">Reset</button> -->
											<button type="submit" class="btn btn-primary" id="submtbtn">
												Submit <i class="icon-paperplane ml-2"></i>
											</button>
											<a href="${pageContext.request.contextPath}/customerList"><button
													type="button" class="btn btn-primary">
													<i class="${sessionScope.cancelIcon}" aria-hidden="true"></i>&nbsp;&nbsp;
													Cancel
												</button></a>
										</div>
									</div>
								</form>


								<table
									class="table table-bordered table-hover datatable-highlight1 datatable-button-html5-basic  datatable-button-print-columns1"
									id="printtable1">
									<thead>
										<tr class="bg-blue">
											<th width="5%">Sr.no</th>
											<th>Property Type</th>
											<th>Template Name</th>
											<th>Link</th>

											<th class="text-center" width="10%">Actions</th>
										</tr>
									</thead>
									<tbody>

										<tr>
											<td>1</td>
											<td>Home Loan</td>
											<td>Template 1</td>


											<td><a href="#">L1</a></td>



											<td class="text-center"><a href="#" title="Edit"><i
													class="icon-pencil7" style="color: black; font-size: 20px;"></i></a>

												<a href="#" onClick="delForm()" title="Delete"><i
													class="icon-trash" style="color: black; font-size: 20px;"></i>
											</a></td>
										</tr>


										<tr>
											<td>1</td>
											<td>Car Loan</td>
											<td>Template 2</td>
											<td><a href="#">L2</a></td>

											<td class="text-center"><a href="#" title="Edit"><i
													class="icon-pencil7" style="color: black; font-size: 20px;"></i></a>

												<a href="#" onClick="delForm()" title="Delete"><i
													class="icon-trash" style="color: black; font-size: 20px;"></i>
											</a></td>
										</tr>

									</tbody>
								</table>

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
		function submitForm() {
			$('#modal_scrollable').modal('hide');

			document.getElementById("submitInsertCompany").submit();

		}
	</script>
	<script>
		function delForm() {
			$('#modal_scrollable').modal('show');
		}
	</script>

	<div id="modal_scrollable" class="modal fade" data-backdrop="false"
		tabindex="-1">
		<div class="modal-dialog modal-dialog-scrollable">
			<div class="modal-content">
				<div class="modal-header pb-3">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body py-0">
					<h5 class="modal-title">Are You Sure You Want to Delete This
						Record</h5>
					<br>
				</div>
				<div class="modal-footer pt-3">
					<button type="button" class="btn btn-primary" data-dismiss="modal">Cancel</button>
					<button type="button" class="btn btn-primary"
						onclick="submitForm()">Delete</button>
				</div>
			</div>
		</div>
	</div>


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

		$(document).ready(function($) {

			$("#submitInsertEmp").submit(function(e) {
				var isError = false;
				var errMsg = "";

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
