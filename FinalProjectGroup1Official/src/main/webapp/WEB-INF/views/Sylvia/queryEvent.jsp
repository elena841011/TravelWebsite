<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    
 
    
<!DOCTYPE html>
<html>
<head>
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
<meta charset="UTF-8">
<title>On The Way Admin-Event</title>
 <!-- Custom fonts for this template -->
    <link href="AdminTemplate/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="AdminTemplate/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="AdminTemplate/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
<script>

  
let dataArea = null; 
let restname = null; 
let query = null; 
window.addEventListener('load',function(){

	restname = document.getElementById("restname");
	query = document.getElementById("query");	
	dataArea = document.getElementById("dataArea");
	let xhr = new XMLHttpRequest();
	
	xhr.open('GET', "<c:url value='/findEventAll' />", true);
	xhr.onreadystatechange = function(){
		if (xhr.readyState == 4 && xhr.status == 200 ){
		 //  console.log(xhr.responseText);
			dataArea.innerHTML = showData(xhr.responseText);
		}
	};
	xhr.send();
	
	query.addEventListener('click', function(){
		let rname = restname.value;
		if (!rname){
			alert('輸入想搜尋的內容');
			return;
		}
		
		let xhr2 = new XMLHttpRequest();
		xhr2.open('GET', "<c:url value='/findByEventName' />?rname=" + rname);
		xhr2.send();
		xhr2.onreadystatechange=function(){
			if (xhr2.readyState == 4 && xhr2.status == 200){
				if(xhr2.responseText.length <= 2){
				  dataArea.innerHTML = "查無資料";
				}else{
				dataArea.innerHTML = showData(xhr2.responseText);
		  }
		}
		
	}
		
	});
		
})

//-------------------------
	  

	/*
	var deleteData = document.getElementById("deleteData");
   deleteData.addEventListener('click', (e)=> {
	   var result = confirm("確定刪除此筆記錄(帳號:" + id.value + ")?");
	   if (result) {
		    var xhr2 = new XMLHttpRequest();
	   		xhr2.open("DELETE", "<c:url value='/deleteEvent/' />" + id , true);
	   		xhr2.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
	   		xhr2.send();
	   		xhr2.onreadystatechange = function() {
						// 伺服器請求完成
	   		if (xhr2.readyState == 4 && (xhr2.status == 200 || xhr2.status == 204) ) {
	      		result = JSON.parse(xhr2.responseText);
	      		if (result.fail) {
			 		divResult.innerHTML = "<font color='red' >"
						+ result.fail + "</font>";
		  		} else if (result.success) {
		  			window.location.href = "http://localhost:8080/FinalProjectGroup1/querEvent";
	      		}                                                             
			} 
		      
		  }
	   } 
   })*/
		
	
//-------------------------

function showData(textData){
	let events =  JSON.parse(textData);
	let segment = "<table class=' table-bordered' id='dataTable' width='100%' style='table-layout:fixed;' >";
	/*
	if (size == 0){
		segment += "<tr><th colspan='8'>查無資料</th><tr>";
	} else {		
	segment += "<tr><th colspan='8'>共計" + size + "筆資料</th><tr>";
	*/
	
	segment += "<thead ><tr><th width='13%'>&nbsp; 編號 </th><th width='40%'>&nbsp; 名稱 </th><th width='7%'>&nbsp; 價格 </th><th width='24%'>&nbsp; 地址 </th><th width='11%'>&nbsp; 照片 </th><th width='5%'>&nbsp;刪除</th></tr></thead>";
	for(n = 0 ; n < events.length ; n++ ){
		let event = events[n];
		let tmpurl1 ="<c:url value='/modifyEvent/' />" + event.id;
    	let tmpurl0 = "<a href='" + tmpurl1 + "'>" + event.name  + "</a>";
    	let tmpurl2 = "<c:url value='/deleteEvent/'/>" + event.id;
    //	console.log( "tmpurl0",tmpurl0);
        segment += "<tbody >";
		segment += "<tr >";
		
		segment += "<td  >&nbsp;" + event.id +"&nbsp;</td>";
		segment += "<td >&nbsp;" + tmpurl0 +"&nbsp;</td>";
		segment += "<td >&nbsp;" + ' $ ' + event.price  +"&nbsp;</td>";
		segment += "<td >&nbsp;"+ event.address  +"&nbsp;</td>";
		segment += "<td ><img width='100' height='60' src='" +event.pictureString  +"'></td>";
		
		segment += "<td  >&nbsp;<button class='btn btn-primary btn-sm ' id='deleteData' style='width:35px;height:35px;' type='button' onClick='window.location.reload();' data-href='" + tmpurl2 +"' data-value='" + event.id+"'><i class='far fa-trash-alt'></i></button> &nbsp; </td>";
	//	segment += "<td >&nbsp;<button  type='button' id='deleteData ' data-href='" + tmpurl2 +"' data-value='" + event.id+"'>刪除</button>&nbsp; </td>";
		
		
		segment += "</tr>";
	}
		segment += "</tbody>";
//	 }
	segment += "</table>";
	segment += "</div>";
	return segment;

}

</script>
<style type="text/css">
.i{
   
   display: flex;
align-items: center;
 margin: auto;
}

</style>

</head>

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
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <form class="form-inline">
                        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                            <i class="fa fa-bars"></i>
                        </button>
                    </form>

                    <!-- Topbar Search -->
                    <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                aria-label="Search" aria-describedby="basic-addon2">
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
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
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
                            </div>
                        </li>
                        <!-- Nav Item - Alerts -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-bell fa-fw"></i>
                                <!-- Counter - Alerts -->
                                <span class="badge badge-danger badge-counter">3+</span>
                            </a>
                            <!-- Dropdown - Alerts -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="alertsDropdown">
                                <h6 class="dropdown-header">
                                    Alerts Center
                                </h6>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-primary">
                                            <i class="fas fa-file-alt text-white"></i>
                                        </div>
                                    </div>
                                    
                                    <div>
                                        <div class="small text-gray-500">December 12, 2019</div>
                                        <span class="font-weight-bold">A new monthly report is ready to download!</span>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-success">
                                            <i class="fas fa-donate text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 7, 2019</div>
                                        $290.29 has been deposited into your account!
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-warning">
                                            <i class="fas fa-exclamation-triangle text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 2, 2019</div>
                                        Spending Alert: We've noticed unusually high spending for your account.
                                    </div>
                                </a>
                                <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
                            </div>
                        </li>

                        <!-- Nav Item - Messages -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-envelope fa-fw"></i>
                                <!-- Counter - Messages -->
                                <span class="badge badge-danger badge-counter">7</span>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="messagesDropdown">
                                <h6 class="dropdown-header">
                                    Message Center
                                </h6>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="AdminTemplate/img/undraw_profile_1.svg"
                                            alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div class="font-weight-bold">
                                        <div class="text-truncate">Hi there! I am wondering if you can help me with a
                                            problem I've been having.</div>
                                        <div class="small text-gray-500">Emily Fowler · 58m</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="AdminTemplate/img/undraw_profile_2.svg"
                                            alt="...">
                                        <div class="status-indicator"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">I have the photos that you ordered last month, how
                                            would you like them sent to you?</div>
                                        <div class="small text-gray-500">Jae Chun · 1d</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="AdminTemplate/img/undraw_profile_3.svg"
                                            alt="...">
                                        <div class="status-indicator bg-warning"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">Last month's report looks great, I am very happy with
                                            the progress so far, keep up the good work!</div>
                                        <div class="small text-gray-500">Morgan Alvarez · 2d</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60"
                                            alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">Am I a good boy? The reason I ask is because someone
                                            told me that people say this to all dogs, even if they aren't good...</div>
                                        <div class="small text-gray-500">Chicken the Dog · 2w</div>
                                    </div>
                                </a>
                                <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
                            </div>
                        </li>

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Douglas McGee</span>
                                <img class="img-profile rounded-circle"
                                    src="AdminTemplate/img/undraw_profile.svg">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Profile
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Settings
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Activity Log
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                
                <!-- End of Topbar -->
                
                <!-- Begin Page Content -->
                <div class="container-fluid"> 
                
<!-- Page Heading -->    
 <h1 class="h3 mb-2 text-gray-800">活動商品管理 </h1>
<p align=right><a href="<c:url value='/sylvia'/>"> 返回上一頁</a></p>
 
 <!-- DataTales Example -->
     <div class="card shadow mb-4">
          <div class="card-header py-3">
                   
              <h6 class="m-0 font-weight-bold text-primary">所有活動商品總覽</h6>
               </div> 
                      <div class="table-responsive">
                                
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                              </table>         
                                   </div> 
<div class="card-body" >                            
<div class="row">
<div class="col-sm-12 col-md-6">
<div class="dataTables_length" id="dataTables_length">
</div>
</div>
</div>

<div class="col-sm-12 col-md-6">
<div class="input-group">

<input id='restname' type='text' class="form-control bg-light border-0 small" placeholder aria-controls="dataTable" describedby="basic-addon2"> 
<div class="input-group-append">
<button class="btn btn-primary" id='query' type="button" >
<i class="fas fa-search fa-sm"></i>
</button>
</div>
</div>
</div>
</div>

<font color='red' > &nbsp;&nbsp;&nbsp; ${successMessage} </font> &nbsp;

<hr>


<div class="card-body"  id='dataArea' >

</div>

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
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
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

    <!-- Page level plugins -->
    <script src="AdminTemplate/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="AdminTemplate/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="AdminTemplate/js/demo/datatables-demo.js"></script>
    
    <script>

		$(document.body).on("click", "button[data-href]", function () {
			console.log("click");
		   let url = this.dataset.href;
		   let id = this.dataset.value;
		   var result = confirm("確定刪除此筆記錄(帳號:" + id + ")?");
		   if (result) {
			    var xhr2 = new XMLHttpRequest();
		   		xhr2.open("DELETE", url , true);
		   		xhr2.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
		   		xhr2.send();
		   		xhr2.onreadystatechange = function() {
							// 伺服器請求完成
		   		if (xhr2.readyState == 4 && (xhr2.status == 200 || xhr2.status == 204) ) {
		      		result = JSON.parse(xhr2.responseText);
		      		if (result.fail) {
				 		divResult.innerHTML = "<font color='red' >"
							+ result.fail + "</font>";
			  		} else if (result.success) {
			  			window.location.href = "http://localhost:8080/FinalProjectGroup1/queryEvent";
		      		}                                                             
				} 
			      
			  }
		   } 
			
		});
	    	
	//	function deleteData(){
	//		if(deleteConfirm()){
	//			alert("刪除");
	//		}
	//		else{
	//			alert("取消");
	//		}
	//	}
		
    </script>
   
</body>

</html>