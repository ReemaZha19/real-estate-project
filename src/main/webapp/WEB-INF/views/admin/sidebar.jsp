<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sidebar</title>
</head>
<body>

	<ul
		class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
		id="accordionSidebar">

		<!-- Sidebar - Brand -->
		<a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
			
			<div class="sidebar-brand-icon rotate-n-15">
				<i class="fas fa-laugh-wink"></i>
			</div>
			<div class="sidebar-brand-text mx-3">
				RE Admin <sup>2</sup>
			</div>
		</a>

		<!-- Divider -->
		<hr class="sidebar-divider my-0">

		<!-- Dashboard -->
		<li class="nav-item active"><a class="nav-link"
			href="${pageContext.request.contextPath}/admin/home"> <i
				class="fas fa-fw fa-tachometer-alt"></i> <span>Dashboard</span>
		</a></li>

		<!-- Divider -->
		<hr class="sidebar-divider">

		<!-- Heading -->
		<div class="sidebar-heading">Manage</div>

		<!-- Property Management -->
		<li class="nav-item"><a class="nav-link collapsed" href="#"
			data-toggle="collapse" data-target="#collapseProperty"
			aria-expanded="true" aria-controls="collapseProperty"> <i
				class="fas fa-fw fa-cog"></i> <span>Property Management</span>
		</a>

			<div id="collapseProperty" class="collapse"
				aria-labelledby="headingTwo" data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">
					<h6 class="collapse-header">Manage:</h6>
					<a class="collapse-item"
						href="${pageContext.request.contextPath}/admin/type/add">Add
						Property</a> <a class="collapse-item"
						href="${pageContext.request.contextPath}/admin/type/show#data_table">All
						Properties</a> <a class="collapse-item"
						href="${pageContext.request.contextPath}/admin/type/types">Property
						Types</a> <a class="collapse-item"
						href="${pageContext.request.contextPath}/admin/type/images">Property
						Images</a>
				</div>
			</div></li>

		<!-- Agents -->
		<li class="nav-item"><a class="nav-link collapsed" href="#"
			data-toggle="collapse" data-target="#collapseAgents"
			aria-expanded="true" aria-controls="collapseAgents"> <i
				class="fas fa-fw fa-wrench"></i> <span>Agents</span>
		</a>

			<div id="collapseAgents" class="collapse"
				aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">
					<h6 class="collapse-header">Manage Agents:</h6>
					<a class="collapse-item"
						href="${pageContext.request.contextPath}/admin/agents/add">Add
						Agents</a> <a class="collapse-item"
						href="${pageContext.request.contextPath}/admin/agents/show">Show
						Agents</a>
				</div>
			</div></li>

		<!-- Clients -->
		<li class="nav-item">
			<a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseClients"
				aria-expanded="true" aria-controls="collapseClients"> <i
					class="fas fa-fw fa-wrench"></i> <span>Clients</span>
			</a>

				<div id="collapseClients" class="collapse"
					aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Manage Clients:</h6>
						<a class="collapse-item"
							href="${pageContext.request.contextPath}/admin/clients/add">Add
							Clients</a> <a class="collapse-item"
							href="${pageContext.request.contextPath}/admin/clients/show">Show
							Clients</a>
					</div>
				</div>
			</li>
			
			<li class="nav-item">
		        <a class="nav-link" href="${pageContext.request.contextPath}/admin/booking/show">
		        	<i class="fas fa-fw fa-calendar-check"></i>
		            <span>Booking</span>
		        </a>
    		</li>

		<!-- Divider -->
		<hr class="sidebar-divider">

		<!-- Heading -->
		<div class="sidebar-heading">Other Services</div>

		<!-- Appointments -->
		<li class="nav-item"><a class="nav-link"
			href="${pageContext.request.contextPath}/admin/home"> <i
				class="fas fa-fw fa-chart-area"></i> <span>Appointments</span>
		</a></li>

		<!-- Notifications -->
		<li class="nav-item"><a class="nav-link"
			href="${pageContext.request.contextPath}/admin/home"> <i
				class="fas fa-fw fa-chart-area"></i> <span>Notification</span>
		</a></li>

		<!-- Comments -->
		<li class="nav-item">
			<a class="nav-link"
				href="${pageContext.request.contextPath}/admin/home"> <i
				class="fas fa-fw fa-table"></i> <span>Comments</span>
			</a>
		</li>

		<!-- Divider -->
		<hr class="sidebar-divider d-none d-md-block">

		<!-- Settings -->
		<li class="nav-item"><a class="nav-link collapsed" href="#"
			data-toggle="collapse" data-target="#collapseSettings"
			aria-expanded="true" aria-controls="collapseSettings"> <i
				class="fas fa-fw fa-folder"></i> <span>Settings</span>
		</a>

			<div id="collapseSettings" class="collapse"
				aria-labelledby="headingPages" data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">

					<h6 class="collapse-header">Manage Settings:</h6>
					<a class="collapse-item"
						href="${pageContext.request.contextPath}/admin/settings/login">Login</a>
					<a class="collapse-item"
						href="${pageContext.request.contextPath}/admin/settings/register">Register</a>

					<div class="collapse-divider"></div>

					<h6 class="collapse-header">Other Pages:</h6>
					<a class="collapse-item"
						href="${pageContext.request.contextPath}/admin/settings/profile">Profile</a>

				</div>
			</div></li>

		<!-- Sidebar Toggle -->
		<div class="text-center d-none d-md-inline">
			<button class="rounded-circle border-0" id="sidebarToggle"></button>
		</div>

	</ul>
	<!-- End of Sidebar -->

</body>
</html>
