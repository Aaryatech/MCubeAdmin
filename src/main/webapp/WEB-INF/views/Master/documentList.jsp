<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><%@ taglib
	uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>

<jsp:include page="/WEB-INF/views/include/metacssjs.jsp"></jsp:include>

<link href="https://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/global_assets/css/icons/icomoon/styles.min.css" rel="stylesheet" type="text/css">
	<link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="assets/css/bootstrap_limitless.min.css" rel="stylesheet" type="text/css">
	<link href="assets/css/layout.min.css" rel="stylesheet" type="text/css">
	<link href="assets/css/components.min.css" rel="stylesheet" type="text/css">
	<link href="assets/css/colors.min.css" rel="stylesheet" type="text/css">


<script src="${pageContext.request.contextPath}/global_assets/js/main/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/global_assets/js/main/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/global_assets/js/plugins/loaders/blockui.min.js"></script>
	<script src="${pageContext.request.contextPath}/global_assets/js/plugins/ui/ripple.min.js"></script>
	<!-- /core JS files -->

	<!-- Theme JS files -->
	<script src="${pageContext.request.contextPath}/global_assets/js/plugins/media/fancybox.min.js"></script>
	<script src="${pageContext.request.contextPath}/global_assets/js/plugins/forms/styling/uniform.min.js"></script>
	<script src="${pageContext.request.contextPath}/global_assets/js/plugins/forms/selects/select2.min.js"></script>
	<script src="${pageContext.request.contextPath}/global_assets/js/plugins/tables/datatables/datatables.min.js"></script>

	<script src="assets/js/app.js"></script>
	<script src="${pageContext.request.contextPath}/global_assets/js/demo_pages/gallery_library.js"></script>
	<style>
.modal-content {
	
	bottom: auto !important;
	top: 20% !important;
	right:40% !important;
	//left:  5%!important;
	margin: 0px !important;
   
	width:190% !important;
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
  width:160% !important;
	height: 60%;
	right:40% !important;
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
.img-preview:hover
    {
      /* - width:350px;height:200px; */
      border: solid 1px #555;
      background-color: #eed;
      box-shadow:  0 0 10px 5px rgba(0,0,0,0.6);
      -moz-box-shadow: 0 0 10px  5px rgba(0,0,0,0.6);
      -webkit-box-shadow: 0 0 10px 5px rgba(0,0,0,0.6);
      -o-box-shadow: 0 0 10px 5px rgba(0,0,0,0.6);
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
			<!-- 	<div class="page-header page-header-light">


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




				</div>
			</div> -->
			<!-- /page header -->


			<!-- Content area -->
			<div class="content">


				<!-- Highlighting rows and columns -->
				<div class="card">
					<div class="card-header header-elements-inline">
						<h2 class="card-title">
							<i class="far fa-list-alt mr-3 fa-2x" style="color: black; font-size:25px;"></i>&nbsp;&nbsp;Document
							List
						</h2>
						<h5 class="card-title"><a href="${pageContext.request.contextPath}/associateDash"
							> <button type="button" class="btn btn-primary">
										Back</button> </a></h5>


						 

					</div>





					<div class="card-body">

						<!-- <div class="form-group row">
						<label class="col-form-label col-lg-2" for="locId"> Access
							Right:
						</label>
						<div class="col-lg-4">
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
 -->
						<table
							class="table table-bordered table-hover datatable-highlight1 datatable-button-html5-basic  datatable-button-print-columns1"
							id="printtable1">
							<thead>
								<tr class="bg-blue">
									<th width="5%">Sr.no</th>
									<th>Document No.</th>
									<th>Document Name</th>
									<th>Document Type</th>
									<th>Client Name</th>
									<th>Modified Date</th>

									<!-- <th class="text-center" width="10%">Actions</th> -->
								</tr>
							</thead>
							<tbody>

								<tr>
									<td>1</td>
									<td><a href="${pageContext.request.contextPath}/documentList">D766R33</a></td>
									<td>Loan NOCs</td>
									<td><img
										src="${pageContext.request.contextPath}/resources/assets/doc_type/excel-sm.png"
										class="mr-2" height="34" alt="" title="excel"></td>
									<td>Sashi Kumar</td>
									<td>02-02-2019</td>

									<%-- <td class="text-center"><a
										href="${pageContext.request.contextPath}/editCustomer?custId=${cust.exVar1}"
										title="Edit"><i class="icon-pencil7"
											style="color: black; font-size: 20px;"></i></a> <a
										href="${pageContext.request.contextPath}/deleteCustomer?custId=${cust.exVar1}"
										title="Block"><i class="icon-user-block "
											style="color: black; font-size: 20px;"></i> </a> <a
										href="${pageContext.request.contextPath}/deleteCustomer?custId=${cust.exVar1}"
										onClick="return confirm('Are you sure want to delete this record');"
										title="Delete"><i class="icon-trash"
											style="color: black; font-size: 20px;"></i> </a></td> --%>
								</tr>


								<tr>
									<td>2</td>
									<td><a href="${pageContext.request.contextPath}/documentListPdf">D433H22</a></td>
									<td>Finance Docs</td>
									<td><img
										src="${pageContext.request.contextPath}/resources/assets/doc_type/pdf-sm.png"
										class="mr-2" height="34" alt="" title="pdf"></td>
									<td>Pakaj Mishra</td>
									<td>20-06-2019</td>

									<%-- <td class="text-center"><a
										href="${pageContext.request.contextPath}/editCustomer?custId=${cust.exVar1}"
										title="Edit"><i class="icon-pencil7"
											style="color: black; font-size: 20px;"></i></a> <a
										href="${pageContext.request.contextPath}/deleteCustomer?custId=${cust.exVar1}"
										title="Block"><i class="icon-user-block "
											style="color: black; font-size: 20px;"></i> </a> <a
										href="${pageContext.request.contextPath}/deleteCustomer?custId=${cust.exVar1}"
										onClick="return confirm('Are you sure want to delete this record');"
										title="Delete"><i class="icon-trash"
											style="color: black; font-size: 20px;"></i> </a></td> --%>
								</tr>


							</tbody>
						</table>

					</div>

				</div>
				<!-- /highlighting rows and columns -->

			</div>
			<!-- /content area -->


			<!-- Footer -->
			<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
			<!-- /footer -->

		</div>
		<!-- /main content -->

	</div>
	<!-- /page content -->
	<!--***************************Model***********************  -->
	<!-- Basic modal -->
	<div id="modal_default" class="modal fade" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" >View Document Pages</h5>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<div class="modal-body">
				<div class="form-group row">
				<div class="col-md-6">
				 <div class = "table-responsive" style="overflow: auto; height: 105%; width:60%;">
					<table class="table table-striped media-library">
						<thead>
							<tr>
 								<th width="10%" style="color: white;">Pages</th>
								 

							</tr>
						</thead>
						<tbody>
							<tr>
								 
								<td width="10%"> <input type="checkbox"	name="TaskId" class="select_all" >&nbsp;<img
										src="${pageContext.request.contextPath}/resources/assets/doc_type/ex1.png" style="width:90%;
										alt="" class="img-preview rounded" onclick="myFunction(this);">
								</td>
								 
							</tr>
							<tr>
								 
								<td width="10%"><input type="checkbox"	name="TaskId" class="select_all" >&nbsp;<img
										src="${pageContext.request.contextPath}/resources/assets/doc_type/excelform.png" style="width:90%;
										alt="" class="img-preview rounded" onclick="myFunction(this);">
								</td>
								 
							</tr>
							<tr>
								 
								<td width="10%"><input type="checkbox"	name="TaskId" class="select_all" >&nbsp;<img
										src="${pageContext.request.contextPath}/resources/assets/doc_type/filled.png" style="width:90%;
										alt="" class="img-preview rounded" onclick="myFunction(this);">
								</td>
								 
							</tr>
							
							 
							 
						</tbody>
					</table>
					 </div>
					 </div>
					 <div class="col-md-6">
					 	<div class="container">
						 <!--  <span onclick="this.parentElement.style.display='none'" >&times;</span> -->
							  <img id="expandedImg" style="width:80%;">
							  <div id="imgtext"></div>
						</div>
					 </div>
					 </div>
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-link" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>
	
	<div id="modal_default1" class="modal fade" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">View Document Pages</h5>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<div class="modal-body">
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
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-link" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>
	<!--***************************Model End**********************  -->
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