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

<%-- <script
	src="${pageContext.request.contextPath}/resources/global_assets/js/demo_pages/charts/echarts/bars_tornados.js"></script> --%>
<!-- /theme JS files -->

<!-- Theme JS files -->
<%-- <script
	src="${pageContext.request.contextPath}/resources/global_assets/js/demo_pages/charts/echarts/pies_donuts.js"></script> --%>
<!-- /theme JS files -->



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
<body>

	<style type="text/css">
body {
	font-size: 0.9rem;
}

.form-control {
	font-size: 0.9rem;
}

.bg-indigo {
	background-color: #3F51B5 !important;
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
			<div class="content" style="padding: 0.7rem 0.7rem;">




				<div class="row">

					<div class="col-sm-6 col-xl-2" id="1" onclick="dashMenuShow(1)">
						<div class="card card-body bg-blue-400 has-bg-image"
							style="margin-bottom: 0.25rem;">
							<div class="media">
								<div class="media-body">
									<h3 class="mb-0">16</h3>
									<span class="text-uppercase font-size-xs">HOTEL</span>
								</div>

								<div class="ml-3 align-self-center">
									<i class="icon-bed2 icon-2x opacity-75"></i>
								</div>
							</div>
						</div>
						<hr id="1pro"
							style="display: none; margin-top: 0rem; margin-bottom: 0.3rem; border-color: #00BCD4; border-width: medium;">
						<!-- <div class="card"
							style="width: 100%; display: none;" id="1pro">a</div> -->
					</div>

					<div class="col-sm-6 col-xl-2" id="2" onclick="dashMenuShow(2)">
						<div class="card card-body bg-danger-400 has-bg-image"
							style="margin-bottom: 0.25rem;">
							<div class="media">
								<div class="media-body">
									<h3 class="mb-0">256</h3>
									<span class="text-uppercase font-size-xs">FAMILY</span>
								</div>

								<div class="ml-3 align-self-center">
									<i class="icon-users icon-2x opacity-75"></i>
								</div>
							</div>
						</div>

						<hr id="2pro"
							style="display: none; margin-top: 0rem; margin-bottom: 0.3rem; border-color: #F44336; border-width: medium;">

						<!-- <div class="progress-bar bg-danger"
							style="width: 100%; display: none;" id="2pro">FAMILY</div> -->
					</div>

					<div class="col-sm-6 col-xl-2" id="3" onclick="dashMenuShow(3)">
						<div class="card card-body bg-success-400 has-bg-image"
							style="margin-bottom: 0.25rem;">
							<div class="media">
								<div class="media-body">
									<h3 class="mb-0">83</h3>
									<span class="text-uppercase font-size-xs">RETAIL</span>
								</div>

								<div class="ml-3 align-self-center">
									<i class="icon-store icon-2x opacity-75"></i>
								</div>
							</div>
						</div>

						<hr id="3pro"
							style="display: none; margin-top: 0rem; margin-bottom: 0.3rem; border-color: #4CAF50; border-width: medium;">

						<!-- <div class="progress-bar bg-success"
							style="width: 100%; display: none;" id="3pro">RETAIL</div> -->
					</div>

					<div class="col-sm-6 col-xl-2" id="4" onclick="dashMenuShow(4)">
						<div class="card card-body bg-indigo-400 has-bg-image"
							style="margin-bottom: 0.25rem;">
							<div class="media">
								<div class="media-body">
									<h3 class="mb-0">183</h3>
									<span class="text-uppercase font-size-xs">INDUSTRIAL</span>
								</div>

								<div class="ml-3 align-self-center">
									<i class="icon-office icon-2x opacity-75"></i>
								</div>
							</div>
						</div>

						<hr id="4pro"
							style="display: none; margin-top: 0rem; margin-bottom: 0.3rem; border-color: #3F51B5; border-width: medium;">

						<!-- <div class="progress-bar bg-indigo"
							style="width: 100%; display: none;" id="4pro">INDUSTRIAL</div> -->
					</div>

					<div class="col-sm-6 col-xl-2" id="5" onclick="dashMenuShow(5)">
						<div class="card card-body bg-orange-400 has-bg-image"
							style="margin-bottom: 0.25rem;">
							<div class="media">
								<div class="media-body">
									<h3 class="mb-0">803</h3>
									<span class="text-uppercase font-size-xs">OFFICE</span>
								</div>

								<div class="ml-3 align-self-center">
									<i class="icon-briefcase icon-2x opacity-75"></i>
								</div>
							</div>
						</div>

						<hr id="5pro"
							style="display: none; margin-top: 0rem; margin-bottom: 0.3rem; border-color: #FF9800; border-width: medium;">

						<!-- <div class="progress-bar bg-orange"
							style="width: 100%; display: none;" id="5pro">OFFICE</div> -->
					</div>

					<div class="col-sm-6 col-xl-2" id="6" onclick="dashMenuShow(6)">
						<div class="card card-body bg-pink-400 has-bg-image"
							style="margin-bottom: 0.25rem;">
							<div class="media">
								<div class="media-body">
									<h3 class="mb-0">100</h3>
									<span class="text-uppercase font-size-xs">OTHER</span>
								</div>

								<div class="ml-3 align-self-center">
									<i class="icon-clippy icon-2x opacity-75"></i>
								</div>
							</div>
						</div>

						<hr id="6pro"
							style="display: none; margin-top: 0rem; margin-bottom: 0.3rem; border-color: #E91E63; border-width: medium;">

						<!-- <div class="progress-bar bg-pink"
							style="width: 100%; display: none;" id="6pro">OTHER</div> -->
					</div>


				</div>



				<!-- Post -->
				<div class="card">
					<div class="card-body">
						<div class="mb-4" id="tablediv">


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
																<option value="CO">Hotel</option>
																<option value="ID">Family</option>
																<option value="WY">Retail</option>
																<option value="WY">Industrial</option>
																<option value="OF">Office</option>
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
																</span> <input type="text" class="form-control daterange-basic"
																	value="10/01/2019 - 10/31/2019">
															</div>
														</div>
													</div>

													<div class="col-md-3">
														<div class="form-group">

															<button type="button" class="btn btn-primary"
																data-toggle="collapse" data-target="#filter-panel">
																<span class="glyphicon glyphicon-cog"></span> Apply

															</button>
															&nbsp;
															<button type="button" class="btn btn-dark"
																data-toggle="collapse" data-target="#filter-panel">
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

							<div class="row">
								<div class="form-group" style="margin: 10px;">
									<button type="button" class="btn btn-primary"
										data-toggle="collapse" data-target="#filter-panel">
										<span class="glyphicon glyphicon-cog"></span> Advanced Filter
									</button>
								</div>

								<div id="div1" style="margin-left: 10px;">
									<div class="row">
										<div class="form-group" style="margin: 10px;">
											<button type="button" class="btn btn-primary"
												data-toggle="modal" data-target="#modal_default"
												id="assign1">
												<span class="glyphicon glyphicon-cog"></span> Assign To
												Associate
											</button>
										</div>

										<div class="form-group" style="margin: 10px; ">
											<button type="button" class="btn btn-primary" id="reassign"
												onclick="reassign()">
												<span class="glyphicon glyphicon-cog"></span> Re-Assign
												Associate
											</button>
										</div>
									</div>
								</div>

								<div class="form-group" style="margin: 10px;">
									<button type="button" class="btn btn-primary"
										data-toggle="modal" data-target="#modal_default2" id="assign2" style="display: none;">
										<span class="glyphicon glyphicon-cog"></span> Assign To
										Associate
									</button>
								</div>

								<div class="form-group" style="margin: 10px;">
									<button type="button" class="btn btn-primary" id="unassign"
										onclick="unassign()" style="display: none;">
										<span class="glyphicon glyphicon-cog"></span> Unassigned List
									</button>
								</div>


							</div>

							<div class="table-responsive" id="table1">
								<table
									class="table text-nowrap datatable-highlight1 datatable-button-html5-basic  datatable-button-print-columns1 table-hover"
									id="printtable1">

									<thead>
										<tr class="bg-blue">

											<th>Request ID</th>
											<th class="text-center">Assigned To</th>
											<th>Property Type</th>
											<th>Client</th>
											<th>Deal Name</th>
											<th>Received From</th>
											<th>Date</th>
											<th>Request Status</th>
										</tr>
									</thead>
									<tbody>

										<tr>
											<td><div class="form-check">
													<label class="form-check-label"> <input
														type="checkbox" class="form-check-input-styled" data-fouc>
														1
													</label>
												</div></td>
											<td class="text-center"><div>
													<a href="#" data-popup="tooltip" title="Not Assigned"
														data-placement="right"> <img
														src="${pageContext.request.contextPath}/resources/assets/images/profile_default.png"
														class="rounded-circle mr-2 " height="34" alt="">
													</a>
												</div></td>

											<td>Hotel</td>
											<td>Alan Macedo</td>
											<td>Abc Deal</td>
											<td>ABC</td>
											<td>10/10/2019</td>
											<td><span class="badge bg-grey-400">Unassigned</span></td>

										</tr>


										<tr>
											<td>

												<div class="form-check">
													<label class="form-check-label"> <input
														type="checkbox" class="form-check-input-styled" data-fouc>
														2
													</label>
												</div>


											</td>
											<td class="text-center"><div>
													<a href="#" data-popup="tooltip" title="Not Assigned"
														data-placement="right"> <img
														src="${pageContext.request.contextPath}/resources/assets/images/profile_default.png"
														class="rounded-circle mr-2" height="34" alt="">
													</a>
												</div></td>

											<td>Hotel</td>
											<td>Robert Hauber</td>
											<td>Abc Deal</td>
											<td>ABC</td>
											<td>10/10/2019</td>
											<td><span class="badge bg-grey-400">Unassigned</span></td>


										</tr>

										<tr>
											<td>

												<div class="form-check">
													<label class="form-check-label"> <input
														type="checkbox" class="form-check-input-styled" data-fouc>
														3
													</label>
												</div>


											</td>
											<td class="text-center"><div>
													<a href="#" data-popup="tooltip" title="Not Assigned"
														data-placement="right"> <img
														src="${pageContext.request.contextPath}/resources/assets/images/profile_default.png"
														class="rounded-circle mr-2" height="34" alt="">
													</a>
												</div></td>

											<td>Hotel</td>
											<td>Chris Macintyre</td>
											<td>Abc Deal</td>
											<td>ABC</td>
											<td>10/10/2019</td>
											<td><span class="badge bg-grey-400">Unassigned</span></td>


										</tr>


										<tr>
											<td>

												<div class="form-check">
													<label class="form-check-label"> 4 </label>
												</div>


											</td>
											<td class="text-center"><div>
													<a href="#" data-popup="tooltip" title="Nilesh Kedar"
														data-placement="right"> <img
														src="${pageContext.request.contextPath}/resources/assets/images/8.jpg"
														class="rounded-circle mr-2" height="34" alt="">
													</a>
												</div></td>

											<td>Hotel</td>
											<td>Brett Castellano</td>
											<td>Abc Deal</td>
											<td>ABC</td>
											<td>10/10/2019</td>
											<td><span class="badge bg-danger">Assigned</span></td>

										</tr>

										<tr>
											<td>

												<div class="form-check">
													<label class="form-check-label"> 5 </label>
												</div>


											</td>
											<td class="text-center"><div>
													<a href="#" data-popup="tooltip" title="Nilesh Kedar"
														data-placement="right"> <img
														src="${pageContext.request.contextPath}/resources/assets/images/8.jpg"
														class="rounded-circle mr-2" height="34" alt="">
													</a>
												</div></td>

											<td>Hotel</td>
											<td>Roxanne Forbes</td>
											<td>Abc Deal</td>
											<td>ABC</td>
											<td>10/10/2019</td>
											<td><span class="badge bg-danger">Assigned</span></td>
										</tr>

									</tbody>
								</table>
							</div>


							<div class="table-responsive" id="table2" style="display: none;">
								<table
									class="table text-nowrap datatable-highlight1 datatable-button-html5-basic  datatable-button-print-columns1 table-hover"
									id="printtable1">

									<thead>
										<tr class="bg-blue">

											<th>Request ID</th>
											<th class="text-center">Assigned To</th>
											<th>Property Type</th>
											<th>Client</th>
											<th>Deal Name</th>
											<th>Received From</th>
											<th>Date</th>
											<th>Assigned Date</th>
											<th>Request Status</th>
										</tr>
									</thead>
									<tbody>

										<tr>
											<td><div class="form-check">
													<label class="form-check-label"> <input
														type="checkbox" class="form-check-input-styled" data-fouc>
														1
													</label>
												</div></td>
											<td class="text-center"><div>

													<a href="#" data-popup="tooltip" title="Nilesh Kedar"
														data-placement="right"> <img
														src="${pageContext.request.contextPath}/resources/assets/images/8.jpg"
														class="rounded-circle mr-2" height="34" alt="">
													</a>

												</div></td>

											<td>Hotel</td>
											<td>Alan Macedo</td>
											<td>Abc Deal</td>
											<td>ABC</td>
											<td>10/10/2019</td>
											<td>10/10/2019</td>
											<td><span class="badge bg-danger">Assigned</span></td>

										</tr>


										<tr>
											<td><div class="form-check">
													<label class="form-check-label"> <input
														type="checkbox" class="form-check-input-styled" data-fouc>
														2
													</label>
												</div></td>
											<td class="text-center"><div>

													<a href="#" data-popup="tooltip" title="Nilesh Kedar"
														data-placement="right"> <img
														src="${pageContext.request.contextPath}/resources/assets/images/8.jpg"
														class="rounded-circle mr-2" height="34" alt="">
													</a>

												</div></td>

											<td>Hotel</td>
											<td>Robert Hauber</td>
											<td>Abc Deal</td>
											<td>ABC</td>
											<td>10/10/2019</td>
											<td>10/10/2019</td>
											<td><span class="badge bg-danger">Assigned</span></td>

										</tr>

										<tr>
											<td><div class="form-check">
													<label class="form-check-label"> <input
														type="checkbox" class="form-check-input-styled" data-fouc>
														3
													</label>
												</div></td>
											<td class="text-center"><div>

													<a href="#" data-popup="tooltip" title="Nilesh Kedar"
														data-placement="right"> <img
														src="${pageContext.request.contextPath}/resources/assets/images/8.jpg"
														class="rounded-circle mr-2" height="34" alt="">
													</a>

												</div></td>

											<td>Hotel</td>
											<td>Chris Macintyre</td>
											<td>Abc Deal</td>
											<td>ABC</td>
											<td>10/10/2019</td>
											<td>10/10/2019</td>
											<td><span class="badge bg-danger">Assigned</span></td>

										</tr>


										<tr>
											<td><div class="form-check">
													<label class="form-check-label"> <input
														type="checkbox" class="form-check-input-styled" data-fouc>
														4
													</label>
												</div></td>
											<td class="text-center"><div>

													<a href="#" data-popup="tooltip" title="Nilesh Kedar"
														data-placement="right"> <img
														src="${pageContext.request.contextPath}/resources/assets/images/8.jpg"
														class="rounded-circle mr-2" height="34" alt="">
													</a>

												</div></td>

											<td>Hotel</td>
											<td>Brett Castellano</td>
											<td>Abc Deal</td>
											<td>ABC</td>
											<td>10/10/2019</td>
											<td>10/10/2019</td>
											<td><span class="badge bg-danger">Assigned</span></td>

										</tr>

										<tr>
											<td><div class="form-check">
													<label class="form-check-label"> <input
														type="checkbox" class="form-check-input-styled" data-fouc>
														5
													</label>
												</div></td>
											<td class="text-center"><div>

													<a href="#" data-popup="tooltip" title="Nilesh Kedar"
														data-placement="right"> <img
														src="${pageContext.request.contextPath}/resources/assets/images/8.jpg"
														class="rounded-circle mr-2" height="34" alt="">
													</a>

												</div></td>

											<td>Hotel</td>
											<td>Roxanne Forbes</td>
											<td>Abc Deal</td>
											<td>ABC</td>
											<td>10/10/2019</td>
											<td>10/10/2019</td>
											<td><span class="badge bg-danger">Assigned</span></td>

										</tr>
									</tbody>
								</table>
							</div>


							<!-- Basic modal -->
							<div id="modal_default" class="modal fade" tabindex="-1">
								<div class="modal-dialog modal-full">
									<div class="modal-content">
										<div class="modal-header">
											<h2 class="modal-title">
												<i class="icon-list-unordered " style="font-size: 30px"></i>&nbsp;Assign
												Associate
											</h2>
											<button type="button" class="close" data-dismiss="modal">&times;</button>
										</div>

										<div class="modal-body">

											<div class="form-group">
												<div class="row">
													<div class="col-md-2" style="align-self: center;">
														<label class="d-block">Associate Name :</label>
													</div>

													<div class="col-md-4">
														<select class="form-control select" data-fouc>
															<option value="AZ">Alan Macedo</option>
															<option value="CO">Robert Hauber</option>
															<option value="ID">Chris Macintyre</option>
															<option value="WY">Brett Castellano</option>
															<option value="WY">Roxanne Forbes</option>
														</select>
													</div>
													<div class="col-md-6">

														<!-- Numbers -->
														<div class="card-body py-0">
															<div class="row text-center">
																<div class="col-3">
																	<div class="mb-3">
																		<h5 class="font-weight-semibold mb-0">150</h5>
																		<span class="badge bg-teal-400">Alloted</span>
																	</div>
																</div>

																<div class="col-3">
																	<div class="mb-3">
																		<h5 class="font-weight-semibold mb-0">100</h5>
																		<span class="badge bg-danger-400">In Progress</span>
																	</div>
																</div>

																<div class="col-3">
																	<div class="mb-3">
																		<h5 class="font-weight-semibold mb-0">50</h5>
																		<span class="badge bg-green-400">Completed</span>
																	</div>
																</div>
																<div class="col-3"></div>
															</div>
															<!-- /numbers -->

														</div>
													</div>
												</div>
											</div>


											<div class="table-responsive">
												<table
													class="table text-nowrap datatable-highlight1 datatable-button-html5-basic  datatable-button-print-columns1"
													id="printtable1">
													<thead>
														<tr class="bg-blue">

															<th>Request ID</th>
															<th>Property Type</th>
															<th>Client</th>
															<th>Deal Name</th>
															<th>Received From</th>
															<th>Date</th>
														</tr>
													</thead>
													<tbody>

														<tr>
															<td><div class="form-check">
																	<label class="form-check-label"> 1 </label>
																</div></td>
															<td>Hotel</td>
															<td>Alan Macedo</td>
															<td>Abc Deal</td>
															<td>ABC</td>
															<td>10/10/2019</td>
														</tr>

														<tr>
															<td>
																<div class="form-check">
																	<label class="form-check-label"> 2 </label>
																</div>
															</td>
															<td>Hotel</td>
															<td>Robert Hauber</td>
															<td>Abc Deal</td>
															<td>ABC</td>
															<td>10/10/2019</td>
														</tr>
													</tbody>
												</table>

											</div>



										</div>

										<div class="modal-footer">
											<button type="button" class="btn btn-link"
												data-dismiss="modal">Close</button>
											<button type="button" class="btn btn-primary"
												data-dismiss="modal">Assign</button>
										</div>
									</div>
								</div>
							</div>
							<!-- /basic modal -->


							<!-- Basic modal   RE_ASSIGN-->
							<div id="modal_default2" class="modal fade" tabindex="-1">
								<div class="modal-dialog modal-full">
									<div class="modal-content">
										<div class="modal-header">
											<h2 class="modal-title">
												<i class="icon-list-unordered " style="font-size: 30px"></i>&nbsp;Re-Assign
												Associate
											</h2>
											<button type="button" class="close" data-dismiss="modal">&times;</button>
										</div>

										<div class="modal-body">

											<div class="form-group">
												<div class="row">
													<div class="col-md-2" style="align-self: center;">
														<label class="d-block">Associate Name :</label>
													</div>

													<div class="col-md-4">
														<select class="form-control select" data-fouc>
															<option value="AZ">Alan Macedo</option>
															<option value="CO">Robert Hauber</option>
															<option value="ID">Chris Macintyre</option>
															<option value="WY">Brett Castellano</option>
															<option value="WY">Roxanne Forbes</option>
														</select>
													</div>
													<div class="col-md-6">

														<!-- Numbers -->
														<div class="card-body py-0">
															<div class="row text-center">
																<div class="col-3">
																	<div class="mb-3">
																		<h5 class="font-weight-semibold mb-0">150</h5>
																		<span class="badge bg-teal-400">Alloted</span>
																	</div>
																</div>

																<div class="col-3">
																	<div class="mb-3">
																		<h5 class="font-weight-semibold mb-0">100</h5>
																		<span class="badge bg-danger-400">In Progress</span>
																	</div>
																</div>

																<div class="col-3">
																	<div class="mb-3">
																		<h5 class="font-weight-semibold mb-0">50</h5>
																		<span class="badge bg-green-400">Completed</span>
																	</div>
																</div>
																<div class="col-3"></div>
															</div>
															<!-- /numbers -->

														</div>
													</div>
												</div>

												<div class="row">
													<div class="col-2">
														<label class="d-block">Reason :</label>
													</div>
													<div class="col-4">
														<input type="text" class="form-control  "
															placeholder=" Reason" autocomplete="off"
															onchange="trim(this)">
													</div>
													<div class="col-6"></div>

												</div>


												<div class="table-responsive">
													<table
														class="table text-nowrap datatable-highlight1 datatable-button-html5-basic  datatable-button-print-columns1"
														id="printtable1">
														<thead>
															<tr class="bg-blue">

																<th>Request ID</th>
																<th class="text-center">Assigned To</th>
																<th>Property Type</th>
																<th>Client</th>
																<th>Deal Name</th>
																<th>Received From</th>
																<th>Date</th>
																<th>Assigned Date</th>
																<th>Reason</th>

															</tr>
														</thead>
														<tbody>

															<tr>
																<td><div class="form-check">
																		<label class="form-check-label"> 1 </label>
																	</div></td>
																<td class="text-center"><div
																		class="d-flex align-items-center">
																		<a href="#" data-popup="tooltip" title="Nilesh Kedar"
																			data-placement="right"> <img
																			src="${pageContext.request.contextPath}/resources/assets/images/8.jpg"
																			class="rounded-circle mr-2" height="34" alt="">
																		</a>
																	</div></td>

																<td>Hotel</td>
																<td>Alan Macedo</td>
																<td>Abc Deal</td>
																<td>ABC</td>
																<td>10/10/2019</td>
																<td>10/10/2019</td>
																<td><input type="text" class="form-control  "
																	placeholder=" Reason" autocomplete="off"
																	onchange="trim(this)"></td>
															</tr>

															<tr>
																<td>
																	<div class="form-check">
																		<label class="form-check-label"> 2 </label>
																	</div>
																</td>
																<td class="text-center"><div
																		class="d-flex align-items-center">
																		<a href="#" data-popup="tooltip" title="Nilesh Kedar"
																			data-placement="right"> <img
																			src="${pageContext.request.contextPath}/resources/assets/images/8.jpg"
																			class="rounded-circle mr-2" height="34" alt="">
																		</a>
																	</div></td>
																<td>Hotel</td>
																<td>Robert Hauber</td>
																<td>Abc Deal</td>
																<td>ABC</td>
																<td>10/10/2019</td>
																<td>10/10/2019</td>
																<td><input type="text" class="form-control  "
																	placeholder=" Reason" autocomplete="off"
																	onchange="trim(this)"></td>
															</tr>
														</tbody>
													</table>

												</div>



											</div>

											<div class="modal-footer">
												<button type="button" class="btn btn-link"
													data-dismiss="modal">Close</button>
												<button type="button" class="btn btn-primary"
													data-dismiss="modal">Assign</button>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- /basic modal   RE_ASSIGN-->




						</div>

					</div>
				</div>
				<!-- /post -->


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
								<h5 class="card-title">Total Work Status</h5>
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

		$(document)
				.ready(
						function() {

							if (bars_stacked_element) {

								// Initialize chart
								var bars_stacked = echarts
										.init(bars_stacked_element);

								//
								// Chart config
								//

								// Options
								bars_stacked
										.setOption({

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
												data : [ 'Done', 'In Progress',
														'Alloted' ],
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
												data : [ 'Alan Macedo',
														'Robert Hauber',
														'Chris Macintyre',
														'Brett Castellano',
														'Roxanne Forbes' ],
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
														color : [
																'rgba(250,250,250,0.1)',
																'rgba(0,0,0,0.015)' ]
													}
												}
											} ],

											// Add series
											series : [
													{
														name : 'Done',
														type : 'bar',
														stack : 'Total',
														itemStyle : {
															normal : {
																color : '#66bb6a',
																label : {
																	show : true,
																	position : 'insideRight',
																	padding : [
																			0,
																			10 ],
																	fontSize : 12
																}
															}
														},
														data : [ 220, 182, 191,
																234, 290 ]
													},
													{
														name : 'In Progress',
														type : 'bar',
														stack : 'Total',
														itemStyle : {
															normal : {
																color : '#ef5350',
																label : {
																	show : true,
																	position : 'insideRight',
																	padding : [
																			0,
																			10 ],
																	fontSize : 12
																}
															}
														},
														data : [ 300, 250, 350,
																400, 270 ]
													},
													{
														name : 'Alloted',
														type : 'bar',
														stack : 'Total',
														itemStyle : {
															normal : {
																color : '#26a69a',
																label : {
																	show : true,
																	position : 'insideRight',
																	padding : [
																			0,
																			10 ],
																	fontSize : 12
																}
															}
														},
														data : [ 820, 832, 901,
																934, 1290 ]
													} ]
										});

							}
						});
	</script>



	<script type="text/javascript">
		$(document)
				.ready(
						function() {

							var pie_basic_element = document
									.getElementById('pie_basic');

							// Basic pie chart
							if (pie_basic_element) {

								// Initialize chart
								var pie_basic = echarts.init(pie_basic_element);

								//
								// Chart config
								//

								// Options
								pie_basic
										.setOption({

											// Colors
											color : [ '#2ec7c9', '#b6a2de',
													'#5ab1ef', '#ffb980',
													'#d87a80', '#8d98b3',
													'#e5cf0d', '#97b552',
													'#95706d', '#dc69aa',
													'#07a2a4', '#9a7fd1',
													'#588dd5', '#f5994e',
													'#c05050', '#59678c',
													'#c9ab00', '#7eb00a',
													'#6f5553', '#c14089' ],

											// Global text styles
											textStyle : {
												fontFamily : 'Roboto, Arial, Verdana, sans-serif',
												fontSize : 13
											},

											// Add title
											title : {
												text : 'Total Work Status',
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
												data : [ 'Unassigned',
														'Assigned', 'Pending',
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

						});
	</script>

	<!-- <script type="text/javascript">
		$(document).ready(function() {
			var button = document.getElementById('hiddenButton');
			button.click();
		});
	</script> -->


	<script type="text/javascript">
		function dashMenuShow(value, clr) {

			document.getElementById("1pro").style.display = "none";
			document.getElementById("2pro").style.display = "none";
			document.getElementById("3pro").style.display = "none";
			document.getElementById("4pro").style.display = "none";
			document.getElementById("5pro").style.display = "none";
			document.getElementById("6pro").style.display = "none";

			document.getElementById(value + "pro").style.display = "block";

		}
	</script>

	<script type="text/javascript">
		function reassign() {
			document.getElementById("table1").style.display = "none";
			document.getElementById("table2").style.display = "block";
			//document.getElementById("reassign").style.display = "none";
			document.getElementById("unassign").style.display = "block";
			//document.getElementById("assign1").style.display = "none";
			document.getElementById("assign2").style.display = "block";
			document.getElementById("div1").style.display = "none";

		}
	</script>

	<script type="text/javascript">
		function unassign() {
			document.getElementById("table1").style.display = "block";
			document.getElementById("table2").style.display = "none";
			//document.getElementById("reassign").style.display = "block";
			document.getElementById("unassign").style.display = "none";
			//document.getElementById("assign1").style.display = "block";
			document.getElementById("assign2").style.display = "none";
			document.getElementById("div1").style.display = "block";
		}
	</script>
</body>
</html>