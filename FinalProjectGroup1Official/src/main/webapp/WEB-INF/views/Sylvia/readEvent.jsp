<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

<title>On The Way Admin-Event</title>
 <!-- Custom fonts for this template -->
    <link href="AdminTemplate/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Bootstrap core JavaScript-->
    <script src="<%=basePath%>/AdminTemplate/vendor/jquery/jquery.min.js"></script>
    <script src="<%=basePath%>/AdminTemplate/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Custom styles for this template -->
    <link href="AdminTemplate/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="AdminTemplate/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
    
    
     <!-- sweetAlert -->
    <link rel="stylesheet" href="https://npmcdn.com/sweetalert2@4.0.15/dist/sweetalert2.min.css">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"
	type="text/javascript"></script>
<script src="https://npmcdn.com/sweetalert2@4.0.15/dist/sweetalert2.min.js"></script>
    
    
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
                                        <div class="small text-gray-500">Emily Fowler ?? 58m</div>
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
                                        <div class="small text-gray-500">Jae Chun ?? 1d</div>
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
                                        <div class="small text-gray-500">Morgan Alvarez ?? 2d</div>
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
                                        <div class="small text-gray-500">Chicken the Dog ?? 2w</div>
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
                    <h1 class="h3 mb-2 text-gray-800"> ?????????????????? </h1>
                    <P align="right"> <a href="<c:url value='/queryEvent'/>">????????????????????????</a> 
                    </P>
                   <!-- 
                    <p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below.
                        For more information about DataTables, please visit the <a target="_blank"
                            href="https://datatables.net">official DataTables documentation</a>.</p>
                         -->
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">??????????????????</h6>
                        </div>
                        <div class="card-body">
                         
                
        
<br>

<%-- 	    <form:form method="POST" modelAttribute="place" >  --%>

	<form:form id='myform' method="POST" modelAttribute="event" enctype='multipart/form-data'>
	
	<!-- <c:choose>
		<c:when test='${event.id == null}'>
	 <tr>
		    	<td>&nbsp;</td>
		    	<td>
	   	  		   &nbsp;
	   	  		</td>
		    </tr>
        </c:when>	   
    	<c:otherwise>
	 	 <tr>
	       <td>?????????<br>&nbsp;</td>
	   	   <td><form:hidden path='id'/>
	   	    	${event.id}<br>&nbsp;
	   	   </td>
	    </tr>
       </c:otherwise>   
       
    </c:choose>    

	  -->
	  
	  <!-- group1  -->
	  <div class="form-group row"> 
	   <div class="col-sm-6 mb-3 mb-sm-0">
	   <tr>
	      <td>?????????</td>
	      <td  width=''>
	      	<form:input path="Id" style='width:100%;height:40px;' /><br>&nbsp;	
		      <form:errors path='Id' cssClass="error"/>
		  </td>
	   <tr>
	   </div>
		 <div class="col-sm-6">
	   
	    <tr>
	      <td>?????????</td>
	   	  <td>
	   	  	 <form:input path="price" style='width:100%;height:40px;'  /><br>&nbsp;
	   	  	 <form:errors path='price'  cssClass="error" />
	   	  </td>
	      </tr>
	 </div> 
	 </div>
	   
	   
	  <!-- group2  --> 
	  <div class="form-group row">
	    <div class="col-sm-12 mb-3 mb-sm-0">
	      <td>?????????</td>
	      <td  width='360'>
	      	<form:input path="name" style='width:100%;height:40px;' /><br>&nbsp;	
		      <form:errors path='name' cssClass="error"/>
		  </td>
		</div>
		<div class="col-sm-12 mb-3 mb-sm-0">
		   <td>?????????</td>
	   	  <td>
	      	<form:input path="address" style='width:100%;height:40px;' /><br>&nbsp;	
		      <form:errors path='address' cssClass="error"/>
		  </td>
		</div>  
	     </tr>
	   
	 </div>
	   
	   
	   <!-- group3  -->
	 <div class="form-group row"> 
	   <div class="col-sm-6 mb-3 mb-sm-0">
	   <tr>
	      <td>?????????</td>
	        <td  width=''>
	      	<form:input path="longitude" style='width:100%;height:40px;' /><br>&nbsp;	
		      <form:errors path='longitude' cssClass="error"/>
		  </td>
		  </tr>
		 </div>
		 <div class="col-sm-6">
		 <tr>
	      <td>?????????</td>
		  <td  width=''>
		  <form:input path='latitude' style='width:100%;height:40px;' /><br>&nbsp;	
		      <form:errors path='latitude' cssClass="error"/>
		  </td>
	   </tr>
	 </div> 
	 </div>
	 
	 	   
	 <!-- group4  --> 
	   <div class="form-group row"> 
	    <div class="col-sm-12 mb-3 mb-sm-0">	  
	   	  <tr>
	      <td>?????????</td>
	   	  <td>
	   	      <form:input path="content"  id="scontent" style='width:100%;height:40px;'  /><br>&nbsp;
	   	  	  <form:errors path='content'  cssClass="error" />
	   	  </td>
	   	  </tr>
	   	  </div>
	   	  <div class="col-sm-12 mb-3 mb-sm-0">
	   	  <tr>
	   	  <td>?????????<br>&nbsp;</td>
	   	  <td>
	   	  	<form:input path="eventImage" type='file'  /><br>&nbsp;
	   	  	 <form:errors path="eventImage"  cssClass="error" />
	   	  </td>
	   </tr>
	   </div>
	   <div class="col-sm-12 mb-3 mb-sm-0">
	   
	   <!-- ???????????? -->
	   
	  
         <table>
	   
	   <tr>
	    <td colspan='4' align='center'><br>&nbsp;
	  <!--     
	  <input type='submit' id='ok1' class='btn btn-primary btn-icon-split btn-lg ' style='width:120px;height:40px;'>
	   -->
	      <button  type='button'  id='subbtn'  class='btn btn-primary btn-icon-split btn-lg ' style='width:120px;height:40px;' > ??????</button>
	      <input type='reset' class='btn btn-primary btn-icon-split btn-lg ' style='width:120px;height:40px;'>
	     <input class='btn btn-primary btn-icon-split btn-lg ' style='width:120px;height:40px;'
            type='button' onclick="inport()" value='????????????'>
	 
        </td>
	   </tr>
	     </table>
      
	   
	   <script>
         $(document).ready(function() {
          $('#EventV1').DataTable();
         });
         
         function inport() {

          document.getElementById("Id").value = "24847";
          document.getElementById("name").value = "???????????????????????????????????????";
          document.getElementById("price").value = "690";
          
          
          document.getElementById("longitude").value = "25.897199";
          document.getElementById("latitude").value = "121.56667";
          document.getElementById("address").value = "??????????????????????????????362???";
          document.getElementById("scontent").value = "?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????3~5????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????";
        //  document.getElementById("tip3").value = "????????????";
          
          
          
         };
         
         
         //sweetalert ok1
        // $(".demo_2 ").click(function() {
         //           swal("Good!", "???????????????????????????????????????", "success");
         //       });
//           subbtn = document.getElementById("subbtn");
        
        
         $('#subbtn').click(function(){
        		 var form = document.getElementById('myform');
        		 var x = document.forms["myform"]["Id"].value;
		           var y = document.forms["myform"]["price"].value;
		           var z = document.forms["myform"]["name"].value;
		           if (x!=""&&y!=""&&z!="") {
        			 swal({
        				    title: "????????????!",
        				    text: " ",
        				    type: "success"
        				}).then(function(){
        				form.submit()
        				})
        		 }else  {
		        	   swal({
			                title: "????????????!",
			                text: " ",
			                type: "error"})
		           }
        				
        		 
        		 })
            
        
        
        

//         $("#subbtn").on('click', function(e){
//                  e.preventDefault();
              
                 
//                  $("#myform").submit()then(function(){Swal.fire(
//                          "????????????", //?????? 
//                          " ", //????????????(?????????)
//                           "success" //??????(?????????) success/info/warning/error/question
//                           //???????????????https://sweetalert2.github.io/#icons
                         
//                       )});
                      
                     	 
                  
//                     });
         
       //  document.getElementById("ok1").addEventListener("click",function(){
       // 	 setTimeout(function(){swal("????????????","${event.id} ????????????!","success"); },100);
       // 	 setTimeout(function(){window.location.reload(); },2000);
         
       //    });
        </script>
	   
	   
	   </div>
	   
	   </div>
		 
	</form:form>

<br>
<!-- <a href="<c:url value='/'/> " >?????????</a> -->


                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

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
                        <span aria-hidden="true">??</span>
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


    <!-- Core plugin JavaScript-->
    <script src="<%=basePath%>/AdminTemplate/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="<%=basePath%>/AdminTemplate/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="<%=basePath%>/AdminTemplate/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="<%=basePath%>/AdminTemplate/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="<%=basePath%>/AdminTemplate/js/demo/datatables-demo.js"></script>
    
   

</body>

</html>