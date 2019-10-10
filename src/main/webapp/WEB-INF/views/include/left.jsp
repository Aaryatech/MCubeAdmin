<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>


<div class="sidebar sidebar-dark sidebar-main sidebar-expand-md">
	<c:url var="setSubModId" value="/setSubModId" />
	<!-- Sidebar mobile toggler -->
	<div class="sidebar-mobile-toggler text-center">
		<a href="#" class="sidebar-mobile-main-toggle"> <i
			class="icon-arrow-left8"></i>
		</a> <span class="font-weight-semibold">Navigation</span> <a href="#"
			class="sidebar-mobile-expand"> <i class="icon-screen-full"></i> <i
			class="icon-screen-normal"></i>
		</a>
	</div>
	<!-- /sidebar mobile toggler -->


	<!-- Sidebar content -->
	<div class="sidebar-content">

		<!-- Main navigation -->
		<div class="card card-sidebar-mobile">





			<ul class="nav nav-sidebar" data-nav-type="accordion">

				<!-- Main -->
				<!-- <li class="nav-item-header"><div class="text-uppercase font-size-xs line-height-xs">Main</div> <i class="icon-menu" title="Main"></i></li> -->
				<%-- <li class="nav-item"><a
					href="${pageContext.request.contextPath}/dashboard"
					class="nav-link active" onclick="selectSubMod(0,0)"> <i
						class="icon-home4"></i> <span> Dashboard </span>
				</a></li>
				 --%>
				<li class="nav-item"><a
					href="${pageContext.request.contextPath}/dashboard1"
					class="nav-link active" onclick="selectSubMod(0,0)"> <i
						class="icon-grid3 "></i> <span> Dashboard </span>
				</a></li>

				<li class="nav-item"><a
					href="${pageContext.request.contextPath}/welcomePage"
					class="nav-link" onclick="selectSubMod(0,0)"> <i
						class="icon-home4"></i> <span> Home </span>
				</a></li>





				<li class="nav-item nav-item-submenu"><a href="#"
					class="nav-link"><i class="icon-stack"></i><span>Master</span></a>

					<ul class="nav nav-group-sub" data-submenu-title="Master">

						<li class="nav-item"><a
							href="${pageContext.request.contextPath}/customerList"
							class="nav-link">Customer Master</a></li>

						<li class="nav-item"><a
							href="${pageContext.request.contextPath}/userList"
							class="nav-link">User Master</a></li>



					</ul></li>



				<li class="nav-item nav-item-submenu"><a href="#"
					class="nav-link"><i class="icon-users2 "></i><span>User</span></a>

					<ul class="nav nav-group-sub" data-submenu-title="Master">

						<li class="nav-item"><a
							href="${pageContext.request.contextPath}/showEditUser"
							class="nav-link">Edit User Profile</a></li>

						<li class="nav-item"><a
							href="${pageContext.request.contextPath}/changeUserPassword"
							class="nav-link">Change Password</a></li>

					</ul></li>

				<li class="nav-item"><a class="nav-link"
					href="${pageContext.request.contextPath}/"><i
						class="icon-switch2"></i> <span>Logout</span></a></li>
				<!-- /main -->


			</ul>
		</div>
		<!-- /main navigation -->

	</div>
	<!-- /sidebar content -->

</div>

<script>
	function selectSubMod(subModId, modId) {

		$.getJSON('${setSubModId}', {
			subModId : subModId,
			modId : modId,
			ajax : 'true'
		});

	}
</script>

</html>
