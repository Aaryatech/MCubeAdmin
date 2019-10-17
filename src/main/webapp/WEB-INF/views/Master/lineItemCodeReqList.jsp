<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><%@ taglib
	uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
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


<jsp:include page="/WEB-INF/views/include/metacssjs.jsp"></jsp:include>
<style type="text/css">
/* th,
td {
  padding: 4px 15px !important;
  vertical-align: middle !important;
}
 */
th{
  text-align: left !important;
}

td {
  text-align: center;
}
.bot-date,.asso-date{

 font-size: 15px;
  text-align: center;
}
.text-offset {  	
  font-size: 14px;
  color: #7c7c80;
} 
/* table {
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
} */

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
		<%-- <div class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
					<div class="d-flex">
						<div class="breadcrumb">
							<a href="${pageContext.request.contextPath}/dash" class="breadcrumb-item"><i
								class="icon-home2 mr-2"></i> Dashboard</a>  
						</div>

						<a href="#" class="header-elements-toggle text-default d-md-none"><i
							class="icon-more"></i></a>
					</div>
		</div> --%>
			<!-- /page header -->


			<!-- Content area -->
			<div class="content">


				<!-- Highlighting rows and columns -->
				<div class="card">
					<div class="card-header header-elements-inline">
					<h2 class="card-title"><i class="icon-list3"
						style="color: black; font-size: 25px;"></i>&nbsp;&nbsp;Line Item
						 Code Request</h2>
					
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
									<th scope="col">Property Types</th>
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
										<td class="req-id">Prop-1 </td>
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
										href="#" title="Edit" onclick="editItemLink1()"><i class="icon-pencil7" style="color: black; font-size:16px;"></i>
										</a>
										
									 <a
										href="#"
										title="Approve"><i class="icon-checkmark3"
											style="color: black; font-size:16px;"></i> </a>

										<a
										href="#"
										onClick="delForm()"
										title="Disapprove"><i class="icon-cross2 mr-3 icon-2x" style="color: black; font-size:16px; "></i>
									</a></td>
								</tr>


								<tr>
									<td style="text-align: left;">2</td>
									<td class="client-name">Kabir Singh</td>
									<td class="req-id">Prop-2 </td>
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
										href="#" title="Edit" onclick="editItemLink2()">	<i class="icon-pencil7" style="color: black; font-size:16px;"></i>
										</a>
									 <a
										href="#"
										title="Approve"><i class="icon-checkmark3"
											style="color: black; font-size:16px;"></i> </a>

										<a
										href="#"
										onClick="delForm()"
										title="Disapprove"><i class="icon-cross2 mr-3 icon-2x" style="color: black; font-size:16px; "></i>
									</a></td>
								</tr>
								
								
								<tr>
									<td style="text-align: left;">3</td>
									<td class="client-name">Suresh Jha</td>
									<td class="req-id">Prop-3 </td>
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
										href="#" title="Edit" onclick="editItemLink3()">	<i class="icon-pencil7" style="color: black; font-size:16px;"></i>
									</a>
									
									 <a
										href="#"
										title="Approve"><i class="icon-checkmark3"
											style="color: black; font-size:16px;"></i> </a>

										<a
										href="#"
										onClick="delForm()"
										title="Disapprove"><i class="icon-cross2 mr-3 icon-2x" style="color: black; font-size:16px; "></i>
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
	

	     <!-- Horizontal form modal -->
				<div id="modal_form_horizontal1" class="modal fade" tabindex="-1">
					<div class="modal-dialog modal-lg">
					
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title">Edit Line Item
						 Code</h5>
								<button type="button" class="close" data-dismiss="modal">&times;</button>
							</div>

							<form action="#" class="form-horizontal">
								<div class="modal-body">
									<div class="form-group row">
										<label class="col-form-label col-sm-3">Client name</label>
										<div class="col-sm-9">
											<input type="text" placeholder="" value="Satish Patil" class="form-control" id="client_name">
										</div>
									</div>

									<div class="form-group row">
										<label class="col-form-label col-sm-3">Line Item</label>
										<div class="col-sm-9">
											<input type="text" placeholder="" class="form-control" value="ABC" id="line_item">
										</div>
									</div>

									<div class="form-group row">
										<label class="col-form-label col-sm-3">Proposed by Bot</label>
										<div class="col-sm-9">
											<input type="text" placeholder="" class="form-control" value="TT200" id="bot">
										</div>
									</div>

									<div class="form-group row">
										<label class="col-form-label col-sm-3">Proposed by Associate</label>
										<div class="col-sm-9">
											<input type="text" placeholder="" class="form-control" value="Mahesh G" id="associate">
										</div>
									</div>

									<div class="form-group row">
										<label class="col-form-label col-sm-3">Bot Date</label>
										<div class="col-sm-9">
											<input type="text" class="form-control daterange-single"
																	value="03/16/2019">
										</div>
									</div>

									<div class="form-group row">
										<label class="col-form-label col-sm-3">Associate Date</label>
										<div class="col-sm-9">
										
											<input type="text" class="form-control daterange-single"
																	value="03/16/2019">											
										</div>
								</div>
										
								<div class="modal-footer pt-3">
									<button type="button" class="btn btn-primary">Approve</button>
									<button type="button" class="btn btn-primary">Disapprove</button>
									<button type="button" class="btn btn-primary" data-dismiss="modal">Cancel</button>
								</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				
<!-- ******************************************************************************************************************* -->
	<div id="modal_form_horizontal2" class="modal fade" tabindex="-1">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title">Edit Line Item
						 Code</h5>
								<button type="button" class="close" data-dismiss="modal">&times;</button>
							</div>

							<form action="#" class="form-horizontal">
								<div class="modal-body">
									<div class="form-group row">
										<label class="col-form-label col-sm-3">Client name</label>
										<div class="col-sm-9">
											<input type="text" placeholder="" value="Kabir Singh" class="form-control" id="client_name">
										</div>
									</div>

									<div class="form-group row">
										<label class="col-form-label col-sm-3">Line Item</label>
										<div class="col-sm-9">
											<input type="text" placeholder="" class="form-control" value="DEF" id="line_item">
										</div>
									</div>

									<div class="form-group row">
										<label class="col-form-label col-sm-3">Proposed by Bot</label>
										<div class="col-sm-9">
											<input type="text" placeholder="" class="form-control" value="KK21" id="bot">
										</div>
									</div>

									<div class="form-group row">
										<label class="col-form-label col-sm-3">Proposed by Associate</label>
										<div class="col-sm-9">
											<input type="text" placeholder="" class="form-control" value="Yogest T" id="associate">
										</div>
									</div>

									<div class="form-group row">
										<label class="col-form-label col-sm-3">Bot Date</label>
										<div class="col-sm-9">
											<input type="text" placeholder="" class="form-control daterange-single" value="03-01-2019" id="bot_date">
										</div>
									</div>

									<div class="form-group row">
										<label class="col-form-label col-sm-3">Associate Date</label>
										<div class="col-sm-9">
											<input type="text" placeholder="" class="form-control daterange-single" value="03-01-2019" id="asso_date">
										</div>
									</div>

								<div class="modal-footer pt-3">
								<button type="button" class="btn btn-primary">Approve</button>
								<button type="button" class="btn btn-primary">Disapprove</button>
								<button type="button" class="btn btn-primary" data-dismiss="modal">Cancel</button>
								</div>
								</div>
							</form>
						</div>
					</div>
				</div>
<!-- ************************************************************************************************************************** -->
		<div id="modal_form_horizontal3" class="modal fade" tabindex="-1">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title">Edit Line Item
						 Code</h5>
								<button type="button" class="close" data-dismiss="modal">&times;</button>
							</div>

							<form action="#" class="form-horizontal">
								<div class="modal-body">
									<div class="form-group row">
										<label class="col-form-label col-sm-3">Client name</label>
										<div class="col-sm-9">
											<input type="text" placeholder="" value="Suresh Jha" class="form-control" id="client_name">
										</div>
									</div>

									<div class="form-group row">
										<label class="col-form-label col-sm-3">Line Item</label>
										<div class="col-sm-9">
											<input type="text" placeholder="" class="form-control" value="HIJ" id="line_item">
										</div>
									</div>

									<div class="form-group row">
										<label class="col-form-label col-sm-3">Proposed by Bot</label>
										<div class="col-sm-9">
											<input type="text" placeholder="" class="form-control" value="SS10" id="bot">
										</div>
									</div>

									<div class="form-group row">
										<label class="col-form-label col-sm-3">Proposed by Associate</label>
										<div class="col-sm-9">
											<input type="text" placeholder="" class="form-control" value="Priya G" id="associate">
										</div>
									</div>

									<div class="form-group row">
										<label class="col-form-label col-sm-3">Bot Date</label>
										<div class="col-sm-9">
											<input type="text" placeholder="" class="form-control daterange-single" value="10-20-2019" id="bot_date">
										</div>
									</div>

									<div class="form-group row">
										<label class="col-form-label col-sm-3">Associate Date</label>
										<div class="col-sm-9">
											<input type="text" placeholder="" class="form-control daterange-single" value="10-20-2019" id="asso_date">
										</div>
									</div>

								<div class="modal-footer pt-3">
									<button type="button" class="btn btn-primary">Approve</button>
									<button type="button" class="btn btn-primary">Disapprove</button>
									<button type="button" class="btn btn-primary" data-dismiss="modal">Cancel</button>
								</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<!-- /horizontal form modal -->
				
<script>
	function editItemLink1() {		
		$("#modal_form_horizontal1").modal('show');
	}
	
	function editItemLink2() {
		$("#modal_form_horizontal2").modal('show');
	}
	
	function editItemLink3() {
		$("#modal_form_horizontal3").modal('show');
	}
</script>	

<!-- <script type="text/javascript">
		/* // Single picker
		$('.datepickerclass').daterangepicker({
			singleDatePicker : true,
			selectMonths : true,
			selectYears : true,
			locale : {
				format : 'DD-MM-YYYY'
			}
		});

		//daterange-basic_new
		// Basic initialization
		$('.daterange-basic_new').daterangepicker({
			applyClass : 'bg-slate-600',

			cancelClass : 'btn-light',
			locale : {
				format : 'DD-MM-YYYY',
				separator : ' to '
			}
		}); */
		
		 $('.daterange-single').daterangepicker({
			singleDatePicker : true,
			selectMonths : true,
			selectYears : true,
			locale : {
				format : 'DD-MM-YYYY'
			}
		}); 
 	 
	</script>		 -->	
</body>
</html>