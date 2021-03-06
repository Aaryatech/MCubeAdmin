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
.mr-3{
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

			<!-- page header -->
			<%-- <div
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
			</div> --%>
			<!-- /page header -->


			<!-- Content area -->
			<div class="content">


				<!-- Highlighting rows and columns -->
				<div class="card">
					<div class="card-header header-elements-inline">
						<h2 class="card-title">
							<i class="far fa-list-alt mr-3 fa-2x"
								style="color: black; font-size: 25px;"></i> Select Deselect
							Cashflow Pages

						</h2>
						

					</div>





					<div class="card-body">

						<div class="form-group row">
						<label class="col-form-label col-lg-2" for="locId"> 
							Pages:
						</label>
						<div class="col-lg-4">
							<select name="locId" data-placeholder="Select" id="locId"
								class="form-control form-control-select2 select2-hidden-accessible"
								data-fouc="" aria-hidden="true">

								<option value="">Select</option>


								<option value="1">All</option>

								<option value="1">Selected</option>

								<option value="1">Deselected</option>

							</select>
						</div>
					 
					</div>
					
					

						<div class="form-group row" style="padding-left: 40%;">
							<span class="badge badge-primary badge-pill  mr-2 	">1</span> <span
								class="badge badge-secondary badge-pill mr-2 ">2</span> <span
								class="badge badge-secondary badge-pill mr-2  ">3</span> <span
								class="badge badge-secondary badge-pill mr-2">4</span>


						</div>

						<div class="form-group row"
							style="background-color: #ffeead; width: 85%;">

							<label class="col-md-6" for="reqId"> Request Id : 1</label> <label
								class="col-md-6" for="clntName"> Client Name : Alan
								Macedo</label> <label class="col-md-6" for="reqId"> Property
								Type : Hotel</label> <label class="col-md-6" for="reqId">
								Document No. : D766R33/Loan NOCs</label>


						</div>




						<div class="modal-body">




							<div class="form-group row">
								<div class="col-md-6">
									<div class="table-responsive"
										style="overflow: auto; height: 105%; width: 60%;">

										<table class="table table-striped media-library">
											<thead>
												<tr>
													<th width="10%" style="color: white;">Pages</th>


												</tr>
											</thead>
											<tbody>
												<tr>

													<td width="10%"><input type="checkbox" name="TaskId"
														class="select_all" checked>&nbsp;<img
														src="${pageContext.request.contextPath}/resources/assets/doc_type/ex1.png"
														style="width: 90%;" class="img-preview rounded"
														onclick="myFunction(this);"></td>

												</tr>
												<tr>

													<td width="10%"><input type="checkbox" name="TaskId"
														class="select_all">&nbsp;<img
														src="${pageContext.request.contextPath}/resources/assets/doc_type/excelform.png"
														style="width: 90%;" class="img-preview rounded"
														onclick="myFunction(this);"></td>

												</tr>
												<tr>

													<td width="10%"><input type="checkbox" name="TaskId"
														class="select_all">&nbsp;<img
														src="${pageContext.request.contextPath}/resources/assets/doc_type/filled.png"
														style="width: 90%;" class="img-preview rounded"
														onclick="myFunction(this);"></td>

												</tr>
												<tr>

													<td width="10%"><input type="checkbox" name="TaskId"
														class="select_all">&nbsp;<img
														src="${pageContext.request.contextPath}/resources/assets/doc_type/excelform1.png"
														style="width: 90%;"class="img-preview rounded"
														onclick="myFunction(this);"></td>

												</tr>
												<tr>

													<td width="10%"><input type="checkbox" name="TaskId"
														class="select_all">&nbsp;<img
														src="${pageContext.request.contextPath}/resources/assets/doc_type/excel-pivot-start.jpg"
														style="width: 90%;" class="img-preview rounded"
														onclick="myFunction(this);"></td>

												</tr>



											</tbody>
										</table>

									</div>
								</div>
								<div class="col-md-6">
									<div class="container">
										<!--  <span onclick="this.parentElement.style.display='none'" >&times;</span> -->
										<img id="expandedImg" style="width: 80%; border: solid;">
										<div id="imgtext"></div>
									</div>
								</div>
							</div>

							<div class="modal-body">

								<div class="form-group row" style="padding-left: 39%;">

									<%-- 	<a href="${pageContext.request.contextPath}/showDocumentList"><button
											type="button" class="btn btn-primary">Prev</button></a>&nbsp;&nbsp; --%>

									<a href="${pageContext.request.contextPath}/showDocumentList"
										class="icon-backward mr-3 icon-2x"></a>


									<a href="${pageContext.request.contextPath}/showOCR"><button
											type="button" class="btn btn-primary">Submit</button></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<%-- 
									<a href="${pageContext.request.contextPath}/showOCR"><button
											type="button" class="btn btn-primary">Next</button></a>&nbsp;&nbsp;
											 --%>

								
									
									<a href="${pageContext.request.contextPath}/showOCR"
											class="icon-forward2 mr-3 icon-2x"></a>
									
								</div>
							</div>






							<%-- 	<div class="modal-body">
				<div class="form-group row">
				<div class="col-md-6">
				 <div class = "table-responsive" style="overflow: auto; height: 105%; width:60%;">
					<table class="table table-striped media-library">
						<thead>
							<tr>
 								<th width="10%">Pages</th>
								 

							</tr>
						</thead>
						<tbody>
							<tr>
								 
								<td width="10%"> <input type="checkbox"	name="TaskId" class="select_all" >&nbsp;<img
										src="${pageContext.request.contextPath}/resources/assets/doc_type/pan-pdf.PNG" style="width:90%;
										alt="" class="img-preview rounded" onclick="myFunction1(this);">
								</td>
								 
							</tr>
							<tr>
								 
								<td width="10%"><input type="checkbox"	name="TaskId" class="select_all" >&nbsp;<img
										src="${pageContext.request.contextPath}/resources/assets/doc_type/pdf_form.jpg" style="width:90%;
										alt="" class="img-preview rounded" onclick="myFunction1(this);">
								</td>
								 
							</tr>
							<tr>
								 
								<td width="10%"><input type="checkbox"	name="TaskId" class="select_all" >&nbsp;<img
										src="${pageContext.request.contextPath}/resources/assets/doc_type/formImg.png" style="width:90%;
										alt="" class="img-preview rounded" onclick="myFunction1(this);">
								</td>
								 
							</tr>
							
							 
							 
						</tbody>
					</table>
					 </div>
					 </div>
					 <div class="col-md-6">
					 	<div class="container">
						 <!--  <span onclick="this.parentElement.style.display='none'" >&times;</span> -->
							  <img id="expandedImg1" style="width:80%;">
							  <div id="imgtext1"></div>
						</div>
					 </div>
					 </div>
				</div> --%>




						</div>

					</div>
					<!-- /highlighting rows and columns -->

				</div>
				<!-- /content area -->

			</div>
			<!-- Footer -->
			<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>

			<!-- /footer -->

		</div>
		<!-- /main content -->
	</div>
	<!-- /page content -->

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