<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><%@ taglib
	uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>

<jsp:include page="/WEB-INF/views/include/metacssjs.jsp"></jsp:include>
<style >
/* show border around full height container */
.h-100 {
	border: 0px;
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
<div
					class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
					<div class="d-flex">
						<div class="breadcrumb">
							<a href="${pageContext.request.contextPath}/dash" class="breadcrumb-item"><i
								class="icon-home2 mr-2"></i> Dashboard</a>  
						</div>

						<a href="#" class="header-elements-toggle text-default d-md-none"><i
							class="icon-more"></i></a>



					</div>




				</div>
			<div class="content">


				<!-- Highlighting rows and columns -->
				<div class="card">
					<div class="card-header header-elements-inline">
						<h2 class="card-title">
							<i class="far fa-list-alt mr-3 fa-2x" style="color: black; font-size:25px;"></i>&nbsp;&nbsp;Raw
							Data Reconciliation

						</h2>
					</div>

					<div class="card-body">
					
					
						<div class="form-group row"
							style="background-color: #ffeead; width: 80%;">

							<label class="col-md-6" for="reqId"> Request Id : 1</label> <label
								class="col-md-6" for="clntName"> Client Name : Alan
								Macedo</label> <label class="col-md-6" for="reqId"> Property
								Type : Hotel</label> <label class="col-md-6" for="reqId">
								Document No. : D766R33/Loan NOCs</label>


						</div>


						<div class="modal-body">
						
						 
							<div class="form-group row" style=" padding-left: 40%;">
								<a href="#"><button type="button" disabled="disabled" class="btn btn-primary">1</button></a>&nbsp;&nbsp;
								<a href="#"><button type="button"   disabled="disabled" class="btn btn-primary">2</button></a>&nbsp;&nbsp;
								<a href="#"><button type="button"   class="btn btn-primary">3</button></a>&nbsp;&nbsp;
								<a href="#"><button type="button" disabled="disabled"  class="btn btn-primary">4</button></a>&nbsp;&nbsp;
							</div>
							<div  style=" padding-left: 40%;">
								<div class="col-md-2 text-center mt-2" style="align-self: center;">

									<label class="d-block"
										style="text-align: center; font-size: x-medium;">Convert
										to Mcube Template</label>
									<div class="progress-bar bg-success"
										style="width: 100%; font-size: x-medium;" id="3pro">100%</div>

									<ul class="fab-menu">
										<li><a href="#"
											>
												<i class="icon-sync " style="color: black; font-size:40px;"></i> <i
												class="fab-icon-close icon-cross2"></i>
										</a></li>
									</ul>

								</div>
								</div>
								<div class="form-group row"></div>

						<div class="form-group row">

							<div class="col-lg-5 "><h3>Validated Raw Excel Data</h3></div>
							<div class="col-lg-1"></div>

							<div class="col-lg-5"><h3>Mcube Template</h3></div>
						</div>

						<div class="form-group row">

							<div class="col-lg-5 border overflow-hidden">
								<img
									src="${pageContext.request.contextPath}/resources/assets/doc_type/abc.png"
									alt="" onclick="myFunction1(this);">
								<h5>Doc No:D433H22/Finance Docs</h5>
							</div>
							<div class="col-lg-1">
								 
							</div>
							<div class="col-lg-5 border overflow-hidden">
								<img
									src="${pageContext.request.contextPath}/resources/assets/doc_type/abc.png"
									alt="" onclick="myFunction1(this);">
							</div>
						</div>
 
						
						<div class="modal-body">
						 
							<div class="form-group row"  style=" padding-left: 39%;"  >
							
							<a href="${pageContext.request.contextPath}/showOCR"><button 
												type="button" class="btn btn-primary">Prev</button></a>&nbsp;&nbsp;
							
							
												
												<a href="${pageContext.request.contextPath}/showOCRoutputvalidation"><button
												type="button" class="btn btn-primary">Submit</button></a>&nbsp;&nbsp;
							
									<a href="${pageContext.request.contextPath}/showOCRoutputvalidation"><button 
												type="button" class="btn btn-primary">Next</button></a>&nbsp;&nbsp;
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