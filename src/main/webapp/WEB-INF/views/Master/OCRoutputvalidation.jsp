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

			<div class="content">


				<!-- Highlighting rows and columns -->
				<div class="card">
					<div class="card-header header-elements-inline">
						<h5 class="card-title">
							<i class="far fa-list-alt mr-3 fa-2x" style="color: black;"></i>&nbsp;&nbsp;Raw Data Validation
						 
						</h5>
					</div>

					<div class="card-body">
						
						
						
									<div class="form-group row">
										 
										<div class="col-lg-5">
											 <img
										src="${pageContext.request.contextPath}/resources/assets/doc_type/pfform.jpg"  
										alt=""   onclick="myFunction1(this);"> <h5>Doc No:jhg21gjh2</h5>
										</div>
										<div class="col-lg-2">
											 
										</div>
										<div class="col-lg-5">
											 <img
										src="${pageContext.request.contextPath}/resources/assets/doc_type/abc.png"  
										alt=""  onclick="myFunction1(this);">
										</div>
									</div>
						
						
						
						
					<%-- 	
						
						<table
							class="table table-table-hover datatable-highlight1 datatable-button-html5-basic  datatable-button-print-columns1"
							id="printtable1">
							 
							<tbody>

								<tr>
									<td   style="width:20%; height:50%; border:10px solid green;" ><img
										src="${pageContext.request.contextPath}/resources/assets/doc_type/pfform.jpg"  
										alt=""   onclick="myFunction1(this);"></td>
									<td  style="width:20%;"> </td>
									<td  style="width:30%; height:50%; border:10px solid green;" ><img
										src="${pageContext.request.contextPath}/resources/assets/doc_type/excel-pivot-start.jpg"  
										alt=""  onclick="myFunction1(this);"> </td>
									 
								</tr>

 

							</tbody>
						</table>


 --%>

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