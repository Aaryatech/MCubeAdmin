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
				<%-- <li class="nav-item"><a
					href="${pageContext.request.contextPath}/dashboard1"
					class="nav-link active" onclick="selectSubMod(0,0)"> <i
						class="icon-home4"></i> <span> Dashboard1 </span>
				</a></li> --%> 

				<li class="nav-item"><a
					href="${pageContext.request.contextPath}/welcomePage"
					class="nav-link active" onclick="selectSubMod(0,0)"> <i
						class="icon-home4"></i> <span> Home </span>
				</a></li>


				<%-- <li class="nav-item nav-item-submenu"><a href="#"
					class="nav-link"><i class="icon-file-locked"></i><span>Access
							Rights </span></a>

					<ul class="nav nav-group-sub" data-submenu-title="Access Rights">
						<li class="nav-item"><a
							href="${pageContext.request.contextPath}/showCreateRole"
							class="nav-link">Create Role</a></li>
						<li class="nav-item"><a
							href="${pageContext.request.contextPath}/showRoleList"
							class="nav-link">Role List</a></li>
						<li class="nav-item"><a
							href="${pageContext.request.contextPath}/showAssignRole"
							class="nav-link">Assign Role</a></li>

					</ul></li> --%>


				<li class="nav-item nav-item-submenu"><a href="#"
					class="nav-link"><i class="icon-file-plus"></i><span>Master</span></a>

					<ul class="nav nav-group-sub" data-submenu-title="Master">

						<li class="nav-item"><a
							href="${pageContext.request.contextPath}/customerList"
							class="nav-link">Customer Master</a></li>

						<li class="nav-item"><a
							href="${pageContext.request.contextPath}/userList"
							class="nav-link">User Master</a></li>

						 

					</ul></li>

				<%-- <li class="nav-item nav-item-submenu"><a href="#"
					class="nav-link"><i class="icon-file-check"></i><span>Task
							Allotment</span></a>

					<ul class="nav nav-group-sub"
						data-submenu-title="Task
							Allotment">
						<li class="nav-item"><a
							href="${pageContext.request.contextPath}/manualTaskAdd"
							class="nav-link">Add Manual Task</a></li>
						<li class="nav-item"><a
							href="${pageContext.request.contextPath}/assignTask"
							class="nav-link">Assign Task</a></li>

					</ul></li> --%>

				<%-- <li class="nav-item nav-item-submenu"><a href="#"
					class="nav-link"><i class="icon-exit3"></i><span> Leave
							Management </span></a>

					<ul class="nav nav-group-sub" data-submenu-title="Master">

						<li class="nav-item"><a
							href="${pageContext.request.contextPath}/showEmpListForLeave"
							class="nav-link">Apply Leave</a></li>

						<li class="nav-item"><a
							href="${pageContext.request.contextPath}/showLeaveHistListBetweenDate"
							class="nav-link">Leave History</a></li>

						<li class="nav-item"><a
							href="${pageContext.request.contextPath}/empListwithDaywiseLeaveStatus"
							class="nav-link">Leave Record Sheet</a></li>

					</ul></li> --%>

				<%-- <li class="nav-item nav-item-submenu"><a href="#"
					class="nav-link"><i class="icon-stack"></i><span> Daily
							Work Log </span></a>

					<ul class="nav nav-group-sub" data-submenu-title="Master">

						<li class="nav-item"><a
							href="${pageContext.request.contextPath}/showDailyWorkLog"
							class="nav-link">Daily Work Log</a></li>

					</ul></li> --%>

				<c:forEach items="${sessionScope.newModuleList}"
					var="moduleJsonList" varStatus="count">
					<c:choose>
						<c:when test="${moduleJsonList.moduleId==sessionModuleId}">
							<li class="nav-item nav-item-submenu nav-item-open">
						</c:when>
						<c:otherwise>
							<li class="nav-item nav-item-submenu">
						</c:otherwise>
					</c:choose>

					<a href="#" class="nav-link">${moduleJsonList.iconDiv}<span>${moduleJsonList.moduleName}</span></a>

					<c:choose>
						<c:when test="${moduleJsonList.moduleId==sessionModuleId}">
							<ul class="nav nav-group-sub"
								data-submenu-title="${moduleJsonList.moduleName}"
								style="display: block;">
						</c:when>
						<c:otherwise>
							<ul class="nav nav-group-sub"
								data-submenu-title="${moduleJsonList.moduleName}">
						</c:otherwise>
					</c:choose>

					<c:forEach items="${moduleJsonList.subModuleJsonList}"
						var="accessRightSubModuleList">
						<li class="nav-item"><c:choose>
								<c:when
									test="${accessRightSubModuleList.subModuleId==sessionSubModuleId}">
									<a
										href="${pageContext.request.contextPath}/${accessRightSubModuleList.subModuleMapping}"
										class="nav-link active legitRipple"
										onclick="selectSubMod(${accessRightSubModuleList.subModuleId},${accessRightSubModuleList.moduleId})">${accessRightSubModuleList.subModulName}</a></li>
						</c:when>
						<c:otherwise>
							<a
								href="${pageContext.request.contextPath}/${accessRightSubModuleList.subModuleMapping}"
								class="nav-link"
								onclick="selectSubMod(${accessRightSubModuleList.subModuleId},${accessRightSubModuleList.moduleId})">${accessRightSubModuleList.subModulName}</a>
							</li>
						</c:otherwise>
						</c:choose>
					</c:forEach>
			</ul>
			</li>

			</c:forEach>

			<li class="nav-item"><a class="nav-link"
				href="${pageContext.request.contextPath}/logout" onClick="return confirm('Are you sure you want to logout?');"><i
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
