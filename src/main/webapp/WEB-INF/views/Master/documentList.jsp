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
		<!-- 	<div class="page-header page-header-light">


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
						<h5 class="card-title"><i class="far fa-list-alt mr-3 fa-2x"
											style="color: black;"></i>&nbsp;&nbsp;Document List</h5>
								<%-- <h5 class="card-title"><a href="${pageContext.request.contextPath}/addUser"
							> Add User </a></h5> --%>


					<%-- 	<table width="100%">
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
						</table> --%>

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
									<th>Document No.</th>
									<th>Document Name</th>
									<th>Document Type</th>
									<th>Client Name</th>
									<th>Modified Date</th>

									<!-- <th class="text-center" width="10%">Actions</th> -->
								</tr>
							</thead>
							<tbody>

								<tr>
									<td>1</td>
									<td><a href="#modal_default" data-toggle="modal" data-target="#modal_default">D4</a></td>
									<td>Loan NOCs</td>
									 <td><img
										src="${pageContext.request.contextPath}/resources/assets/doc_type/excel-sm.png"
										class="mr-2" height="34" alt="" title="excel"></td>
									<td>Sashi Kumar</td>
									<td>02-02-2019</td>
								
									<%-- <td class="text-center"><a
										href="${pageContext.request.contextPath}/editCustomer?custId=${cust.exVar1}"
										title="Edit"><i class="icon-pencil7"
											style="color: black; font-size: 20px;"></i></a> <a
										href="${pageContext.request.contextPath}/deleteCustomer?custId=${cust.exVar1}"
										title="Block"><i class="icon-user-block "
											style="color: black; font-size: 20px;"></i> </a> <a
										href="${pageContext.request.contextPath}/deleteCustomer?custId=${cust.exVar1}"
										onClick="return confirm('Are you sure want to delete this record');"
										title="Delete"><i class="icon-trash"
											style="color: black; font-size: 20px;"></i> </a></td> --%>
								</tr>


								<tr>
									<td>2</td>
									<td>F66</td>
									<td>Finance Docs</td>
									 <td><img
										src="${pageContext.request.contextPath}/resources/assets/doc_type/pdf-sm.png"
										class="mr-2" height="34" alt="" title="pdf"></td>
									<td>Pakaj Mishra</td>
									<td>20-06-2019</td>
								
									<%-- <td class="text-center"><a
										href="${pageContext.request.contextPath}/editCustomer?custId=${cust.exVar1}"
										title="Edit"><i class="icon-pencil7"
											style="color: black; font-size: 20px;"></i></a> <a
										href="${pageContext.request.contextPath}/deleteCustomer?custId=${cust.exVar1}"
										title="Block"><i class="icon-user-block "
											style="color: black; font-size: 20px;"></i> </a> <a
										href="${pageContext.request.contextPath}/deleteCustomer?custId=${cust.exVar1}"
										onClick="return confirm('Are you sure want to delete this record');"
										title="Delete"><i class="icon-trash"
											style="color: black; font-size: 20px;"></i> </a></td> --%>
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
<!--***************************Model***********************  -->
 <!-- Basic modal -->
				<div id="modal_default" class="modal fade" tabindex="-1">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title">Basic modal</h5>
								<button type="button" class="close" data-dismiss="modal">&times;</button>
							</div>

							<div class="modal-body">
								<h6 class="font-weight-semibold">Text in a modal</h6>
								<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>

								<hr>

								<h6 class="font-weight-semibold">Another paragraph</h6>
								<p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
								<p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
							</div>

							<div class="modal-footer">
								<button type="button" class="btn btn-link" data-dismiss="modal">Close</button>
								<button type="button" class="btn bg-primary">Save changes</button>
							</div>
						</div>
					</div>
				</div>
<!--***************************Model End**********************  -->

</body>
</html>