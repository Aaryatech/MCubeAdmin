<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><%@ taglib
	uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Line Item Code Request</title>
<jsp:include page="/WEB-INF/views/include/metacssjs.jsp"></jsp:include>
<style type="text/css">
table {
  font: 14px/1.4  'Muli', sans-serif; !important;
}
th,
td {
  padding: 8px 5px !important;
  vertical-align: middle !important;
}

th{
  text-align: center !important;
}

td {
  text-align: center;
}

.text-offset {
  color: #7c7c80;
  font-size: 12px;
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

			<!-- Page header -->
			<div class="page-header page-header-light">


			<!-- 	<div
					class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
					<div class="d-flex">
						<div class="breadcrumb">
							<a href="index.html" class="breadcrumb-item"><i
								class="icon-home2 mr-2"></i> Home</a> <span
								class="breadcrumb-item active">Dashboard</span>
						</div>

						<a href="#" class="header-elements-toggle text-default d-md-none"><i
							class="icon-more"></i></a>



					</div>


				 

				</div> -->
			</div>
			<!-- /page header -->


			<!-- Content area -->
			<div class="content">


				<!-- Highlighting rows and columns -->
				<div class="card">
					<div class="card-header header-elements-inline">
					<h5 class="card-title"><i class="icon-list3"
						style="color: black;"></i>&nbsp;&nbsp;Line Item
						 Code Request</h5>
					
					<%-- <h5 class="card-title"><a href="${pageContext.request.contextPath}/addUser"
							> Add User </a></h5>  --%>
							
						<%-- 	
							<table width="100%">
							<tr width="100%">
								<td width="60%"><h2 class="card-title"><i class="icon-list3"
								 style="color: black; font-size:25px"></i>&nbsp;&nbsp;Line Item
								 Code Request</h2></td>
								 
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
									<th scope="col">Sr.No.</th>
									<th scope="col">Client Name</th>
									<th scope="col">Request Id</th>
									<th scope="col">Line Item</th>
									<th scope="col">Proposed by BOT</th>
									<th scope="col">Proposed by Associate</th>
									<th scope="col">BOT Date</th>
									<th scope="col">Associate Date </th>
									<th scope="col">Actions</th>
								</tr>
							</thead>
							<tbody>

								<tr>
									<td style="text-align: left;">1</td>
									<td class="client-name">Satish Patil</td>
									<td class="req-id">123 </td>
									<td class="line_item">ABC</td>
									<td class="code-bot">TT200</td>
									<td class="associate">Mahesh G</td>
									<td class="bot-date">16-03-2019 <br>
										<span class="text-offset">03:45</span>
									</td>
									<td class="asso-date">16-03-2019 <br>
										<span class="text-offset">03:45</span>
									</td>
									
									<td class="text-center">
									 <a
										href="${pageContext.request.contextPath}/deleteCustomer?custId=${cust.exVar1}"
										title="Block"><i class="icon-user-block "
											style="color: black; font-size:13px;"></i> </a>
									<a
										href="${pageContext.request.contextPath}/editCustomer?custId=${cust.exVar1}"
										title="Edit"><i class="icon-pencil7" style="color: black; font-size:13px;"></i></a>

										<a
										href="${pageContext.request.contextPath}/deleteCustomer?custId=${cust.exVar1}"
										onClick="return confirm('Are you sure want to delete this record');"
										title="Delete"><i class="icon-trash" style="color: black; font-size:13px; "></i>
									</a></td>
								</tr>


								<tr>
									<td style="text-align: left;">2</td>
									<td class="client-name">Kabir Singh</td>
									<td class="req-id">456</td>
									<td class="line_item">DEF</td>
									<td class="code-bot">KK21</td>
									<td class="associate">Yogest T</td>
									<td class="bot-date">01-06-2019 <br>									
										<span class="text-offset">01:05</span>
									</td>
									<td class="asso-date">01-06-2019 <br>									
										<span class="text-offset">01:05</span>
									</td>
									<td class="text-center">
									 <a
										href="${pageContext.request.contextPath}/deleteCustomer?custId=${cust.exVar1}"
										title="Block"><i class="icon-user-block "
											style="color: black; font-size:13px;"></i> </a>
									<a
										href="${pageContext.request.contextPath}/editCustomer?custId=${cust.exVar1}"
										title="Edit"><i class="icon-pencil7" style="color: black; font-size:13px;"></i></a>

										<a
										href="${pageContext.request.contextPath}/deleteCustomer?custId=${cust.exVar1}"
										onClick="return confirm('Are you sure want to delete this record');"
										title="Delete"><i class="icon-trash" style="color: black; font-size:13px; "></i>
									</a></td>
								</tr>
								
								
								<tr>
									<td style="text-align: left;">3</td>
									<td class="client-name">Suresh Jha</td>
									<td class="req-id">789 </td>
									<td class="line_item">HIJ</td>
									<td class="code-bot">SS10</td>
									<td class="associate">Priya G</td>
									<td class="bot-date">20-10-2019  <br>									
										<span class="text-offset">12:40</span>
									</td>
									<td class="asso-date">20-10-2019  <br>									
										<span class="text-offset">12:40</span>
									</td>

									<td class="text-center">
									 <a
										href="${pageContext.request.contextPath}/deleteCustomer?custId=${cust.exVar1}"
										title="Block"><i class="icon-user-block "
											style="color: black; font-size:13px;"></i> </a>
									<a
										href="${pageContext.request.contextPath}/editCustomer?custId=${cust.exVar1}"
										title="Edit"><i class="icon-pencil7" style="color: black; font-size:13px;"></i></a>

										<a
										href="${pageContext.request.contextPath}/deleteCustomer?custId=${cust.exVar1}"
										onClick="return confirm('Are you sure want to delete this record');"
										title="Delete"><i class="icon-trash" style="color: black; font-size:13px; "></i>
									</a></td>
							
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

</body>
</html>