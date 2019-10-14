<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><%@ taglib
	uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>

<jsp:include page="/WEB-INF/views/include/metacssjs.jsp"></jsp:include>


<!-- Theme JS files -->
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/pagination/bs_pagination.min.js"></script>


<!-- /theme JS files -->

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
								<td width="60%"><h2 class="card-title">
										<i class="icon-users4 " style="color: black; font-size: 25px"></i>&nbsp;&nbsp;Raw
										Data
									</h2></td>
							</tr>
						</table>

					</div>





					<div class="card-body">


						<div class="card card-body mb-3 twbs-content-separated">

							<br>

							<div class="row">


								<div class="col-md-5">

									<div class="panel panel-default card border-2 border-success">


										<img
											src="${pageContext.request.contextPath}/resources/assets/doc_type/ex1.png"
											style="width: 90%; height: 300px;" class="rounded"
											onclick="myFunction(this);">

									</div>

								</div>
								<div class="col-md-2 text-center mt-2" style="align-self: center;">

									<label class="d-block"
										style="text-align: center; font-size: x-small;">convert
										to excel</label>
									<div class="progress-bar bg-success"
										style="width: 100%; font-size: x-small;" id="3pro">100%</div>

									<ul class="fab-menu">
										<li><a href="#"
											class="fab-menu-btn btn bg-blue btn-float rounded-round btn-icon">
												<i class="fab-icon-open icon-plus3"></i> <i
												class="fab-icon-close icon-cross2"></i>
										</a></li>
									</ul>

								</div>
								<div class="col-md-5">

									<div class="panel panel-default card border-2 border-success">

										<img
											src="${pageContext.request.contextPath}/resources/assets/doc_type/ex1.png"
											style="width: 90%; height: 300px;" class="rounded"
											onclick="myFunction(this);">

									</div>

								</div>





							</div>



						</div>
						<ul
							class="pagination-separated justify-content-center twbs-separated"></ul>



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







	<script type="text/javascript">
		// Separated style
		$('.twbs-separated').twbsPagination({
			totalPages : 3,
			visiblePages : 3,
			prev : 'Prev',
			first : null,
			last : null,
			onPageClick : function(event, page) {
				/* $('.twbs-content-separated').text(
						'Page #' + page + ' content');
				 */
				if (page == 1) {
					alert("1");
				} else if (page == 2) {
					alert("2");
				} else if (page == 3) {
					alert("3");
				}

			}
		});
	</script>

</body>
</html>