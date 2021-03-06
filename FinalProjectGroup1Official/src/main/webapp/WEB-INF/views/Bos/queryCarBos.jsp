
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta charset="UTF-8">
<title>On The Way Admin-Blog</title>
<!-- Custom fonts for this template -->
<link href="AdminTemplate/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="AdminTemplate/css/sb-admin-2.min.css" rel="stylesheet">

<!-- Custom styles for this page -->
<link href="AdminTemplate/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">




</head>
<body>
<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		  <%@include file="../Universal/ManagerNarbar.jsp" %>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<!-- Sidebar Toggle (Topbar) -->
					<form class="form-inline">
						<button id="sidebarToggleTop"
							class="btn btn-link d-md-none rounded-circle mr-3">
							<i class="fa fa-bars"></i>
						</button>
					</form>

					<!-- Topbar Search -->
					<form
						class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
						<div class="input-group">
							<input type="text" class="form-control bg-light border-0 small"
								placeholder="Search for..." aria-label="Search"
								aria-describedby="basic-addon2">
							<div class="input-group-append">
								<button class="btn btn-primary" type="button">
									<i class="fas fa-search fa-sm"></i>
								</button>
							</div>
						</div>
					</form>

					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">

						<!-- Nav Item - Search Dropdown (Visible Only XS) -->
						<li class="nav-item dropdown no-arrow d-sm-none"><a
							class="nav-link dropdown-toggle" href="#" id="searchDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
						</a> <!-- Dropdown - Messages -->
							<div
								class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
								aria-labelledby="searchDropdown">
								<form class="form-inline mr-auto w-100 navbar-search">
									<div class="input-group">
										<input type="text"
											class="form-control bg-light border-0 small"
											placeholder="Search for..." aria-label="Search"
											aria-describedby="basic-addon2">
										<div class="input-group-append">
											<button class="btn btn-primary" type="button">
												<i class="fas fa-search fa-sm"></i>
											</button>
										</div>
									</div>
								</form>
							</div></li>
						<!-- Nav Item - Alerts -->
						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle" href="#" id="alertsDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-bell fa-fw"></i> <!-- Counter - Alerts -->
								<span class="badge badge-danger badge-counter">3+</span>
						</a> <!-- Dropdown - Alerts -->
							<div
								class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="alertsDropdown">
								<h6 class="dropdown-header">Alerts Center</h6>
								<a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-primary">
											<i class="fas fa-file-alt text-white"></i>
										</div>
									</div>

									<div>
										<div class="small text-gray-500">December 12, 2019</div>
										<span class="font-weight-bold">A new monthly report is
											ready to download!</span>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-success">
											<i class="fas fa-donate text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">December 7, 2019</div>
										$290.29 has been deposited into your account!
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-warning">
											<i class="fas fa-exclamation-triangle text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">December 2, 2019</div>
										Spending Alert: We've noticed unusually high spending for your
										account.
									</div>
								</a> <a class="dropdown-item text-center small text-gray-500"
									href="#">Show All Alerts</a>
							</div></li>

						<!-- Nav Item - Messages -->
						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle" href="#" id="messagesDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-envelope fa-fw"></i>
								<!-- Counter - Messages --> <span
								class="badge badge-danger badge-counter">7</span>
						</a> <!-- Dropdown - Messages -->
							<div
								class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="messagesDropdown">
								<h6 class="dropdown-header">Message Center</h6>
								<a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle" src="img/undraw_profile_1.svg"
											alt="...">
										<div class="status-indicator bg-success"></div>
									</div>
									<div class="font-weight-bold">
										<div class="text-truncate">Hi there! I am wondering if
											you can help me with a problem I've been having.</div>
										<div class="small text-gray-500">Emily Fowler ?? 58m</div>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle" src="img/undraw_profile_2.svg"
											alt="...">
										<div class="status-indicator"></div>
									</div>
									<div>
										<div class="text-truncate">I have the photos that you
											ordered last month, how would you like them sent to you?</div>
										<div class="small text-gray-500">Jae Chun ?? 1d</div>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle" src="img/undraw_profile_3.svg"
											alt="...">
										<div class="status-indicator bg-warning"></div>
									</div>
									<div>
										<div class="text-truncate">Last month's report looks
											great, I am very happy with the progress so far, keep up the
											good work!</div>
										<div class="small text-gray-500">Morgan Alvarez ?? 2d</div>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle"
											src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="...">
										<div class="status-indicator bg-success"></div>
									</div>
									<div>
										<div class="text-truncate">Am I a good boy? The reason I
											ask is because someone told me that people say this to all
											dogs, even if they aren't good...</div>
										<div class="small text-gray-500">Chicken the Dog ?? 2w</div>
									</div>
								</a> <a class="dropdown-item text-center small text-gray-500"
									href="#">Read More Messages</a>
							</div></li>

						<div class="topbar-divider d-none d-sm-block"></div>

						<!-- Nav Item - User Information -->
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <span
								class="mr-2 d-none d-lg-inline text-gray-600 small">Douglas
									McGee</span> <img class="img-profile rounded-circle"
								src="img/undraw_profile.svg">
						</a> <!-- Dropdown - User Information -->
							<div
								class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="userDropdown">
								<a class="dropdown-item" href="#"> <i
									class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> Profile
								</a> <a class="dropdown-item" href="#"> <i
									class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
									Settings
								</a> <a class="dropdown-item" href="#"> <i
									class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
									Activity Log
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#" data-toggle="modal"
									data-target="#logoutModal"> <i
									class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
									Logout
								</a>
							</div></li>

					</ul>

				</nav>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800">????????????</h1>
					<p align=right>
						<a href="<c:url value='/bos'/>"> ????????????</a>
					</p>

					<!-- DataTales Example -->
					<div class="card shadow mb-4">
  						<!--table ?????? -->
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">????????????</h6>
						</div>
						<!--table ?????? -->
						<div class="table-responsive" id="dataArea">
							
						</div>
					</div>


				</div>
				<!-- End of Page Wrapper -->
			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright &copy; Your Website 2020</span>
					</div>
				</div>
			</footer>
			<!-- End of Footer -->
		</div>
	</div>
	<!-- End of Content Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">??</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>



	<!-- Bootstrap core JavaScript-->
	<script src="AdminTemplate/vendor/jquery/jquery.min.js"></script>
	<script src="AdminTemplate/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="AdminTemplate/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="AdminTemplate/js/sb-admin-2.min.js"></script>

<!-- 	<!-- Page level plugins --> -->
<!-- 	<script src="vendor/datatables/jquery.dataTables.min.js"></script> -->
<!-- 	<script src="vendor/datatables/dataTables.bootstrap4.min.js"></script> -->

<!-- 	<!-- Page level custom scripts --> -->
<!-- 	<script src="js/demo/datatables-demo.js"></script> -->

	<script>
		$(function(){
			let dataArea = null;
			let restname = null;
			let query = null;

		
			restname = document.getElementById("restname");
			query = document.getElementById("query");
			dataArea = document.getElementById("dataArea");
			
			showAllData();
			
			function showAllData (){
				let xhr = new XMLHttpRequest();
				xhr.open('GET', "<c:url value='/findAllBos' />", true);
				xhr.send();
				
				xhr.onreadystatechange = function() {
					if (xhr.readyState == 4 && xhr.status == 200) {
						dataArea.innerHTML = showData(xhr.responseText);
						var scriptsToLoad = [
							"AdminTemplate/vendor/datatables/jquery.dataTables.min.js", 
							"AdminTemplate/vendor/datatables/dataTables.bootstrap4.min.js",
							"AdminTemplate/js/demo/datatables-demo.js"
						]; 
						scriptsToLoad.forEach(function(src) {
							var script = document.createElement('script');
							script.src = src;
							script.async = false;
							document.body.appendChild(script);
						});
					}
				};
			}
			

				

			function showData(textData) {
				let cars = JSON.parse(textData);
				let segment = ""
				segment += `<div class="table-responsive">`
				segment += `<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">`;
				segment += 
					`<thead>
						<tr>
							<th width="">??????</th>
							<th width="">??????</th>
							<th width="">??????</th>
							<th width="5%">??????</th>
							<th width="5%">??????</th>
							<th width="5%">??????</th>
							<th width="">??????</th>
							<th width="">??????</th>
							<th width="">??????</th>
						</tr>
					</thead>`
					
				segment +=
					`<tfoot>
						<tr>
							<th>??????</th>
							<th>??????</th>
							<th>??????</th>
							<th>??????</th>
							<th>??????</th>
							<th>??????</th>
							<th>??????</th>
							<th>??????</th>
							<th>??????</th>
						</tr>
					</tfoot>`
					
				segment += "<tbody>"		
				for (n = 0; n < cars.length; n++) {
					let car = cars[n];
					let tmpurl1 = "<c:url value='/modifyCarBos/' />" + car.id;
					let tmpurl0 = "<a href='" + tmpurl1 + "'>" + car.name + "</a>";
					//	console.log( "tmpurl0",tmpurl0);
					
					segment += "<tr>";
					segment += "<td class='idX'>" + car.id + "</td>";
					segment += "<td >" + tmpurl0 + "</td>";
					segment += "<td >" + car.price + "</td>";
					segment += "<td >" + car.seat + "</td>";
					segment += "<td >" + car.suitcase + "</td>";
					segment += "<td ><a href='" + car.handbag + "'>??????</a></td>";
					segment += "<td >" + car.address + "</td>";
					//	segment += "<td ><a href="deletecar/${car.id}">Delete</a></td>";
					segment += "<td ><img width='100' height='60' src='" +car.pictureString  +"'></td>";
					segment += `<td id="DeleteBu"> <div class="btn btn-danger btn-circle btn-sm" > <i class="fas fa-trash"></i> </div> </td>`;
					segment += "</tr>";
					
					
				}
				segment += "</tbody>";
				segment += "</table>";
				segment += "</div>";
				return segment;

			}
			
			// delete 
			$('#dataArea').on('click', '#DeleteBu', function(){
				let x =  $(this).parent().index()
				let blogId = $(".idX")[x].textContent
// 				console.log(blogId)
				
				let xhr = new XMLHttpRequest();
                xhr.open("POST", "<c:url value='/deleteCarBos' />", true);
                xhr.setRequestHeader('Content-Type', "application/x-www-form-urlencoded");
                xhr.send("blogId="+blogId);
				
                xhr.onreadystatechange = function() {
                	 if(xhr.readyState == 4 && xhr.status == 200){
                		 console.log(xhr.responseText)
                		 if(xhr.responseText){
                			 console.log("OK")
                			 alert("????????????")
                			 showAllData();
                		 }
                		
                	 }
                }
                
			})
			
		})
	</script>
	
</body>

</html>