<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="navbar navbar-expand-md navbar-light">
	<div class="navbar-brand">
		<a href="${pageContext.request.contextPath}/dashboard"
			class="d-inline-block"> <%-- <img src="${pageContext.request.contextPath}/resources/global_assets/images/logo_light.png" alt=""> --%>
			<img
			src="${pageContext.request.contextPath}/resources/assets/images/logo.jpg"
			alt="" style="height: 40px; width: 150px;">
		</a>
	</div>

	<div class="d-md-none">
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbar-mobile">
			<i class="icon-user"></i>
		</button>
		<button class="navbar-toggler sidebar-mobile-main-toggle"
			type="button">
			<i class="icon-paragraph-justify3"></i>
		</button>
	</div>

	<div class="collapse navbar-collapse" id="navbar-mobile">

		<ul class="navbar-nav ">
			<li class="nav-item"><a href="#"
				class="navbar-nav-link sidebar-control sidebar-main-toggle d-none d-md-block">
					<i class="icon-paragraph-justify3"></i>
			</a></li>
		</ul>

		<!-- <span class="navbar-text ml-md-3">
				<span class="badge badge-mark border-orange-300 mr-2"></span>
				Morning, Victoria!
			</span> -->

		<ul class="navbar-nav ml-md-auto">

			<li class="nav-item dropdown dropdown-user "><a href="#" title="Line Code Request"
				class="navbar-nav-link d-flex align-items-center"
				data-toggle="dropdown"> <i class="icon-bell2" style="font-size: 1.5rem; margin-top: 7px;"></i>
			</a>
				</li>

			<li class="nav-item dropdown dropdown-user"><a href="#"
				class="navbar-nav-link d-flex align-items-center dropdown-toggle"
				data-toggle="dropdown"> <img
					src="${pageContext.request.contextPath}/resources/assets/images/8.jpg"
					class="rounded-circle mr-2" height="40" width="40" alt=""> <span>User</span>
			</a>
				<div class="dropdown-menu dropdown-menu-right">
					<a href="#" class="dropdown-item"><i class="icon-user-plus"></i>
						My profile</a>

					<div class="dropdown-divider"></div>
					<a href="${pageContext.request.contextPath}/" class="dropdown-item"><i
						class="icon-switch2"></i> Logout</a>
				</div></li> 
		</ul> 
<div style="display: none;">
								<button
									class="navbar-nav-link sidebar-control sidebar-main-toggle d-none d-md-block"
									id="hiddenButton"></button>
							</div>



		<%-- <ul class="navbar-nav ml-md-auto">
			<li class="nav-item"><a
				href="${pageContext.request.contextPath}/logout"
				class="navbar-nav-link"> <i class="icon-switch2"></i> <span
					class="d-md-none ml-2">Logout</span>
			</a></li>
		</ul> --%>
	</div>
</div>
<script type="text/javascript">
		$(document).ready(function() {
			var button = document.getElementById('hiddenButton');
			button.click();
		});
	</script>