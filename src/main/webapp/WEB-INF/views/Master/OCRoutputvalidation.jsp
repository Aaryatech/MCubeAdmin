<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><%@ taglib
	uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>

<jsp:include page="/WEB-INF/views/include/metacssjs.jsp"></jsp:include>
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
			<!-- <div class="page-header page-header-light">


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
						<h2 class="card-title">Client Proprietary
										 Model Selection Screen</h2>
						
						<div class="card-title">  
						
     					 
     					 <i class="icon-search4">
     					 <input type="text" placeholder="Search" />
     					 </i>
						</div> 


						<%-- <table width="100%">
							<tr width="100%">
								 <td width="60%"><h2 class="card-title">
										Client Proprietary
										 Model Selection Screen</h2></td>

								<td width="40%" align="right"><a
									href="${pageContext.request.contextPath}/addCustomer"
									class="breadcrumb-elements-item">
										<button type="button" class="btn btn-primary">Add
											Customer</button>
								</a></td> 

							</tr>
						</table> --%>

					</div>




					<div class="card-body">

						<table
							class="table table- table-hover datatable-highlight1 datatable-button-html5-basic  datatable-button-print-columns1"
							id="printtable1">
							

							<tbody>

								<tr>
									<td align="center"><img
										src="${pageContext.request.contextPath}/resources/assets/doc_type/excellogo.jpeg"
										class="mr-2" height="120" alt="" title="pdf"><br>
										<h5>Hotel Agent Report</h5></td>

									<td align="center"><img
										src="${pageContext.request.contextPath}/resources/assets/doc_type/excellogo.jpeg"
										class="mr-2" height="120" alt="" title="pdf"><br>
										Hotel Agent Report</td>



									<td align="center"><img
										src="${pageContext.request.contextPath}/resources/assets/doc_type/excellogo.jpeg"
										class="mr-2" height="120" alt="" title="pdf">
										<br>
										Hotel Agent Report
										</td>


								</tr>


								<tr>
									<td align="center"><img
										src="${pageContext.request.contextPath}/resources/assets/doc_type/excellogo.jpeg"
										class="mr-2" height="120" alt="" title="pdf"><br>
										<h5>Hotel Agent Report</h5></td>

									<td align="center"><img
										src="${pageContext.request.contextPath}/resources/assets/doc_type/excellogo.jpeg"
										class="mr-2" height="120" alt="" title="pdf"><br>
										Hotel Agent Report</td>



									<td align="center"><img
										src="${pageContext.request.contextPath}/resources/assets/doc_type/excellogo.jpeg"
										class="mr-2" height="120" alt="" title="pdf">
										<br>
										Hotel Agent Report
										</td>
								</tr>


							</tbody>
						</table>

					</div>

						<div class="card-header header-elements-inline">
						<%-- <h5 class="card-title"><i class="icon-users4 "
											style="color: black;"></i>&nbsp;&nbsp;User List</h5>
								<h5 class="card-title"><a href="${pageContext.request.contextPath}/addUser"
							> Add User </a></h5> --%>


						<table width="100%">
							<tr width="100%">
								<!-- <td width="60%"><h2 class="card-title">
										<i class="icon-users4 " style="color: black; font-size: 25px"></i>&nbsp;&nbsp;Customer
										List
									</h2></td> -->

								<td width="40%" align="right"><a
									href="${pageContext.request.contextPath}/associateDash"
									class="breadcrumb-elements-item">
										<button type="button" class="btn btn-primary"> Export
											 </button>
								</a></td>

							</tr>
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
	<!-- <script>
	function filterTable(event) {
	    var filter = event.target.value.toUpperCase();
	    var rows = document.querySelector("#printtable1 tbody").rows;
	    
	    for (var i = 0; i < rows.length; i++) {
	        var firstCol = rows[i].cells[0].textContent.toUpperCase();
	        var secondCol = rows[i].cells[1].textContent.toUpperCase();
	        if (firstCol.indexOf(filter) > -1 || secondCol.indexOf(filter) > -1) {
	            rows[i].style.display = "";
	        } else {
	            rows[i].style.display = "none";
	        }      
	    }
	}

	document.querySelector('#myInput').addEventListener('keyup', filterTable, false); -->
	</script>
</body>
</html>