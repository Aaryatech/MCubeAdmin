<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

<jsp:include page="/WEB-INF/views/include/metacssjs.jsp"></jsp:include>
<style type="text/css">
div.card-title{
text-transform:uppercase;
font-size: medium;
}
.mb-0{
text-transform:uppercase;
font-weight: bold;
font-size: 50px;
background:rgba(0,0,0,0.6);
font-family: cursive;
text-shadow: 1px 1px 1px #000;
}
.greet{
font-weight: bold;
font-size: 25px;
}
.profile-cover-img{
 opacity: 0.5;
 background-image: url("");
}
</style>
</head>

<body >

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
					


				</div>
			</div>
			<!-- /page header -->


			<!-- Content area -->
			<div class="content">
				<!-- Form validation -->
				<div class="row">
					<div class="col-md-12">
						<!-- Title -->
						<!-- <div class="mb-3">
							<h6 class="mb-0 font-weight-semibold">Hidden labels</h6>
							<span class="text-muted d-block">Inputs with empty values</span>
						</div> -->
						<!-- /title -->


						<%-- <div class="card">
							<div class="card-header header-elements-inline">
								<div class="card-title">Welcome	
									<span class="user">${userName}</span>
								</div>
								<!-- <div class="header-elements">
									<div class="list-icons">
										<a class="list-icons-item" data-action="collapse"></a>
									</div>
								</div> -->
							</div>

						</div> --%>
						
						<!-- Cover area -->
				<div class="profile-cover">
					<div class="profile-cover-img"></div>
					<div class="media align-items-center text-center text-md-left flex-column flex-md-row m-0">
						<div class="mr-md-3 mb-2 mb-md-0">
							<!-- <a href="#" class="profile-thumb">
								<img src="../../../../global_assets/images/demo/users/face11.jpg" class="border-white rounded-circle" width="48" height="48" alt="">
							</a> -->
						</div>

						<div class="media-body text-white">
						
				    		 
				    		<h1 class="mb-0"> ${userName}</h1>
				    		<!-- <span class="d-block">UX/UI designer</span> -->
						</div>

						<!-- <div class="ml-md-3 mt-2 mt-md-0">
							<ul class="list-inline list-inline-condensed mb-0">
								<li class="list-inline-item"><a href="#" class="btn btn-light border-transparent"><i class="icon-file-picture mr-2"></i> Cover image</a></li>
								<li class="list-inline-item"><a href="#" class="btn btn-light border-transparent"><i class="icon-file-stats mr-2"></i> Statistics</a></li>
							</ul>
						</div> -->
					</div>
				</div>
				<!-- /cover area -->


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









</body>



</html>