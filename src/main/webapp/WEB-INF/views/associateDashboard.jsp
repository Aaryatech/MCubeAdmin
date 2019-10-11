<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="/WEB-INF/views/include/metacssjs.jsp"></jsp:include>


<!-- Theme JS files -->
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/visualization/echarts/echarts.min.js"></script>

<!-- Theme JS files -->
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/visualization/d3/d3.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/visualization/d3/d3_tooltip.js"></script>

<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/demo_pages/widgets_stats.js"></script>
<!-- /theme JS files -->


<!-- Theme JS files -->
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/extensions/jquery_ui/interactions.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/extensions/jquery_ui/widgets.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/extensions/jquery_ui/effects.min.js"></script>

<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/demo_pages/jqueryui_navigation.js"></script>
<!-- /theme JS files -->

<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/demo_pages/form_checkboxes_radios.js"></script>

<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/demo_pages/picker_date.js"></script>




</head>
<body onload="barChart();pieChart();">



	<style type="text/css">
body {
	font-size: 0.9rem;
}

.form-control {
	font-size: 0.9rem;
}
</style>


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


			<!-- Content area -->
			<div class="content">





				<!-- Inner container -->
				<div class="d-flex align-items-start flex-column flex-md-row">

					<!-- Left content -->
					<div class="w-100 overflow-auto order-2 order-md-1">





						<!-- Post -->
						<div class="card">
							<div class="card-body">
								<div class="mb-4" id="tablediv">


									<div class="card-body">
										<div class="jui-tabs-basic" data-fouc>
											<ul>
												<li><a href="#tabs-basic-1"><span
														class="badge badge-danger mr-2">5</span> ALL</a></li>
												<li><a href="#tabs-basic-2"
													style="align-items: center;"><i class="icon-home2"></i>
														&nbsp;&nbsp; Home Loan <span
														class="badge badge-pill bg-green ml-2">3</span></a></li>
												<li><a href="#tabs-basic-3"
													style="align-items: center;"><i class="icon-car"></i>
														&nbsp;&nbsp;Car Loan <span
														class="badge badge-pill bg-green ml-2">5</span></a></li>
												<li><a href="#tabs-basic-4"
													style="align-items: center;"><i
														class="icon-credit-card2"></i> &nbsp;&nbsp;Credit Card
														Loan <span class="badge badge-pill bg-green ml-2">5</span></a></li>
												<li><a href="#tabs-basic-5"
													style="align-items: center;"><i class="icon-book3"></i>
														&nbsp;&nbsp;Education Loan <span
														class="badge badge-pill bg-green ml-2">5</span></a></li>

											</ul>


											<div id="filter-panel" class="collapse filter-panel">
												<div class="panel panel-default card border-1 border-dark">
													<div class="panel-body">
														<form class="form-inline" role="form">

															<div class="card-body">
																<div class="row" style="align-items: flex-end;">

																	<div class="col-md-6">
																		<div class="form-group">
																			<label class="d-block">Client</label> <select
																				multiple="multiple" class="form-control select"
																				data-fouc>
																				<option value="AZ" selected>All</option>
																				<option value="AZ">Alan Macedo</option>
																				<option value="CO">Robert Hauber</option>
																				<option value="ID">Chris Macintyre</option>
																				<option value="WY">Brett Castellano</option>
																				<option value="WY">Roxanne Forbes</option>
																			</select>
																		</div>
																	</div>

																	<div class="col-md-6">
																		<div class="form-group">
																			<label class="d-block">Property Type</label> <select
																				multiple="multiple" class="form-control select"
																				data-fouc>
																				<option value="AZ" selected>All</option>
																				<option value="CO">Home Loan</option>
																				<option value="ID">Car Loan</option>
																				<option value="WY">Credit Card Loan</option>
																				<option value="WY">Education Loan</option>
																			</select>
																		</div>
																	</div>

																</div>

																<br>

																<div class="row" style="align-items: flex-end;">

																	<div class="col-md-5">
																		<div class="form-group">
																			<label class="d-block">Request Status</label> <select
																				multiple="multiple"
																				class="form-control select-fixed-multiple" data-fouc>
																				<option value="AZ" selected>All</option>
																				<option value="CO">Unassigned</option>
																				<option value="ID">Assigned</option>
																				<option value="WY">Pending</option>
																				<option value="WY">Completed</option>
																			</select>
																		</div>
																	</div>

																	<div class="col-md-4">

																		<div class="form-group">
																			<div class="input-group">
																				<span class="input-group-prepend"> <span
																					class="input-group-text"><i
																						class="icon-calendar22"></i></span>
																				</span> <input type="text"
																					class="form-control daterange-basic"
																					value="10/01/2019 - 10/31/2019">
																			</div>
																		</div>
																	</div>

																	<div class="col-md-3">
																		<div class="form-group">

																			<button type="button" class="btn btn-primary">
																				<span class="glyphicon glyphicon-cog"></span> Apply

																			</button>
																			&nbsp;
																			<button type="button" class="btn btn-dark">
																				<span class="glyphicon glyphicon-cog"></span> Clear

																			</button>

																		</div>
																	</div>

																</div>
															</div>

														</form>
													</div>
												</div>
											</div>

											<br>


											<button type="button" class="btn btn-primary"
												data-toggle="collapse" data-target="#filter-panel">
												<span class="glyphicon glyphicon-cog"></span> Advanced
												Filter
											</button>

											<div id="tabs-basic-1">

												<div class="table-responsive">
													<table
														class="table text-nowrap datatable-highlight1 datatable-button-html5-basic  datatable-button-print-columns1"
														id="printtable1">
														<thead>
															<tr class="bg-blue">

																<th>Request ID</th>
																<th class="text-center">Client</th>
																<th>Property Type</th>
																<th>Deal Name</th>
																<th>Request Status</th>
																<th>Received From</th>
																<th>Date</th>

															</tr>
														</thead>
														<tbody>

															<tr>
																<td><div class="form-check">
																		<label class="form-check-label">  1
																		</label>
																	</div></td>
																<td><div class="d-flex align-items-center">
																		<div class="mr-3">
																			<a href="#"> <img
																				src="${pageContext.request.contextPath}/resources/assets/images/8.jpg"
																				class="rounded-circle mr-2" height="34" alt="">
																			</a>
																		</div>
																		<div>
																			<a href="#" class="text-default font-weight-semibold">Alan
																				Macedo</a>

																		</div>
																	</div></td>

																<td>Hotel</td>
																<td>Abc Deal</td>
																<td><span class="badge bg-blue">Pending</span></td>
																<td>ABC</td>
																<td>10/10/2019</td>

															</tr>


															<tr>
																<td>

																	<div class="form-check">
																		<label class="form-check-label">  2
																		</label>
																	</div>


																</td>
																<td><div class="d-flex align-items-center">
																		<div class="mr-3">
																			<a href="#"> <img
																				src="${pageContext.request.contextPath}/resources/assets/images/8.jpg"
																				class="rounded-circle mr-2" height="34" alt="">
																			</a>
																		</div>
																		<div>
																			<a href="#" class="text-default font-weight-semibold">Robert
																				Hauber</a>

																		</div>
																	</div></td>

																<td>Hotel</td>
																<td>Abc Deal</td>
																<td><span class="badge bg-blue">Pending</span></td>
																<td>ABC</td>
																<td>10/10/2019</td>

															</tr>

															<tr>
																<td>

																	<div class="form-check">
																		<label class="form-check-label"> 3
																		</label>
																	</div>


																</td>
																<td><div class="d-flex align-items-center">
																		<div class="mr-3">
																			<a href="#"> <img
																				src="${pageContext.request.contextPath}/resources/assets/images/8.jpg"
																				class="rounded-circle mr-2" height="34" alt="">
																			</a>
																		</div>
																		<div>
																			<a href="#" class="text-default font-weight-semibold">Chris
																				Macintyre</a>

																		</div>
																	</div></td>

																<td>Hotel</td>
																<td>Abc Deal</td>
																<td><span class="badge bg-blue">Pending</span></td>
																<td>ABC</td>
																<td>10/10/2019</td>

															</tr>


															<tr>
																<td>

																	<div class="form-check">
																		<label class="form-check-label">  4
																		</label>
																	</div>


																</td>
																<td><div class="d-flex align-items-center">
																		<div class="mr-3">
																			<a href="#"> <img
																				src="${pageContext.request.contextPath}/resources/assets/images/8.jpg"
																				class="rounded-circle mr-2" height="34" alt="">
																			</a>
																		</div>
																		<div>
																			<a href="#" class="text-default font-weight-semibold">Brett
																				Castellano</a>

																		</div>
																	</div></td>

																<td>Hotel</td>
																<td>Abc Deal</td>
																<td><span class="badge bg-success">Done</span></td>
																<td>ABC</td>
																<td>10/10/2019</td>

															</tr>

															<tr>
																<td>

																	<div class="form-check">
																		<label class="form-check-label">  5
																		</label>
																	</div>


																</td>
																<td><div class="d-flex align-items-center">
																		<div class="mr-3">
																			<a href="#"> <img
																				src="${pageContext.request.contextPath}/resources/assets/images/8.jpg"
																				class="rounded-circle mr-2" height="34" alt="">
																			</a>
																		</div>
																		<div>
																			<a href="#" class="text-default font-weight-semibold">Roxanne
																				Forbes</a>

																		</div>
																	</div></td>

																<td>Hotel</td>
																<td>Abc Deal</td>
																<td><span class="badge bg-danger">Rejected</span></td>
																<td>ABC</td>
																<td>10/10/2019</td>

															</tr>


														</tbody>
													</table>
												</div>


											</div>



											<div id="tabs-basic-2">

												<div class="table-responsive">
													<table
														class="table text-nowrap datatable-highlight1 datatable-button-html5-basic  datatable-button-print-columns1"
														id="printtable1">
														<thead>
															<tr class="bg-blue">
																<th>Request ID</th>
																<th class="text-center">Client</th>
																<th>Property Type</th>
																<th>Deal Name</th>
																<th>Request Status</th>
																<th>Received From</th>
																<th>Date</th>

															</tr>
														</thead>
														<tbody>

															<tr>
																<td>

																	<div class="form-check">
																		<label class="form-check-label"> 1
																		</label>
																	</div>


																</td>
																<td><div class="d-flex align-items-center">
																		<div class="mr-3">
																			<a href="#"> <img
																				src="${pageContext.request.contextPath}/resources/assets/images/8.jpg"
																				class="rounded-circle mr-2" height="34" alt="">
																			</a>
																		</div>
																		<div>
																			<a href="#" class="text-default font-weight-semibold">Alan
																				Macedo</a>

																		</div>
																	</div></td>

																<td>Hotel</td>
																<td>Abc Deal</td>
																<td><span class="badge bg-danger">Rejected</span></td>
																<td>ABC</td>
																<td>10/10/2019</td>

															</tr>


															<tr>
																<td>

																	<div class="form-check">
																		<label class="form-check-label"> 2
																		</label>
																	</div>


																</td>
																<td><div class="d-flex align-items-center">
																		<div class="mr-3">
																			<a href="#"> <img
																				src="${pageContext.request.contextPath}/resources/assets/images/8.jpg"
																				class="rounded-circle mr-2" height="34" alt="">
																			</a>
																		</div>
																		<div>
																			<a href="#" class="text-default font-weight-semibold">Robert
																				Hauber</a>

																		</div>
																	</div></td>

																<td>Hotel</td>
																<td>Abc Deal</td>
																<td><span class="badge bg-blue">Pending</span></td>
																<td>ABC</td>
																<td>10/10/2019</td>

															</tr>

															<tr>
																<td>

																	<div class="form-check">
																		<label class="form-check-label">  3
																		</label>
																	</div>


																</td>
																<td><div class="d-flex align-items-center">
																		<div class="mr-3">
																			<a href="#"> <img
																				src="${pageContext.request.contextPath}/resources/assets/images/8.jpg"
																				class="rounded-circle mr-2" height="34" alt="">
																			</a>
																		</div>
																		<div>
																			<a href="#" class="text-default font-weight-semibold">Chris
																				Macintyre</a>

																		</div>
																	</div></td>

																<td>Hotel</td>
																<td>Abc Deal</td>
																<td><span class="badge bg-blue">Pending</span></td>
																<td>ABC</td>
																<td>10/10/2019</td>

															</tr>





														</tbody>
													</table>
												</div>

											</div>
											<div id="tabs-basic-3">

												<div class="table-responsive">
													<table
														class="table text-nowrap datatable-highlight1 datatable-button-html5-basic  datatable-button-print-columns1"
														id="printtable1">
														<thead>
															<tr class="bg-blue">
																<th>Request ID</th>
																<th class="text-center">Client</th>
																<th>Property Type</th>
																<th>Deal Name</th>
																<th>Request Status</th>
																<th>Received From</th>
																<th>Date</th>

															</tr>
														</thead>
														<tbody>

															<tr>
																<td>

																	<div class="form-check">
																		<label class="form-check-label"> 1
																		</label>
																	</div>


																</td>
																<td><div class="d-flex align-items-center">
																		<div class="mr-3">
																			<a href="#"> <img
																				src="${pageContext.request.contextPath}/resources/assets/images/8.jpg"
																				class="rounded-circle mr-2" height="34" alt="">
																			</a>
																		</div>
																		<div>
																			<a href="#" class="text-default font-weight-semibold">Alan
																				Macedo</a>

																		</div>
																	</div></td>

																<td>Hotel</td>
																<td>Abc Deal</td>
																<td><span class="badge bg-danger">Rejected</span></td>
																<td>ABC</td>
																<td>10/10/2019</td>

															</tr>


															<tr>
																<td>

																	<div class="form-check">
																		<label class="form-check-label">  2
																		</label>
																	</div>


																</td>
																<td><div class="d-flex align-items-center">
																		<div class="mr-3">
																			<a href="#"> <img
																				src="${pageContext.request.contextPath}/resources/assets/images/8.jpg"
																				class="rounded-circle mr-2" height="34" alt="">
																			</a>
																		</div>
																		<div>
																			<a href="#" class="text-default font-weight-semibold">Robert
																				Hauber</a>

																		</div>
																	</div></td>

																<td>Hotel</td>
																<td>Abc Deal</td>
																<td> <span class="badge bg-success">Done</span></td>
																<td>ABC</td>
																<td>10/10/2019</td>

															</tr>

															<tr>
																<td>

																	<div class="form-check">
																		<label class="form-check-label">  3
																		</label>
																	</div>


																</td>
																<td><div class="d-flex align-items-center">
																		<div class="mr-3">
																			<a href="#"> <img
																				src="${pageContext.request.contextPath}/resources/assets/images/8.jpg"
																				class="rounded-circle mr-2" height="34" alt="">
																			</a>
																		</div>
																		<div>
																			<a href="#" class="text-default font-weight-semibold">Chris
																				Macintyre</a>

																		</div>
																	</div></td>

																<td>Hotel</td>
																<td>Abc Deal</td>
																<td> <span class="badge bg-blue">Pending</span></td>
																<td>ABC</td>
																<td>10/10/2019</td>

															</tr>


															<tr>
																<td>

																	<div class="form-check">
																		<label class="form-check-label">  4
																		</label>
																	</div>


																</td>
																<td><div class="d-flex align-items-center">
																		<div class="mr-3">
																			<a href="#"> <img
																				src="${pageContext.request.contextPath}/resources/assets/images/8.jpg"
																				class="rounded-circle mr-2" height="34" alt="">
																			</a>
																		</div>
																		<div>
																			<a href="#" class="text-default font-weight-semibold">Brett
																				Castellano</a>

																		</div>
																	</div></td>

																<td>Hotel</td>
																<td>Abc Deal</td>
																<td> <span class="badge bg-blue">Pending</span></td>
																<td>ABC</td>
																<td>10/10/2019</td>

															</tr>

															<tr>
																<td>

																	<div class="form-check">
																		<label class="form-check-label"> 5
																		</label>
																	</div>


																</td>
																<td><div class="d-flex align-items-center">
																		<div class="mr-3">
																			<a href="#"> <img
																				src="${pageContext.request.contextPath}/resources/assets/images/8.jpg"
																				class="rounded-circle mr-2" height="34" alt="">
																			</a>
																		</div>
																		<div>
																			<a href="#" class="text-default font-weight-semibold">Roxanne
																				Forbes</a>

																		</div>
																	</div></td>

																<td>Hotel</td>
																<td>Abc Deal</td>
																<td> <span class="badge bg-blue">Pending</span></td>
																<td>ABC</td>
																<td>10/10/2019</td>

															</tr>


														</tbody>
													</table>
												</div>


											</div>



											<div id="tabs-basic-4">

												<div class="table-responsive">
													<table
														class="table text-nowrap datatable-highlight1 datatable-button-html5-basic  datatable-button-print-columns1"
														id="printtable1">
														<thead>
															<tr class="bg-blue">
																<th>Request ID</th>
																<th class="text-center">Client</th>
																<th>Property Type</th>
																<th>Deal Name</th>
																<th>Request Status</th>
																<th>Received From</th>
																<th>Date</th>

															</tr>
														</thead>
														<tbody>

															<tr>
																<td>

																	<div class="form-check">
																		<label class="form-check-label">  1
																		</label>
																	</div>


																</td>
																<td><div class="d-flex align-items-center">
																		<div class="mr-3">
																			<a href="#"> <img
																				src="${pageContext.request.contextPath}/resources/assets/images/8.jpg"
																				class="rounded-circle mr-2" height="34" alt="">
																			</a>
																		</div>
																		<div>
																			<a href="#" class="text-default font-weight-semibold">Alan
																				Macedo</a>

																		</div>
																	</div></td>

																<td>Hotel</td>
																<td>Abc Deal</td>
																<td> <span class="badge bg-blue">Pending</span></td>
																<td>ABC</td>
																<td>10/10/2019</td>

															</tr>


															<tr>
																<td>

																	<div class="form-check">
																		<label class="form-check-label">  2
																		</label>
																	</div>


																</td>
																<td><div class="d-flex align-items-center">
																		<div class="mr-3">
																			<a href="#"> <img
																				src="${pageContext.request.contextPath}/resources/assets/images/8.jpg"
																				class="rounded-circle mr-2" height="34" alt="">
																			</a>
																		</div>
																		<div>
																			<a href="#" class="text-default font-weight-semibold">Robert
																				Hauber</a>

																		</div>
																	</div></td>

																<td>Hotel</td>
																<td>Abc Deal</td>
																<td> <span class="badge bg-success">Done</span></td>
																<td>ABC</td>
																<td>10/10/2019</td>

															</tr>

															<tr>
																<td>

																	<div class="form-check">
																		<label class="form-check-label">  3
																		</label>
																	</div>

																</td>
																<td><div class="d-flex align-items-center">
																		<div class="mr-3">
																			<a href="#"> <img
																				src="${pageContext.request.contextPath}/resources/assets/images/8.jpg"
																				class="rounded-circle mr-2" height="34" alt="">
																			</a>
																		</div>
																		<div>
																			<a href="#" class="text-default font-weight-semibold">Chris
																				Macintyre</a>

																		</div>
																	</div></td>

																<td>Hotel</td>
																<td>Abc Deal</td>
																<td> <span class="badge bg-blue">Pending</span></td>
																<td>ABC</td>
																<td>10/10/2019</td>

															</tr>


															<tr>
																<td>

																	<div class="form-check">
																		<label class="form-check-label">  4
																		</label>
																	</div>


																</td>
																<td><div class="d-flex align-items-center">
																		<div class="mr-3">
																			<a href="#"> <img
																				src="${pageContext.request.contextPath}/resources/assets/images/8.jpg"
																				class="rounded-circle mr-2" height="34" alt="">
																			</a>
																		</div>
																		<div>
																			<a href="#" class="text-default font-weight-semibold">Brett
																				Castellano</a>

																		</div>
																	</div></td>

																<td>Hotel</td>
																<td>Abc Deal</td>
																<td><span class="badge bg-danger">Rejected</span></td>
																<td>ABC</td>
																<td>10/10/2019</td>

															</tr>

															<tr>
																<td>

																	<div class="form-check">
																		<label class="form-check-label"> 5
																		</label>
																	</div>


																</td>
																<td><div class="d-flex align-items-center">
																		<div class="mr-3">
																			<a href="#"> <img
																				src="${pageContext.request.contextPath}/resources/assets/images/8.jpg"
																				class="rounded-circle mr-2" height="34" alt="">
																			</a>
																		</div>
																		<div>
																			<a href="#" class="text-default font-weight-semibold">Roxanne
																				Forbes</a>

																		</div>
																	</div></td>

																<td>Hotel</td>
																<td>Abc Deal</td>
																<td><span class="badge bg-blue">Pending</span></td>
																<td>ABC</td>
																<td>10/10/2019</td>

															</tr>


														</tbody>
													</table>
												</div>


											</div>



											<div id="tabs-basic-5">

												<div class="table-responsive">
													<table
														class="table text-nowrap datatable-highlight1 datatable-button-html5-basic  datatable-button-print-columns1"
														id="printtable1">
														<thead>
															<tr class="bg-blue">
																<th>Request ID</th>
																<th class="text-center">Client</th>
																<th>Property Type</th>
																<th>Deal Name</th>
																<th>Request Status</th>
																<th>Received From</th>
																<th>Date</th>

															</tr>
														</thead>
														<tbody>

															<tr>
																<td>

																	<div class="form-check">
																		<label class="form-check-label">  1
																		</label>
																	</div>


																</td>
																<td><div class="d-flex align-items-center">
																		<div class="mr-3">
																			<a href="#"> <img
																				src="${pageContext.request.contextPath}/resources/assets/images/8.jpg"
																				class="rounded-circle mr-2" height="34" alt="">
																			</a>
																		</div>
																		<div>
																			<a href="#" class="text-default font-weight-semibold">Alan
																				Macedo</a>

																		</div>
																	</div></td>

																<td>Hotel</td>
																<td>Abc Deal</td>
																<td><span class="badge bg-blue">Pending</span></td>
																<td>ABC</td>
																<td>10/10/2019</td>

															</tr>


															<tr>
																<td>

																	<div class="form-check">
																		<label class="form-check-label">  2
																		</label>
																	</div>


																</td>
																<td><div class="d-flex align-items-center">
																		<div class="mr-3">
																			<a href="#"> <img
																				src="${pageContext.request.contextPath}/resources/assets/images/8.jpg"
																				class="rounded-circle mr-2" height="34" alt="">
																			</a>
																		</div>
																		<div>
																			<a href="#" class="text-default font-weight-semibold">Robert
																				Hauber</a>

																		</div>
																	</div></td>

																<td>Hotel</td>
																<td>Abc Deal</td>
																<td><span class="badge bg-blue">Pending</span></td>
																<td>ABC</td>
																<td>10/10/2019</td>

															</tr>

															<tr>
																<td>

																	<div class="form-check">
																		<label class="form-check-label">  3
																		</label>
																	</div>


																</td>
																<td><div class="d-flex align-items-center">
																		<div class="mr-3">
																			<a href="#"> <img
																				src="${pageContext.request.contextPath}/resources/assets/images/8.jpg"
																				class="rounded-circle mr-2" height="34" alt="">
																			</a>
																		</div>
																		<div>
																			<a href="#" class="text-default font-weight-semibold">Chris
																				Macintyre</a>

																		</div>
																	</div></td>

																<td>Hotel</td>
																<td>Abc Deal</td>
																<td><span class="badge bg-blue">Pending</span></td>
																<td>ABC</td>
																<td>10/10/2019</td>

															</tr>


															<tr>
																<td>

																	<div class="form-check">
																		<label class="form-check-label">  4
																		</label>
																	</div>


																</td>
																<td><div class="d-flex align-items-center">
																		<div class="mr-3">
																			<a href="#"> <img
																				src="${pageContext.request.contextPath}/resources/assets/images/8.jpg"
																				class="rounded-circle mr-2" height="34" alt="">
																			</a>
																		</div>
																		<div>
																			<a href="#" class="text-default font-weight-semibold">Brett
																				Castellano</a>

																		</div>
																	</div></td>

																<td>Hotel</td>
																<td>Abc Deal</td>
																<td><span class="badge bg-blue">Pending</span></td>
																<td>ABC</td>
																<td>10/10/2019</td>

															</tr>

															<tr>
																<td>

																	<div class="form-check">
																		<label class="form-check-label">  5
																		</label>
																	</div>


																</td>
																<td><div class="d-flex align-items-center">
																		<div class="mr-3">
																			<a href="#"> <img
																				src="${pageContext.request.contextPath}/resources/assets/images/8.jpg"
																				class="rounded-circle mr-2" height="34" alt="">
																			</a>
																		</div>
																		<div>
																			<a href="#" class="text-default font-weight-semibold">Roxanne
																				Forbes</a>

																		</div>
																	</div></td>

																<td>Hotel</td>
																<td>Abc Deal</td>
																<td><span class="badge bg-blue">Pending</span></td>
																<td>ABC</td>
																<td>10/10/2019</td>

															</tr>


														</tbody>
													</table>
												</div>

											</div>

										</div>
									</div>




								</div>

							</div>
						</div>
						<!-- /post -->

					</div>
					<!-- /left content -->

				</div>
				<!-- /inner container -->


				<!-- Mini modal -->
				<div id="modal_mini" class="modal fade" tabindex="-1">
					<div class="modal-dialog modal-xs">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title">Date Filter</h5>
								<button type="button" class="close" data-dismiss="modal">&times;</button>
							</div>

							<div class="modal-body">

								<div class="form-group">
									<div class="input-group">
										<span class="input-group-prepend"> <span
											class="input-group-text"><i class="icon-calendar22"></i></span>
										</span> <input type="text" class="form-control" readonly="readonly"
											value="10/01/2019 - 10/31/2019">
									</div>
								</div>

							</div>

							<div class="modal-footer">
								<button type="button" class="btn btn-link" data-dismiss="modal">Close</button>
								<button type="button" class="btn btn-primary">Apply</button>
							</div>
						</div>
					</div>
				</div>
				<!-- /mini modal -->



				<div class="row">
					<div class="col-xl-7">

						<!-- Stacked bar chart -->
						<div class="card">
							<div class="card-header header-elements-inline">
								<h5 class="card-title">Associates Work Status</h5>
								<div class="header-elements">
									<div class="list-icons">
										<a class="list-icons-item" data-action="collapse"></a> <a
											class="list-icons-item" data-toggle="modal"
											data-action="reload" data-target="#modal_mini"></a> <a
											class="list-icons-item" data-action="remove"></a>
									</div>
								</div>
							</div>

							<div class="card-body">
								<div class="chart-container">
									<div class="chart has-fixed-height" id="bars_stacked"></div>
								</div>
							</div>
						</div>
						<!-- /stacked bar chart -->

					</div>




					<div class="col-xl-5">


						<!-- Basic pie -->
						<div class="card">
							<div class="card-header header-elements-inline">
								<h5 class="card-title">Work Status</h5>
								<div class="header-elements">
									<div class="list-icons">
										<a class="list-icons-item" data-action="collapse"></a> <a
											class="list-icons-item" data-toggle="modal"
											data-action="reload" data-target="#modal_mini"></a> <a
											class="list-icons-item" data-action="remove"></a>
									</div>
								</div>
							</div>

							<div class="card-body">
								<div class="chart-container">
									<div class="chart has-fixed-height" id="pie_basic"></div>
								</div>
							</div>
						</div>
						<!-- /basic pie -->

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
		var bars_stacked_element = document.getElementById('bars_stacked');

		// Stacked bar chart
		function barChart() {

			if (bars_stacked_element) {

				// Initialize chart
				var bars_stacked = echarts.init(bars_stacked_element);

				//
				// Chart config
				//

				// Options
				bars_stacked.setOption({

					// Global text styles
					textStyle : {
						fontFamily : 'Roboto, Arial, Verdana, sans-serif',
						fontSize : 13
					},

					// Chart animation duration
					animationDuration : 750,

					// Setup grid
					grid : {
						left : 0,
						right : 30,
						top : 35,
						bottom : 0,
						containLabel : true
					},

					// Add legend
					legend : {
						data : [ 'Done', 'In Progress', 'Alloted' ],
						itemHeight : 8,
						itemGap : 20,
						textStyle : {
							padding : [ 0, 5 ]
						}
					},

					// Add tooltip
					tooltip : {
						trigger : 'axis',
						backgroundColor : 'rgba(0,0,0,0.75)',
						padding : [ 10, 15 ],
						textStyle : {
							fontSize : 13,
							fontFamily : 'Roboto, sans-serif'
						},
						axisPointer : {
							type : 'shadow',
							shadowStyle : {
								color : 'rgba(0,0,0,0.025)'
							}
						}
					},

					// Horizontal axis
					xAxis : [ {
						type : 'value',
						axisLabel : {
							color : '#333'
						},
						axisLine : {
							lineStyle : {
								color : '#999'
							}
						},
						splitLine : {
							show : true,
							lineStyle : {
								color : '#eee',
								type : 'dashed'
							}
						}
					} ],

					// Vertical axis
					yAxis : [ {
						type : 'category',
						data : [ 'May', 'April',
								'March', 'February',
								'January' ],
						axisLabel : {
							color : '#333'
						},
						axisLine : {
							lineStyle : {
								color : '#999'
							}
						},
						splitLine : {
							show : true,
							lineStyle : {
								color : [ '#eee' ]
							}
						},
						splitArea : {
							show : true,
							areaStyle : {
								color : [ 'rgba(250,250,250,0.1)',
										'rgba(0,0,0,0.015)' ]
							}
						}
					} ],

					// Add series
					series : [ {
						name : 'Done',
						type : 'bar',
						stack : 'Total',
						itemStyle : {
							normal : {
								color : '#66bb6a',
								label : {
									show : true,
									position : 'insideRight',
									padding : [ 0, 10 ],
									fontSize : 12
								}
							}
						},
						data : [ 220, 182, 191, 234, 290 ]
					}, {
						name : 'In Progress',
						type : 'bar',
						stack : 'Total',
						itemStyle : {
							normal : {
								color : '#ef5350',
								label : {
									show : true,
									position : 'insideRight',
									padding : [ 0, 10 ],
									fontSize : 12
								}
							}
						},
						data : [ 300, 250, 350, 400, 270 ]
					}, {
						name : 'Alloted',
						type : 'bar',
						stack : 'Total',
						itemStyle : {
							normal : {
								color : '#26a69a',
								label : {
									show : true,
									position : 'insideRight',
									padding : [ 0, 10 ],
									fontSize : 12
								}
							}
						},
						data : [ 820, 832, 901, 934, 1290 ]
					} ]
				});

			}
		}
	</script>



	<script type="text/javascript">
		function pieChart() {

			var pie_basic_element = document.getElementById('pie_basic');

			// Basic pie chart
			if (pie_basic_element) {

				// Initialize chart
				var pie_basic = echarts.init(pie_basic_element);

				//
				// Chart config
				//

				// Options
				pie_basic.setOption({

					// Colors
					color : [ '#2ec7c9', '#b6a2de', '#5ab1ef', '#ffb980',
							'#d87a80', '#8d98b3', '#e5cf0d', '#97b552',
							'#95706d', '#dc69aa', '#07a2a4', '#9a7fd1',
							'#588dd5', '#f5994e', '#c05050', '#59678c',
							'#c9ab00', '#7eb00a', '#6f5553', '#c14089' ],

					// Global text styles
					textStyle : {
						fontFamily : 'Roboto, Arial, Verdana, sans-serif',
						fontSize : 13
					},

					// Add title
					title : {
						text : 'Work Status',
						subtext : 'Date - 01/10/2019 to 31/10/2019',
						left : 'center',
						textStyle : {
							fontSize : 17,
							fontWeight : 500
						},
						subtextStyle : {
							fontSize : 12
						}
					},

					// Add tooltip
					tooltip : {
						trigger : 'item',
						backgroundColor : 'rgba(0,0,0,0.75)',
						padding : [ 10, 15 ],
						textStyle : {
							fontSize : 13,
							fontFamily : 'Roboto, sans-serif'
						},
						formatter : "{a} <br/>{b}: {c} ({d}%)"
					},

					// Add legend
					legend : {
						orient : 'vertical',
						top : 'center',
						left : 0,
						data : [ 'Unassigned', 'Assigned', 'Pending',
								'Completed', 'Approved' ],
						itemHeight : 8,
						itemWidth : 8
					},

					// Add series
					series : [ {
						name : 'Browsers',
						type : 'pie',
						radius : '70%',
						center : [ '50%', '57.5%' ],
						itemStyle : {
							normal : {
								borderWidth : 1,
								borderColor : '#fff'
							}
						},
						data : [ {
							value : 335,
							name : 'Unassigned'
						}, {
							value : 310,
							name : 'Assigned'
						}, {
							value : 234,
							name : 'Pending'
						}, {
							value : 135,
							name : 'Completed'
						}, {
							value : 1548,
							name : 'Approved'
						} ]
					} ]
				});
			}

		}
	</script>











</body>
</html>