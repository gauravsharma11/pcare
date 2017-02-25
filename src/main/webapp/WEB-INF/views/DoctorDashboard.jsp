<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>P-Care | Dashboard</title>
	<!-- Tell the browser to be responsive to screen width -->
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<!-- Bootstrap 3.3.5 -->
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
	<!-- Font Awesome -->
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
	<!-- Ionicons -->
	<link rel="stylesheet"
		href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="dist/css/AdminLTE.min.css">
	<!-- AdminLTE Skins. Choose a skin from the css/skins
	folder instead of downloading all of them to reduce the load. -->
	<link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
	<!-- iCheck -->
	<link rel="stylesheet" href="plugins/iCheck/flat/blue.css">
	<!-- Morris chart -->
	<link rel="stylesheet" href="plugins/morris/morris.css">
	<!-- jvectormap -->
	<link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
	<!-- Date Picker -->
	<link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
	<!-- Daterange picker -->
	<link rel="stylesheet"
		href="plugins/daterangepicker/daterangepicker-bs3.css">
	<!-- bootstrap wysihtml5 - text editor -->
	<link rel="stylesheet"
		href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
	
	<style type="text/css">
	.jqstooltip {
		position: absolute;
		left: 0px;
		top: 0px;
		visibility: hidden;
		background: rgb(0, 0, 0) transparent;
		background-color: rgba(0, 0, 0, 0.6);
		filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000,
			endColorstr=#99000000);
		-ms-filter:
			"progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";
		color: white;
		font: 10px arial, san serif;
		text-align: left;
		white-space: nowrap;
		padding: 5px;
		border: 1px solid white;
		z-index: 10000;
	}
	
	.jqsfield {
		color: white;
		font: 10px arial, san serif;
		text-align: left;
	}
	</style>
	<style type="text/css">
	.jqstooltip {
		position: absolute;
		left: 0px;
		top: 0px;
		visibility: hidden;
		background: rgb(0, 0, 0) transparent;
		background-color: rgba(0, 0, 0, 0.6);
		filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000,
			endColorstr=#99000000);
		-ms-filter:
			"progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";
		color: white;
		font: 10px arial, san serif;
		text-align: left;
		white-space: nowrap;
		padding: 5px;
		border: 1px solid white;
		z-index: 10000;
	}
	
	.jqsfield {
		color: white;
		font: 10px arial, san serif;
		text-align: left;
	}
	</style>
</head>
<body class="skin-blue sidebar-mini">
	<div class="wrapper">

		<header class="main-header">
			<!-- Logo -->
			<a href="index.html" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
				<!-- <span class="logo-mini"><b>A</b>LT</span>--> <!-- logo for regular state and mobile devices -->
				<span class="logo-lg">P-Care | Dashboard</span>
			</a>
			<!-- Header Navbar: style can be found in header.less -->
			<nav class="navbar navbar-static-top" role="navigation">
				<!-- Sidebar toggle button-->
				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">
						<!-- Messages: style can be found in dropdown.less-->


						<!-- User Account: style can be found in dropdown.less -->
						<li class="dropdown user user-menu"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <img
								src="dist/img/user2-160x160.jpg" class="user-image"
								alt="User Image"> <span class="hidden-xs">Peter
									Pierce</span>
						</a></li>
						<!-- Control Sidebar Toggle Button -->
						<li><a><i class="fa fa-sign-out"></i>Logout</a></li>
					</ul>
				</div>
			</nav>
		</header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar" style="height: auto;">
				<!-- Sidebar user panel -->
				<div class="user-panel">
					<div class="pull-left image">
						<img src="dist/img/user2-160x160.jpg" class="img-circle"
							alt="User Image">
					</div>
					<div class="pull-left info">
						<p>Peter Pierce</p>
						<a href="#"><i class="fa fa-circle text-success"></i> edit
							Profile</a>
					</div>
				</div>
			</section>
			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper" style="min-height: 1735px;">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					Dashboard <small>| Doctor</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li class="active">Dashboard</li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">
				<!-- Small boxes (Stat box) -->
				<div class="row"></div>
				<!-- ./col -->
				<div class="row">
					<div class="col-xs-12">
						<div class="box">
							<div class="box-header">
								<h3 class="box-title">Panel-Patients</h3>
								<div class="box-tools">
									<div class="input-group" style="width: 150px;">
										<input type="text" name="table_search"
											class="form-control input-sm pull-right" placeholder="Search">
										<div class="input-group-btn">
											<button class="btn btn-sm btn-default">
												<i class="fa fa-search"></i>
											</button>
										</div>
									</div>
								</div>
							</div>
							<!-- /.box-header -->
							<div class="box-body table-responsive no-padding">
								<table class="table table-hover">
									<tbody>
										<tr>
											<th>ID</th>
											<th>Name</th>

											<th>Last visit</th>
											<th>Diagnosis</th>
											<th>Last Prescription</th>
											<th>Action</th>
										</tr>
										<tr>
											<td>183</td>
											<td>John Doe</td>

											<td>11-7-2014</td>
											<td>Malaria</td>
											<td><a href="">11-7-2014.pdf</a></td>
											<td><a href="" title="Edit patient's details"
												class="fa fa-edit"></a><a href="" title="Add reports"
												style="margin-left: 10px;" class="fa fa-plus"></a><a href=""
												title="delete" style="margin-left: 10px;"
												class="fa fa-trash-o"></a></td>
										</tr>
										<tr>
											<td>219</td>
											<td>Alexander Pierce</td>

											<td>11-6-2016</td>
											<td>Dengu</td>
											<td><a href="">11-6-2016.pdf</a></td>
											<td><a href="" title="Edit patient's details"
												class="fa fa-edit"></a><a href="" title="Add reports"
												style="margin-left: 10px;" class="fa fa-plus"></a><a href=""
												title="delete" style="margin-left: 10px;"
												class="fa fa-trash-o"></a></td>
										</tr>
										<tr>
											<td>657</td>
											<td>Bob Doe</td>

											<td>03-2-2015</td>
											<td>Tuberculosis</td>
											<td><a href="">03-2-2015.pdf</a></td>
											<td><a href="" title="Edit patient's details"
												class="fa fa-edit"></a><a href="" title="Add reports"
												style="margin-left: 10px;" class="fa fa-plus"></a><a href=""
												title="delete" style="margin-left: 10px;"
												class="fa fa-trash-o"></a></td>
										</tr>
										<tr>
											<td>175</td>
											<td>Mike Doe</td>

											<td>11-7-2014</td>
											<td>Malaria</td>
											<td><a href="">11-7-2014.pdf</a></td>
											<td><a href="" title="Edit patient's details"
												class="fa fa-edit"></a><a href="" title="Add reports"
												style="margin-left: 10px;" class="fa fa-plus"></a><a href=""
												title="delete" style="margin-left: 10px;"
												class="fa fa-trash-o"></a>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->
					</div>
				</div>
				<!-- /.row -->
			</section>
		</div>
		<!-- Main row -->
	</div>
	<!-- /.content-wrapper -->


	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
		<!-- Create the tabs -->
		<ul class="nav nav-tabs nav-justified control-sidebar-tabs">
			<li class="active"><a
				href="#control-sidebar-theme-demo-options-tab" data-toggle="tab"><i
					class="fa fa-wrench"></i></a></li>
			<li class="active"><a
				href="#control-sidebar-theme-demo-options-tab" data-toggle="tab"><i
					class="fa fa-wrench"></i></a></li>
			<li><a href="#control-sidebar-home-tab" data-toggle="tab"><i
					class="fa fa-home"></i></a></li>
			<li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i
					class="fa fa-gears"></i></a></li>
		</ul>
		<!-- Tab panes -->
		<div class="tab-content">
			<!-- Home tab content -->
			<div class="tab-pane" id="control-sidebar-home-tab">
				<h3 class="control-sidebar-heading">Recent Activity</h3>
				<ul class="control-sidebar-menu">
					<li><a href="javascript::;"> <i
							class="menu-icon fa fa-birthday-cake bg-red"></i>
							<div class="menu-info">
								<h4 class="control-sidebar-subheading">Langdon's Birthday</h4>
								<p>Will be 23 on April 24th</p>
							</div>
					</a></li>
					<li><a href="javascript::;"> <i
							class="menu-icon fa fa-user bg-yellow"></i>
							<div class="menu-info">
								<h4 class="control-sidebar-subheading">Frodo Updated His
									Profile</h4>
								<p>New phone +1(800)555-1234</p>
							</div>
					</a></li>
					<li><a href="javascript::;"> <i
							class="menu-icon fa fa-envelope-o bg-light-blue"></i>
							<div class="menu-info">
								<h4 class="control-sidebar-subheading">Nora Joined Mailing
									List</h4>
								<p>nora@example.com</p>
							</div>
					</a></li>
					<li><a href="javascript::;"> <i
							class="menu-icon fa fa-file-code-o bg-green"></i>
							<div class="menu-info">
								<h4 class="control-sidebar-subheading">Cron Job 254
									Executed</h4>
								<p>Execution time 5 seconds</p>
							</div>
					</a></li>
				</ul>
				<!-- /.control-sidebar-menu -->

				<h3 class="control-sidebar-heading">Tasks Progress</h3>
				<ul class="control-sidebar-menu">
					<li><a href="javascript::;">
							<h4 class="control-sidebar-subheading">
								Custom Template Design <span
									class="label label-danger pull-right">70%</span>
							</h4>
							<div class="progress progress-xxs">
								<div class="progress-bar progress-bar-danger" style="width: 70%"></div>
							</div>
					</a></li>
					<li><a href="javascript::;">
							<h4 class="control-sidebar-subheading">
								Update Resume <span class="label label-success pull-right">95%</span>
							</h4>
							<div class="progress progress-xxs">
								<div class="progress-bar progress-bar-success"
									style="width: 95%"></div>
							</div>
					</a></li>
					<li><a href="javascript::;">
							<h4 class="control-sidebar-subheading">
								Laravel Integration <span class="label label-warning pull-right">50%</span>
							</h4>
							<div class="progress progress-xxs">
								<div class="progress-bar progress-bar-warning"
									style="width: 50%"></div>
							</div>
					</a></li>
					<li><a href="javascript::;">
							<h4 class="control-sidebar-subheading">
								Back End Framework <span class="label label-primary pull-right">68%</span>
							</h4>
							<div class="progress progress-xxs">
								<div class="progress-bar progress-bar-primary"
									style="width: 68%"></div>
							</div>
					</a></li>
				</ul>
				<!-- /.control-sidebar-menu -->

			</div>
			<div id="control-sidebar-theme-demo-options-tab"
				class="tab-pane active">
				<div>
					<h4 class="control-sidebar-heading">Layout Options</h4>
					<div class="form-group">
						<label class="control-sidebar-subheading"><input
							type="checkbox" data-layout="fixed" class="pull-right">
							Fixed layout</label>
						<p>Activate the fixed layout. You can't use fixed and boxed
							layouts together</p>
					</div>
					<div class="form-group">
						<label class="control-sidebar-subheading"><input
							type="checkbox" data-layout="layout-boxed" class="pull-right">
							Boxed Layout</label>
						<p>Activate the boxed layout</p>
					</div>
					<div class="form-group">
						<label class="control-sidebar-subheading"><input
							type="checkbox" data-layout="sidebar-collapse" class="pull-right">
							Toggle Sidebar</label>
						<p>Toggle the left sidebar's state (open or collapse)</p>
					</div>
					<div class="form-group">
						<label class="control-sidebar-subheading"><input
							type="checkbox" data-enable="expandOnHover" class="pull-right">
							Sidebar Expand on Hover</label>
						<p>Let the sidebar mini expand on hover</p>
					</div>
					<div class="form-group">
						<label class="control-sidebar-subheading"><input
							type="checkbox" data-controlsidebar="control-sidebar-open"
							class="pull-right"> Toggle Right Sidebar Slide</label>
						<p>Toggle between slide over content and push content effects</p>
					</div>
					<div class="form-group">
						<label class="control-sidebar-subheading"><input
							type="checkbox" data-sidebarskin="toggle" class="pull-right">
							Toggle Right Sidebar Skin</label>
						<p>Toggle between dark and light skins for the right sidebar</p>
					</div>
					<h4 class="control-sidebar-heading">Skins</h4>
					<ul class="list-unstyled clearfix">
						<li style="float: left; width: 33.33333%; padding: 5px;"><a
							href="javascript:void(0);" data-skin="skin-blue"
							style="display: block; box-shadow: 0 0 3px rgba(0, 0, 0, 0.4)"
							class="clearfix full-opacity-hover"><div>
									<span
										style="display: block; width: 20%; float: left; height: 7px; background: #367fa9;"></span><span
										class="bg-light-blue"
										style="display: block; width: 80%; float: left; height: 7px;"></span>
								</div>
								<div>
									<span
										style="display: block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span
										style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span>
								</div></a>
							<p class="text-center no-margin">Blue</p></li>
						<li style="float: left; width: 33.33333%; padding: 5px;"><a
							href="javascript:void(0);" data-skin="skin-black"
							style="display: block; box-shadow: 0 0 3px rgba(0, 0, 0, 0.4)"
							class="clearfix full-opacity-hover"><div
									style="box-shadow: 0 0 2px rgba(0, 0, 0, 0.1)" class="clearfix">
									<span
										style="display: block; width: 20%; float: left; height: 7px; background: #fefefe;"></span><span
										style="display: block; width: 80%; float: left; height: 7px; background: #fefefe;"></span>
								</div>
								<div>
									<span
										style="display: block; width: 20%; float: left; height: 20px; background: #222;"></span><span
										style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span>
								</div></a>
							<p class="text-center no-margin">Black</p></li>
						<li style="float: left; width: 33.33333%; padding: 5px;"><a
							href="javascript:void(0);" data-skin="skin-purple"
							style="display: block; box-shadow: 0 0 3px rgba(0, 0, 0, 0.4)"
							class="clearfix full-opacity-hover"><div>
									<span
										style="display: block; width: 20%; float: left; height: 7px;"
										class="bg-purple-active"></span><span class="bg-purple"
										style="display: block; width: 80%; float: left; height: 7px;"></span>
								</div>
								<div>
									<span
										style="display: block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span
										style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span>
								</div></a>
							<p class="text-center no-margin">Purple</p></li>
						<li style="float: left; width: 33.33333%; padding: 5px;"><a
							href="javascript:void(0);" data-skin="skin-green"
							style="display: block; box-shadow: 0 0 3px rgba(0, 0, 0, 0.4)"
							class="clearfix full-opacity-hover"><div>
									<span
										style="display: block; width: 20%; float: left; height: 7px;"
										class="bg-green-active"></span><span class="bg-green"
										style="display: block; width: 80%; float: left; height: 7px;"></span>
								</div>
								<div>
									<span
										style="display: block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span
										style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span>
								</div></a>
							<p class="text-center no-margin">Green</p></li>
						<li style="float: left; width: 33.33333%; padding: 5px;"><a
							href="javascript:void(0);" data-skin="skin-red"
							style="display: block; box-shadow: 0 0 3px rgba(0, 0, 0, 0.4)"
							class="clearfix full-opacity-hover"><div>
									<span
										style="display: block; width: 20%; float: left; height: 7px;"
										class="bg-red-active"></span><span class="bg-red"
										style="display: block; width: 80%; float: left; height: 7px;"></span>
								</div>
								<div>
									<span
										style="display: block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span
										style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span>
								</div></a>
							<p class="text-center no-margin">Red</p></li>
						<li style="float: left; width: 33.33333%; padding: 5px;"><a
							href="javascript:void(0);" data-skin="skin-yellow"
							style="display: block; box-shadow: 0 0 3px rgba(0, 0, 0, 0.4)"
							class="clearfix full-opacity-hover"><div>
									<span
										style="display: block; width: 20%; float: left; height: 7px;"
										class="bg-yellow-active"></span><span class="bg-yellow"
										style="display: block; width: 80%; float: left; height: 7px;"></span>
								</div>
								<div>
									<span
										style="display: block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span
										style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span>
								</div></a>
							<p class="text-center no-margin">Yellow</p></li>
						<li style="float: left; width: 33.33333%; padding: 5px;"><a
							href="javascript:void(0);" data-skin="skin-blue-light"
							style="display: block; box-shadow: 0 0 3px rgba(0, 0, 0, 0.4)"
							class="clearfix full-opacity-hover"><div>
									<span
										style="display: block; width: 20%; float: left; height: 7px; background: #367fa9;"></span><span
										class="bg-light-blue"
										style="display: block; width: 80%; float: left; height: 7px;"></span>
								</div>
								<div>
									<span
										style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span
										style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span>
								</div></a>
							<p class="text-center no-margin" style="font-size: 12px">Blue
								Light</p></li>
						<li style="float: left; width: 33.33333%; padding: 5px;"><a
							href="javascript:void(0);" data-skin="skin-black-light"
							style="display: block; box-shadow: 0 0 3px rgba(0, 0, 0, 0.4)"
							class="clearfix full-opacity-hover"><div
									style="box-shadow: 0 0 2px rgba(0, 0, 0, 0.1)" class="clearfix">
									<span
										style="display: block; width: 20%; float: left; height: 7px; background: #fefefe;"></span><span
										style="display: block; width: 80%; float: left; height: 7px; background: #fefefe;"></span>
								</div>
								<div>
									<span
										style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span
										style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span>
								</div></a>
							<p class="text-center no-margin" style="font-size: 12px">Black
								Light</p></li>
						<li style="float: left; width: 33.33333%; padding: 5px;"><a
							href="javascript:void(0);" data-skin="skin-purple-light"
							style="display: block; box-shadow: 0 0 3px rgba(0, 0, 0, 0.4)"
							class="clearfix full-opacity-hover"><div>
									<span
										style="display: block; width: 20%; float: left; height: 7px;"
										class="bg-purple-active"></span><span class="bg-purple"
										style="display: block; width: 80%; float: left; height: 7px;"></span>
								</div>
								<div>
									<span
										style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span
										style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span>
								</div></a>
							<p class="text-center no-margin" style="font-size: 12px">Purple
								Light</p></li>
						<li style="float: left; width: 33.33333%; padding: 5px;"><a
							href="javascript:void(0);" data-skin="skin-green-light"
							style="display: block; box-shadow: 0 0 3px rgba(0, 0, 0, 0.4)"
							class="clearfix full-opacity-hover"><div>
									<span
										style="display: block; width: 20%; float: left; height: 7px;"
										class="bg-green-active"></span><span class="bg-green"
										style="display: block; width: 80%; float: left; height: 7px;"></span>
								</div>
								<div>
									<span
										style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span
										style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span>
								</div></a>
							<p class="text-center no-margin" style="font-size: 12px">Green
								Light</p></li>
						<li style="float: left; width: 33.33333%; padding: 5px;"><a
							href="javascript:void(0);" data-skin="skin-red-light"
							style="display: block; box-shadow: 0 0 3px rgba(0, 0, 0, 0.4)"
							class="clearfix full-opacity-hover"><div>
									<span
										style="display: block; width: 20%; float: left; height: 7px;"
										class="bg-red-active"></span><span class="bg-red"
										style="display: block; width: 80%; float: left; height: 7px;"></span>
								</div>
								<div>
									<span
										style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span
										style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span>
								</div></a>
							<p class="text-center no-margin" style="font-size: 12px">Red
								Light</p></li>
						<li style="float: left; width: 33.33333%; padding: 5px;"><a
							href="javascript:void(0);" data-skin="skin-yellow-light"
							style="display: block; box-shadow: 0 0 3px rgba(0, 0, 0, 0.4)"
							class="clearfix full-opacity-hover"><div>
									<span
										style="display: block; width: 20%; float: left; height: 7px;"
										class="bg-yellow-active"></span><span class="bg-yellow"
										style="display: block; width: 80%; float: left; height: 7px;"></span>
								</div>
								<div>
									<span
										style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span
										style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span>
								</div></a>
							<p class="text-center no-margin" style="font-size: 12px;">Yellow
								Light</p></li>
					</ul>
				</div>
			</div>
			<div id="control-sidebar-theme-demo-options-tab"
				class="tab-pane active">
				<div>
					<h4 class="control-sidebar-heading">Layout Options</h4>
					<div class="form-group">
						<label class="control-sidebar-subheading"><input
							type="checkbox" data-layout="fixed" class="pull-right">
							Fixed layout</label>
						<p>Activate the fixed layout. You can't use fixed and boxed
							layouts together</p>
					</div>
					<div class="form-group">
						<label class="control-sidebar-subheading"><input
							type="checkbox" data-layout="layout-boxed" class="pull-right">
							Boxed Layout</label>
						<p>Activate the boxed layout</p>
					</div>
					<div class="form-group">
						<label class="control-sidebar-subheading"><input
							type="checkbox" data-layout="sidebar-collapse" class="pull-right">
							Toggle Sidebar</label>
						<p>Toggle the left sidebar's state (open or collapse)</p>
					</div>
					<div class="form-group">
						<label class="control-sidebar-subheading"><input
							type="checkbox" data-enable="expandOnHover" class="pull-right">
							Sidebar Expand on Hover</label>
						<p>Let the sidebar mini expand on hover</p>
					</div>
					<div class="form-group">
						<label class="control-sidebar-subheading"><input
							type="checkbox" data-controlsidebar="control-sidebar-open"
							class="pull-right"> Toggle Right Sidebar Slide</label>
						<p>Toggle between slide over content and push content effects</p>
					</div>
					<div class="form-group">
						<label class="control-sidebar-subheading"><input
							type="checkbox" data-sidebarskin="toggle" class="pull-right">
							Toggle Right Sidebar Skin</label>
						<p>Toggle between dark and light skins for the right sidebar</p>
					</div>
					<h4 class="control-sidebar-heading">Skins</h4>
					<ul class="list-unstyled clearfix">
						<li style="float: left; width: 33.33333%; padding: 5px;"><a
							href="javascript:void(0);" data-skin="skin-blue"
							style="display: block; box-shadow: 0 0 3px rgba(0, 0, 0, 0.4)"
							class="clearfix full-opacity-hover"><div>
									<span
										style="display: block; width: 20%; float: left; height: 7px; background: #367fa9;"></span><span
										class="bg-light-blue"
										style="display: block; width: 80%; float: left; height: 7px;"></span>
								</div>
								<div>
									<span
										style="display: block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span
										style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span>
								</div></a>
							<p class="text-center no-margin">Blue</p></li>
						<li style="float: left; width: 33.33333%; padding: 5px;"><a
							href="javascript:void(0);" data-skin="skin-black"
							style="display: block; box-shadow: 0 0 3px rgba(0, 0, 0, 0.4)"
							class="clearfix full-opacity-hover"><div
									style="box-shadow: 0 0 2px rgba(0, 0, 0, 0.1)" class="clearfix">
									<span
										style="display: block; width: 20%; float: left; height: 7px; background: #fefefe;"></span><span
										style="display: block; width: 80%; float: left; height: 7px; background: #fefefe;"></span>
								</div>
								<div>
									<span
										style="display: block; width: 20%; float: left; height: 20px; background: #222;"></span><span
										style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span>
								</div></a>
							<p class="text-center no-margin">Black</p></li>
						<li style="float: left; width: 33.33333%; padding: 5px;"><a
							href="javascript:void(0);" data-skin="skin-purple"
							style="display: block; box-shadow: 0 0 3px rgba(0, 0, 0, 0.4)"
							class="clearfix full-opacity-hover"><div>
									<span
										style="display: block; width: 20%; float: left; height: 7px;"
										class="bg-purple-active"></span><span class="bg-purple"
										style="display: block; width: 80%; float: left; height: 7px;"></span>
								</div>
								<div>
									<span
										style="display: block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span
										style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span>
								</div></a>
							<p class="text-center no-margin">Purple</p></li>
						<li style="float: left; width: 33.33333%; padding: 5px;"><a
							href="javascript:void(0);" data-skin="skin-green"
							style="display: block; box-shadow: 0 0 3px rgba(0, 0, 0, 0.4)"
							class="clearfix full-opacity-hover"><div>
									<span
										style="display: block; width: 20%; float: left; height: 7px;"
										class="bg-green-active"></span><span class="bg-green"
										style="display: block; width: 80%; float: left; height: 7px;"></span>
								</div>
								<div>
									<span
										style="display: block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span
										style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span>
								</div></a>
							<p class="text-center no-margin">Green</p></li>
						<li style="float: left; width: 33.33333%; padding: 5px;"><a
							href="javascript:void(0);" data-skin="skin-red"
							style="display: block; box-shadow: 0 0 3px rgba(0, 0, 0, 0.4)"
							class="clearfix full-opacity-hover"><div>
									<span
										style="display: block; width: 20%; float: left; height: 7px;"
										class="bg-red-active"></span><span class="bg-red"
										style="display: block; width: 80%; float: left; height: 7px;"></span>
								</div>
								<div>
									<span
										style="display: block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span
										style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span>
								</div></a>
							<p class="text-center no-margin">Red</p></li>
						<li style="float: left; width: 33.33333%; padding: 5px;"><a
							href="javascript:void(0);" data-skin="skin-yellow"
							style="display: block; box-shadow: 0 0 3px rgba(0, 0, 0, 0.4)"
							class="clearfix full-opacity-hover"><div>
									<span
										style="display: block; width: 20%; float: left; height: 7px;"
										class="bg-yellow-active"></span><span class="bg-yellow"
										style="display: block; width: 80%; float: left; height: 7px;"></span>
								</div>
								<div>
									<span
										style="display: block; width: 20%; float: left; height: 20px; background: #222d32;"></span><span
										style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span>
								</div></a>
							<p class="text-center no-margin">Yellow</p></li>
						<li style="float: left; width: 33.33333%; padding: 5px;"><a
							href="javascript:void(0);" data-skin="skin-blue-light"
							style="display: block; box-shadow: 0 0 3px rgba(0, 0, 0, 0.4)"
							class="clearfix full-opacity-hover"><div>
									<span
										style="display: block; width: 20%; float: left; height: 7px; background: #367fa9;"></span><span
										class="bg-light-blue"
										style="display: block; width: 80%; float: left; height: 7px;"></span>
								</div>
								<div>
									<span
										style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span
										style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span>
								</div></a>
							<p class="text-center no-margin" style="font-size: 12px">Blue
								Light</p></li>
						<li style="float: left; width: 33.33333%; padding: 5px;"><a
							href="javascript:void(0);" data-skin="skin-black-light"
							style="display: block; box-shadow: 0 0 3px rgba(0, 0, 0, 0.4)"
							class="clearfix full-opacity-hover"><div
									style="box-shadow: 0 0 2px rgba(0, 0, 0, 0.1)" class="clearfix">
									<span
										style="display: block; width: 20%; float: left; height: 7px; background: #fefefe;"></span><span
										style="display: block; width: 80%; float: left; height: 7px; background: #fefefe;"></span>
								</div>
								<div>
									<span
										style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span
										style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span>
								</div></a>
							<p class="text-center no-margin" style="font-size: 12px">Black
								Light</p></li>
						<li style="float: left; width: 33.33333%; padding: 5px;"><a
							href="javascript:void(0);" data-skin="skin-purple-light"
							style="display: block; box-shadow: 0 0 3px rgba(0, 0, 0, 0.4)"
							class="clearfix full-opacity-hover"><div>
									<span
										style="display: block; width: 20%; float: left; height: 7px;"
										class="bg-purple-active"></span><span class="bg-purple"
										style="display: block; width: 80%; float: left; height: 7px;"></span>
								</div>
								<div>
									<span
										style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span
										style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span>
								</div></a>
							<p class="text-center no-margin" style="font-size: 12px">Purple
								Light</p></li>
						<li style="float: left; width: 33.33333%; padding: 5px;"><a
							href="javascript:void(0);" data-skin="skin-green-light"
							style="display: block; box-shadow: 0 0 3px rgba(0, 0, 0, 0.4)"
							class="clearfix full-opacity-hover"><div>
									<span
										style="display: block; width: 20%; float: left; height: 7px;"
										class="bg-green-active"></span><span class="bg-green"
										style="display: block; width: 80%; float: left; height: 7px;"></span>
								</div>
								<div>
									<span
										style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span
										style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span>
								</div></a>
							<p class="text-center no-margin" style="font-size: 12px">Green
								Light</p></li>
						<li style="float: left; width: 33.33333%; padding: 5px;"><a
							href="javascript:void(0);" data-skin="skin-red-light"
							style="display: block; box-shadow: 0 0 3px rgba(0, 0, 0, 0.4)"
							class="clearfix full-opacity-hover"><div>
									<span
										style="display: block; width: 20%; float: left; height: 7px;"
										class="bg-red-active"></span><span class="bg-red"
										style="display: block; width: 80%; float: left; height: 7px;"></span>
								</div>
								<div>
									<span
										style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span
										style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span>
								</div></a>
							<p class="text-center no-margin" style="font-size: 12px">Red
								Light</p></li>
						<li style="float: left; width: 33.33333%; padding: 5px;"><a
							href="javascript:void(0);" data-skin="skin-yellow-light"
							style="display: block; box-shadow: 0 0 3px rgba(0, 0, 0, 0.4)"
							class="clearfix full-opacity-hover"><div>
									<span
										style="display: block; width: 20%; float: left; height: 7px;"
										class="bg-yellow-active"></span><span class="bg-yellow"
										style="display: block; width: 80%; float: left; height: 7px;"></span>
								</div>
								<div>
									<span
										style="display: block; width: 20%; float: left; height: 20px; background: #f9fafc;"></span><span
										style="display: block; width: 80%; float: left; height: 20px; background: #f4f5f7;"></span>
								</div></a>
							<p class="text-center no-margin" style="font-size: 12px;">Yellow
								Light</p></li>
					</ul>
				</div>
			</div>
			<!-- /.tab-pane -->
			<!-- Stats tab content -->
			<div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab
				Content</div>
			<!-- /.tab-pane -->
			<!-- Settings tab content -->
			<div class="tab-pane" id="control-sidebar-settings-tab">
				<form method="post">
					<h3 class="control-sidebar-heading">General Settings</h3>
					<div class="form-group">
						<label class="control-sidebar-subheading"> Report panel
							usage <input type="checkbox" class="pull-right" checked="">
						</label>
						<p>Some information about this general settings option</p>
					</div>
					<!-- /.form-group -->

					<div class="form-group">
						<label class="control-sidebar-subheading"> Allow mail
							redirect <input type="checkbox" class="pull-right" checked="">
						</label>
						<p>Other sets of options are available</p>
					</div>
					<!-- /.form-group -->

					<div class="form-group">
						<label class="control-sidebar-subheading"> Expose author
							name in posts <input type="checkbox" class="pull-right"
							checked="">
						</label>
						<p>Allow the user to show his name in blog posts</p>
					</div>
					<!-- /.form-group -->

					<h3 class="control-sidebar-heading">Chat Settings</h3>

					<div class="form-group">
						<label class="control-sidebar-subheading"> Show me as
							online <input type="checkbox" class="pull-right" checked="">
						</label>
					</div>
					<!-- /.form-group -->

					<div class="form-group">
						<label class="control-sidebar-subheading"> Turn off
							notifications <input type="checkbox" class="pull-right">
						</label>
					</div>
					<!-- /.form-group -->

					<div class="form-group">
						<label class="control-sidebar-subheading"> Delete chat
							history <a href="javascript::;" class="text-red pull-right"><i
								class="fa fa-trash-o"></i></a>
						</label>
					</div>
					<!-- /.form-group -->
				</form>
			</div>
			<!-- /.tab-pane -->
		</div>
	</aside>
	<!-- /.control-sidebar -->
	<!-- Add the sidebar's background. This div must be placed
immediately after the control sidebar -->
	<div class="control-sidebar-bg" style="position: fixed; height: auto;"></div>
	<!-- ./wrapper -->

	<!-- jQuery 2.1.4 -->
	<script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
	<!-- jQuery UI 1.11.4 -->
	<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<script>
		$.widget.bridge('uibutton', $.ui.button);
	</script>
	<!-- Bootstrap 3.3.5 -->
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<!-- Morris.js charts -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
	<script src="plugins/morris/morris.min.js"></script>
	<!-- Sparkline -->
	<script src="plugins/sparkline/jquery.sparkline.min.js"></script>
	<!-- jvectormap -->
	<script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<!-- jQuery Knob Chart -->
	<script src="plugins/knob/jquery.knob.js"></script>
	<!-- daterangepicker -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js"></script>
	<script src="plugins/daterangepicker/daterangepicker.js"></script>
	<!-- datepicker -->
	<script src="plugins/datepicker/bootstrap-datepicker.js"></script>
	<!-- Bootstrap WYSIHTML5 -->
	<script
		src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
	<!-- Slimscroll -->
	<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script src="plugins/fastclick/fastclick.min.js"></script>
	<!-- AdminLTE App -->
	<script src="dist/js/app.min.js"></script>
	<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
	<script src="dist/js/pages/dashboard.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="dist/js/demo.js"></script>


	<div class="jvectormap-label"></div>
	<div class="jvectormap-label"></div>
</body>
</html>