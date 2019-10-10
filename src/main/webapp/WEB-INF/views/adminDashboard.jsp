<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
			<div class="page-header page-header-light">


				<div
					class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
					<div class="d-flex">
						<div class="breadcrumb">
							<a href="index.html" class="breadcrumb-item"><i
								class="icon-home2 mr-2"></i> Home</a> <a href="blog_single.html"
								class="breadcrumb-item">Blog</a> <span
								class="breadcrumb-item active">Single</span>
						</div>

						<a href="#" class="header-elements-toggle text-default d-md-none"><i
							class="icon-more"></i></a>
					</div>

					<div class="header-elements d-none">
						<div class="breadcrumb justify-content-center">
							<a href="#" class="breadcrumb-elements-item"> <i
								class="icon-comment-discussion mr-2"></i> Support
							</a>

							<div class="breadcrumb-elements-item dropdown p-0">
								<a href="#" class="breadcrumb-elements-item dropdown-toggle"
									data-toggle="dropdown"> <i class="icon-gear mr-2"></i>
									Settings
								</a>

								<div class="dropdown-menu dropdown-menu-right">
									<a href="#" class="dropdown-item"><i class="icon-user-lock"></i>
										Account security</a> <a href="#" class="dropdown-item"><i
										class="icon-statistics"></i> Analytics</a> <a href="#"
										class="dropdown-item"><i class="icon-accessibility"></i>
										Accessibility</a>
									<div class="dropdown-divider"></div>
									<a href="#" class="dropdown-item"><i class="icon-gear"></i>
										All settings</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /page header -->


			<!-- Content area -->
			<div class="content">

				<!-- Inner container -->
				<div class="d-flex align-items-start flex-column flex-md-row">

					<!-- Left content -->
					<div class="w-100 overflow-auto order-2 order-md-1">

						<!-- Post -->
						<div class="card">
							<div class="card-body">
								<div class="mb-4">

									<div class="table-responsive">
										<table
											class="table text-nowrap datatable-highlight1 datatable-button-html5-basic  datatable-button-print-columns1"
											id="printtable1">
											<thead>
												<tr class="bg-blue">
													<th>Request ID</th>
													<th>Client</th>
													<th>Property Type</th>
													<th>Deal Name</th>
													<th>Request Status</th>
													<th>Date</th>

												</tr>
											</thead>
											<tbody>

												<tr>
													<td>1</td>
													<td><div class="d-flex align-items-center">
															<div class="mr-3">
																<a href="#"> <img
																	src="${pageContext.request.contextPath}/resources/assets/images/8.jpg"
																	class="rounded-circle mr-2" height="34" alt="">
																</a>
															</div>
															<div>
																<a href="#" class="text-default font-weight-semibold">Alan Macedo</a>

															</div>
														</div></td>

													<td>Hotel</td>
													<td>Abc Deal</td>
													<td>Unassigned</td>
													<td>10/10/2019</td>

												</tr>


												<tr>
													<td>2</td>
													<td><div class="d-flex align-items-center">
															<div class="mr-3">
																<a href="#"> <img
																	src="${pageContext.request.contextPath}/resources/assets/images/8.jpg"
																	class="rounded-circle mr-2" height="34" alt="">
																</a>
															</div>
															<div>
																<a href="#" class="text-default font-weight-semibold">Robert Hauber</a>

															</div>
														</div></td>

													<td>Hotel</td>
													<td>Abc Deal</td>
													<td>Unassigned</td>
													<td>10/10/2019</td>

												</tr>

												<tr>
													<td>3</td>
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
													<td>Unassigned</td>
													<td>10/10/2019</td>

												</tr>


												<tr>
													<td>4</td>
													<td><div class="d-flex align-items-center">
															<div class="mr-3">
																<a href="#"> <img
																	src="${pageContext.request.contextPath}/resources/assets/images/8.jpg"
																	class="rounded-circle mr-2" height="34" alt="">
																</a>
															</div>
															<div>
																<a href="#" class="text-default font-weight-semibold">Brett Castellano</a>

															</div>
														</div></td>

													<td>Hotel</td>
													<td>Abc Deal</td>
													<td>Unassigned</td>
													<td>10/10/2019</td>

												</tr>

												<tr>
													<td>5</td>
													<td><div class="d-flex align-items-center">
															<div class="mr-3">
																<a href="#"> <img
																	src="${pageContext.request.contextPath}/resources/assets/images/8.jpg"
																	class="rounded-circle mr-2" height="34" alt="">
																</a>
															</div>
															<div>
																<a href="#" class="text-default font-weight-semibold">Roxanne Forbes</a>

															</div>
														</div></td>

													<td>Hotel</td>
													<td>Abc Deal</td>
													<td>Unassigned</td>
													<td>10/10/2019</td>

												</tr>


											</tbody>
										</table>
									</div>

								</div>

							</div>
						</div>
						<!-- /post -->

					</div>
					<!-- /left content -->


					

				</div>
				<!-- /inner container -->

			</div>
			<!-- /content area -->


			<!-- Footer -->
			<div class="navbar navbar-expand-lg navbar-light">
				<div class="text-center d-lg-none w-100">
					<button type="button" class="navbar-toggler dropdown-toggle"
						data-toggle="collapse" data-target="#navbar-footer">
						<i class="icon-unfold mr-2"></i> Footer
					</button>
				</div>

				<div class="navbar-collapse collapse" id="navbar-footer">
					<span class="navbar-text"> &copy; 2015 - 2018. <a href="#">Limitless
							Web App Kit</a> by <a href="http://themeforest.net/user/Kopyov"
						target="_blank">Eugene Kopyov</a>
					</span>

					<ul class="navbar-nav ml-lg-auto">
						<li class="nav-item"><a href="https://kopyov.ticksy.com/"
							class="navbar-nav-link" target="_blank"><i
								class="icon-lifebuoy mr-2"></i> Support</a></li>
						<li class="nav-item"><a
							href="http://demo.interface.club/limitless/docs/"
							class="navbar-nav-link" target="_blank"><i
								class="icon-file-text2 mr-2"></i> Docs</a></li>
						<li class="nav-item"><a
							href="https://themeforest.net/item/limitless-responsive-web-application-kit/13080328?ref=kopyov"
							class="navbar-nav-link font-weight-semibold"><span
								class="text-pink-400"><i class="icon-cart2 mr-2"></i>
									Purchase</span></a></li>
					</ul>
				</div>
			</div>
			<!-- /footer -->

		</div>
		<!-- /main content -->

	</div>
	<!-- /page content -->


</body>
</html>