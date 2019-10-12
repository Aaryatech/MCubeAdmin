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
					<%-- <h5 class="card-title"><i class="icon-users4 "
											style="color: black;"></i>&nbsp;&nbsp;User List</h5>
								<h5 class="card-title"><a href="${pageContext.request.contextPath}/addUser"
							> Add User </a></h5> --%>
							
							
							<table width="100%">
							<tr width="100%">
								<td width="60%"><h2 class="card-title"><i class="icon-list "
											style="color: black; font-size:25px"></i>&nbsp;&nbsp;Incoming Request List</h2></td>
								 
							</tr>
						</table>
						 
					</div>
					<div class="card-body">
					
				 
						<table
											class="table text-nowrap datatable-highlight1 datatable-button-html5-basic  datatable-button-print-columns1"
											id="printtable1">
											<thead>
												<tr class="bg-blue">
													<th>Request ID</th>
													<th>Client</th>
													<th>Property Type</th>
													<th>Deal Name</th>
													 
													<th>Date</th>

												</tr>
											</thead>
											<tbody>

												<tr>
													<td>1</td>
													<td><div class="d-flex align-items-center">
															
															<div>
																<a href="#" class="text-default font-weight-semibold">Shree Kapadnis</a>

															</div>
														</div></td>

													<td>Home Loan</td>
													<td>ABC Deal</td>
													 
													<td>10/02/2020</td>

												</tr>


												<tr>
													<td>2</td>
													<td><div class="d-flex align-items-center">
															
															<div>
																<a href="#" class="text-default font-weight-semibold">Rahul Desale</a>

															</div>
														</div></td>

													<td>Car Loan</td>
													<td>XYZ</td>
												 
													<td>10/10/2019</td>

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

</body>
</html>