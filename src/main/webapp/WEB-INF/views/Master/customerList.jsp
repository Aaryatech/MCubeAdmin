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
								<td width="60%"><h2 class="card-title">
										<i class="icon-users4 " style="color: black; font-size: 25px"></i>&nbsp;&nbsp;Customer
										List
									</h2></td>

								<td width="40%" align="right"><a
									href="${pageContext.request.contextPath}/addCustomer"
									class="breadcrumb-elements-item">
										<button type="button" class="btn btn-primary">Add
											Customer</button>
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
						<table
							class="table table-bordered table-hover datatable-highlight1 datatable-button-html5-basic  datatable-button-print-columns1"
							id="printtable1">
							<thead>
								<tr class="bg-blue">
									<th width="5%">Sr.no</th>


									<th width="30%">Client Name</th>
									<th  class="text-center" width="15%">Add Template</th>
									<th   class="text-center" width="15%"> Master Categorization</th>
									
									<th class="text-center" width="10%">Actions</th>
								</tr>
							</thead>
							<tbody>

								<tr>
									<td>1</td>

									<td>Nikhil Salunkhe</td>


									<td class="text-center"><a
										href="${pageContext.request.contextPath}/showAddTemplate"
										title="Add Template"><i class="icon-add "
											style="color: black; font-size: 20px;"></i> </a></td><td class="text-center"> <a
										href="${pageContext.request.contextPath}/showImpMasterCat"
										title="Import Master Categorization"><i
											class="icon-import  " style="color: black; font-size: 20px;"></i>
									</a></td><td class="text-center"> <a
										href="#"
										title="Edit"><i class="icon-pencil7"
											style="color: black; font-size: 20px;"></i></a> <a
										href="#"
										title="Block"><i class="icon-user-block "
											style="color: green; font-size: 20px;"></i> </a> <a
										href="#"
										onClick="delForm()"
										title="Delete"><i class="icon-trash"
											style="color: black; font-size: 20px;"></i> </a></td>
								</tr>


								<tr>
									<td>2</td>

									<td>Priti Seth</td>




									<td class="text-center"><a
										href="${pageContext.request.contextPath}/showAddTemplate"
										title="Add Template"><i class="icon-add "
											style="color: black; font-size: 20px;"></i> </a></td><td  class="text-center"> <a
										href="${pageContext.request.contextPath}/showImpMasterCat"
										title="Import Master Categorization"><i
											class="icon-import  " style="color: black; font-size: 20px;"></i>
									</a></td><td  class="text-center"> <a
										href="#"
										title="Edit"><i class="icon-pencil7"
											style="color: black; font-size: 20px;"></i></a> <a
										href="#"
										title="Unblock"><i class="icon-user-block "
											style="color: red; font-size: 20px;"></i> </a> <a
										href="#"
										onClick="delForm()"
										title="Delete"><i class="icon-trash"
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