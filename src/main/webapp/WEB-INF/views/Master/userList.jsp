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
			<div class="page-header page-header-light">


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
			</div>
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
								<td width="60%"><h2 class="card-title">
										<i class="icon-users4 " style="color: black; font-size: 25px"></i>&nbsp;&nbsp;User
										List
									</h2></td>

								<td width="40%" align="right"><a
									href="${pageContext.request.contextPath}/addUser"
									class="breadcrumb-elements-item">
										<button type="button" class="btn btn-primary">Add
											User</button>
								</a></td>

							</tr>
						</table>

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

						<div class="form-group row">

							<label class="col-form-label col-lg-2" for="locId2">
								Filter : </label>
							<div class="col-lg-4">

								<select multiple="multiple" data-placeholder="Select "
									name="accessType" id="accessType"
									class="form-control form-control-sm select"
									data-container-css-class="select-sm" data-fouc>

									<option value="">Select</option>

									<option value="1">All</option>
									<option value="2">Master Admin</option>

									<option value="3">Admin</option>

									<option value="4">Associate</option>

								</select>
							</div>

							<div style="text-align: center;">
								<input type="button" class="btn btn-primary" value="Clear All"
									onclick="clearSelected()" id="deleteId"
									style="align-content: center; width: 113px; margin-left: 40px;">
							</div>

						</div>
						<table
							class="table table-bordered table-hover datatable-highlight1 datatable-button-html5-basic  datatable-button-print-columns1"
							id="printtable1">
							<thead>
								<tr class="bg-blue">
									<th width="5%">Sr.no</th>

									<th width="10%">Profile Pic</th>
									<th>Name</th>
									<th>Access Rights</th>
									<th>Mobile No.</th>
									<th>Email ID</th>


									<th class="text-center" width="10%">Actions</th>
								</tr>
							</thead>
							<tbody>

								<tr>
									<td>1</td>
									<td><img
										src="${pageContext.request.contextPath}/resources/assets/images/8.jpg"
										class="rounded-circle mr-2" height="45" width="50"></td>
									<td>Satish Patil</td>
									<td>Master Admin</td>
									<td>8956232323</td>
									<td>satishPatil12@gmail.com</td>



									<td class="text-center"><a href="#" title="Edit"><i
											class="icon-pencil7" style="color: black; font-size: 20px;"></i></a>
										<a href="#" title="Block"><i class="icon-user-block "
											style="color: green; font-size: 20px;"></i> </a> <a href="#"
										onClick="delForm()" title="Delete"><i class="icon-trash"
											style="color: black; font-size: 20px;"></i> </a></td>
								</tr>


								<tr>
									<td>2</td>
									<td><img
										src="${pageContext.request.contextPath}/resources/assets/images/8.jpg"
										class="rounded-circle mr-2" height="45" width="50" alt=""></td>
									<td>Amit Chavan</td>
									<td>Admin</td>
									<td>7845121323</td>
									<td>amitchavan12@gmail.com</td>
									<!-- <td>amitchavan12@gmail.com</td> -->



									<td class="text-center"><a href="#" title="Edit"><i
											class="icon-pencil7" style="color: black; font-size: 20px;"></i></a>
										<a href="#" title="Unblock"><i class="icon-user-block "
											style="color: red; font-size: 20px;"></i> </a> <a href="#"
										onClick="delForm()" title="Delete"><i class="icon-trash"
											style="color: black; font-size: 20px;"></i> </a></td>
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

	<script type="text/javascript">
		function clearSelected() {
			alert("hii");
			  var elements = document.getElementById("accessType").options;

			    for(var i = 0; i < elements.length; i++){
			      elements[i].selected = false;
			    }​
		}
	</script>
	<script>
		function submitForm() {
			$('#modal_scrollable').modal('hide');

			document.getElementById("submitInsertCompany").submit();

		}
	</script>
	<script>
		function delForm() {
			$('#modal_scrollable').modal('show');
		}
	</script>

	<div id="modal_scrollable" class="modal fade" data-backdrop="false"
		tabindex="-1">
		<div class="modal-dialog modal-dialog-scrollable">
			<div class="modal-content">
				<div class="modal-header pb-3">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body py-0">
					<h5 class="modal-title">Are You Sure You Want to Delete This
						Record</h5>
					<br>
				</div>
				<div class="modal-footer pt-3">
					<button type="button" class="btn btn-primary" data-dismiss="modal">Cancel</button>
					<button type="button" class="btn btn-primary"
						onclick="submitForm()">Delete</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>