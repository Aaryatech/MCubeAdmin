<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><%@ taglib
	uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>

<jsp:include page="/WEB-INF/views/include/metacssjs.jsp"></jsp:include>
<style CSS>
/* show border around full height container */
.h-100 {
	border: 0px;
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
			<div class="page-header page-header-light">


				<div
					class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
					<div class="d-flex">
						<div class="breadcrumb">
							<a href="${pageContext.request.contextPath}/dash"
								class="breadcrumb-item"><i class="icon-home2 mr-2"></i>
								Dashboard</a>
						</div>

						<a href="#" class="header-elements-toggle text-default d-md-none"><i
							class="icon-more"></i></a>



					</div>




				</div>
			</div>

			<div class="content">


				<!-- Highlighting rows and columns -->
				<div class="card">
					<div class="card-header header-elements-inline">
						<h2 class="card-title">
							<i class="far fa-list-alt mr-3 fa-2x"
								style="color: black; font-size: 25px;"></i>&nbsp;&nbsp;Raw Data
							Validation

						</h2>
					</div>

					<div class="card-body">


						<div class="form-group row"
							style="background-color: #ffeead; width: 80%;">

							<label class="col-md-6" for="reqId"> Request Id : 1</label> <label
								class="col-md-6" for="clntName"> Client Name : Alan
								Macedo</label> <label class="col-md-6" for="reqId"> Property
								Type : Hotel</label> <label class="col-md-6" for="reqId">
								Document No. : D766R33/Loan NOCs</label>


						</div>


						<div class="modal-body">

							<div class="form-group row">
								<label class="col-form-label col-lg-2" for="locId">
									Property <span style="color: red"> </span>:
								</label>
								<div class="col-lg-2">
									<select name="locId" data-placeholder="Select" id="locId"
										class="form-control form-control-select2 select2-hidden-accessible"
										data-fouc="" aria-hidden="true">

										<option value="">Select</option>


										<option selected="selected" value="1">Property 1</option>

										<option value="1">Property 2</option>



									</select>
								</div>
							</div>

							<div class="form-group row" style="padding-left: 40%;">
								<a href="#"><button type="button" disabled="disabled"
										class="btn btn-primary">1</button></a>&nbsp;&nbsp; <a href="#"><button
										type="button" class="btn btn-primary">2</button></a>&nbsp;&nbsp; <a
									href="#"><button type="button" disabled="disabled"
										class="btn btn-primary">3</button></a>&nbsp;&nbsp; <a href="#"><button
										type="button" disabled="disabled" class="btn btn-primary">4</button></a>&nbsp;&nbsp;
							</div>
							<div style="padding-left: 40%;">
								<div class="col-md-2 text-center mt-2"
									style="align-self: center;">

									<label class="d-block"
										style="text-align: center; font-size: x-medium;">Convert
										to Excel</label>
									<div class="progress-bar bg-success"
										style="width: 100%; font-size: x-medium;" id="3pro">100%</div>

									<ul class="fab-menu">
										<li><a href="#"> <i class="icon-sync "
												style="color: black; font-size: 40px;"></i> <i
												class="fab-icon-close icon-cross2"></i>
										</a></li>
									</ul>

								</div>
							</div>
							<div class="form-group row"></div>

							<div class="form-group row">

								<div class="col-lg-5 ">
									<h3>Source File</h3>
								</div>
								<div class="col-lg-1"></div>

								<div class="col-lg-5">
									<h3>Converted Excel</h3>
								</div>
							</div>

							<div class="form-group row">

								<div class="col-lg-5 border overflow-hidden">
									<img
										src="${pageContext.request.contextPath}/resources/assets/doc_type/pfform.jpg"
										alt="" onclick="myFunction1(this);">
									<h5>Doc No:D433H22/Finance Docs</h5>
								</div>
								<div class="col-lg-1"></div>
								<div class="col-lg-5 border overflow-hidden">
									<img
										src="${pageContext.request.contextPath}/resources/assets/doc_type/abc.png"
										alt="" onclick="myFunction1(this);">
								</div>
							</div>


							<div class="modal-body">

								<div class="form-group row" style="padding-left: 39%;">

									<a href="${pageContext.request.contextPath}/documentList"><button
											type="button" class="btn btn-primary">Prev</button></a>&nbsp;&nbsp;



									<a href="${pageContext.request.contextPath}/showExcelToexcel"><button
											type="button" class="btn btn-primary">Submit</button></a>&nbsp;&nbsp;

									<a href="${pageContext.request.contextPath}/showExcelToexcel"><button
											type="button" class="btn btn-primary">Next</button></a>&nbsp;&nbsp;
								</div>
							</div>

						</div>



					</div>
					<!-- /highlighting rows and columns -->

				</div>
				<!-- /content area -->


				<!-- Footer -->

				<!-- /footer -->

			</div>
			<!-- /main content -->
			<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
		</div>
		<!-- /page content -->
	</div>
	<script>
		function myFunction(imgs) {
			var expandImg = document.getElementById("expandedImg");
			var imgText = document.getElementById("imgtext");
			expandImg.src = imgs.src;
			imgText.innerHTML = imgs.alt;
			expandImg.parentElement.style.display = "block";
		}
	</script>

	<script>
		function myFunction1(imgs) {
			var expandImg = document.getElementById("expandedImg1");
			var imgText = document.getElementById("imgtext1");
			expandImg.src = imgs.src;
			imgText.innerHTML = imgs.alt;
			expandImg.parentElement.style.display = "block";
		}
	</script>
</body>
</html>