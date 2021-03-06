<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><%@ taglib
	uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>

<jsp:include page="/WEB-INF/views/include/metacssjs.jsp"></jsp:include>

<style>
.modal-content {
	bottom: auto !important;
	top: 20% !important;
	right: 40% !important; //
	left: 5% !important;
	margin: 0px !important;
	width: 190% !important;
	height: 60%;
}

/* The grid: Four equal columns that floats next to each other */
.column {
	float: left;
	width: 25%;
	padding: 10px;
}

/* Style the images inside the grid */
.column img {
	opacity: 0.8;
	cursor: pointer;
}

.column img:hover {
	opacity: 1;
}

/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}

/* The expanding image container */
.container {
	position: relative;
	display: none;
	width: 160% !important;
	height: 60%;
	right: 40% !important;
}

/* Expanding image text */
#imgtext {
	position: absolute;
	bottom: 15px;
	left: 15px;
	color: white;
	font-size: 20px;
}

/* Closable button inside the expanded image */
.closebtn {
	position: absolute;
	top: 10px;
	right: 15px;
	color: white;
	font-size: 35px;
	cursor: pointer;
}

.img-preview:hover {
	/* - width:350px;height:200px; */
	border: solid 1px #555;
	background-color: #eed;
	box-shadow: 0 0 10px 5px rgba(0, 0, 0, 0.6);
	-moz-box-shadow: 0 0 10px 5px rgba(0, 0, 0, 0.6);
	-webkit-box-shadow: 0 0 10px 5px rgba(0, 0, 0, 0.6);
	-o-box-shadow: 0 0 10px 5px rgba(0, 0, 0, 0.6);
}

a {
	text-decoration: none;
	display: inline-block;
	padding: 8px 16px;
}

a:hover {
	background-color: #ddd;
	color: black;
}

.previous {
	background-color: #f1f1f1;
	color: black;
	left: 0px !important;
}

.next {
	background-color: #4CAF50;
	color: white;
}

.round {
	border-radius: 50%;
}

.mr-3 {
	color: black;
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
			<%-- <div class="page-header page-header-light">
				<div
					class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
					<div class="d-flex">
						<div class="breadcrumb">
							<a href="${pageContext.request.contextPath}/associateDash"
								class="breadcrumb-item"><i class="icon-home2 mr-2"></i>
								Dashboard</a>
						</div>

						<a href="#" class="header-elements-toggle text-default d-md-none"><i
							class="icon-more"></i></a>
					</div>
				</div>
			</div> --%>

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

						<div class="form-group row" style="padding-left: 44%;">
							<span class="badge badge-secondary badge-pill mr-2	">1</span> <span
								class="badge badge-primary badge-pill  mr-2 ">2</span> <span
								class="badge badge-secondary badge-pill mr-2  ">3</span> <span
								class="badge badge-secondary badge-pill mr-2">4</span>


						</div>

						<div class="form-group row"
							style="background-color: #ffeead; width: 92%;">

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


							<div class="form-group row">


								<label class="col-form-label col-lg-3" for="fname">
									Source File </label>  <label class="col-form-label col-lg-3" for="fname"></label> <label
									class="col-form-label col-lg-4" for="fname"> Converted
									Excel </label><label class="col-form-label col-lg-2" for="fname">
									<i class="icon-sync " style="color: black; font-size: 40px;">
								</i>
								</label>
							</div>



							<div class="form-group row" style="padding-left: 10%;">
								<span class="badge badge-secondary badge-pill mr-2" >1</span> <span
									class="badge badge-dark badge-pill mr-2">2</span> <span
									class="badge badge-secondary badge-pill mr-2">3</span> <span
									class="badge badge-secondary badge-pill mr-2">4</span>
									<span class="badge badge-secondary badge-pill mr-2" >5</span> <span
									class="badge badge-secondary badge-pill mr-2">6</span> <span
									class="badge badge-secondary badge-pill mr-2">7</span> <span
									class="badge badge-secondary badge-pill mr-2">8</span>


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
									<iframe
										src='https://docs.google.com/spreadsheets/d/1ITJbfjaIpZBeDXS_mZPP_P-nLqYUdcC-/edit#gid=0'
										width='100%' height='100%' frameborder='0'> </iframe>

								</div>
							</div>


							<div class="modal-body">

								<div class="form-group row" style="padding-left: 39%;">



									<a href="${pageContext.request.contextPath}/documentList"
										class="icon-backward mr-3 icon-2x"></a> <a
										href="${pageContext.request.contextPath}/showExcelToexcel"><button
											type="button" class="btn btn-primary">Submit</button></a>&nbsp;&nbsp;



									<a href="${pageContext.request.contextPath}/showExcelToexcel"
										class="icon-forward2 mr-3 icon-2x"></a>
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