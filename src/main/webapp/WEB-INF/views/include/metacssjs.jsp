<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>M Cube Financials</title>
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/assets/images/logo.jpg"
	type="image/x-icon" />
<!-- Global stylesheets -->
<!-- <link
	href="https://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900"
	rel="stylesheet" type="text/css"> -->
	<!-- <link href="https://fonts.googleapis.com/css?family=Dancing+Script|Roboto&display=swap" rel="stylesheet"> -->
	
	<link href="https://fonts.googleapis.com/css?family=Muli&display=swap" rel="stylesheet">
	
<link
	href="${pageContext.request.contextPath}/resources/global_assets/css/icons/icomoon/styles.min.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/resources/global_assets/css/icons/fontawesome/styles.min.css"
	rel="stylesheet" type="text/css">

<link
	href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/resources/assets/css/bootstrap_limitless.min.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/resources/assets/css/layout.min.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/resources/assets/css/components.min.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/resources/assets/css/colors.min.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/resources/global_assets/css/dropzone/css/dropzone.css"
	rel="stylesheet" type="text/css" media="screen" />
<link
	href="${pageContext.request.contextPath}/resources/assets/css/customecss.css"
	rel="stylesheet" type="text/css">


<!-- /global stylesheets -->

<!-- Core JS files -->
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/main/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/main/bootstrap.bundle.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/loaders/blockui.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/ui/ripple.min.js"></script>
<!-- /core JS files -->

<!-- Theme JS files -->
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/visualization/d3/d3.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/visualization/d3/d3_tooltip.js"></script>
<%-- 	<script src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/forms/styling/switchery.min.js"></script> --%>
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/forms/selects/bootstrap_multiselect.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/ui/moment/moment.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/pickers/daterangepicker.js"></script>

<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/pickers/anytime.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/pickers/pickadate/picker.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/pickers/pickadate/picker.date.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/pickers/pickadate/picker.time.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/pickers/pickadate/legacy.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/notifications/jgrowl.min.js"></script>
<!-- Theme JS files -->
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/forms/inputs/inputmask.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/extensions/jquery_ui/interactions.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/forms/selects/select2.min.js"></script>


<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/forms/styling/uniform.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/extensions/jquery_ui/core.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/forms/inputs/typeahead/typeahead.bundle.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/forms/tags/tagsinput.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/forms/tags/tokenfield.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/forms/inputs/touchspin.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/forms/inputs/maxlength.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/forms/inputs/formatter.min.js"></script>

<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/tables/datatables/datatables.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/tables/datatables/extensions/fixed_columns.min.js"></script>

<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/tables/datatables/extensions/jszip/jszip.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/tables/datatables/extensions/pdfmake/pdfmake.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/tables/datatables/extensions/pdfmake/vfs_fonts.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/tables/datatables/extensions/buttons.min.js"></script>

<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/pickers/color/spectrum.js"></script>
<%--   <script src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/forms/styling/switchery.min.js"></script>   --%>

<!-- Theme JS files -->
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/uploaders/fileinput/plugins/purify.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/uploaders/fileinput/plugins/sortable.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/uploaders/fileinput/fileinput.min.js"></script>

<script
	src="${pageContext.request.contextPath}/resources/assets/js/app.js"></script>
<%-- <script src="${pageContext.request.contextPath}/resources/global_assets/js/demo_pages/dashboard.js"></script> --%>
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/demo_pages/form_floating_labels.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/demo_pages/datatables_advanced.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/demo_pages/datatables_extension_fixed_columns.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/demo_pages/datatables_extension_buttons_html5.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/demo_pages/datatables_extension_buttons_print.js"></script>
<%-- <script src="${pageContext.request.contextPath}/resources/global_assets/js/demo_pages/extra_sweetalert.js"></script> --%>
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/demo_pages/picker_date.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/demo_pages/picker_color.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/demo_pages/form_select2.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/plugins/forms/inputs/duallistbox/duallistbox.min.js"></script>

<%-- <script src="${pageContext.request.contextPath}/resources/global_assets/js/demo_pages/uploader_bootstrap.js"></script> --%>
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/demo_pages/datatables_basic.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/demo_pages/form_dual_listboxes.js"></script>
<!-- /theme JS files -->



<script>
	// Export options - column selector
</script>
<!-- /theme JS files -->


<script
	src="${pageContext.request.contextPath}/resources/global_assets/js/demo_pages/extra_sweetalert.js"></script>









