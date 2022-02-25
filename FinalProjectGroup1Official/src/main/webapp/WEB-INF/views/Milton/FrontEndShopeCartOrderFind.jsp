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
<title>租車</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="img/favicon1.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${pageContext.request.contextPath}/ProjectTemplate/css/styles.css" rel="stylesheet" />
        
 <!-- Custom fonts for this template -->
    <link href="${pageContext.request.contextPath}/AdminTemplate/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <!-- <link href="${pageContext.request.contextPath}/AdminTemplate/css/sb-admin-2.min.css" rel="stylesheet"> -->

    <!-- Custom styles for this page -->
    <link href="${pageContext.request.contextPath}/AdminTemplate/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style type="text/css">
        
        .home-banner{
        
        background-image:url(images/KKdayCar.jpg);
      
        padding: 120px 0;
        background-position: 50%;
        background-size: cover;
        color: #fff;
        position: relative;
}
.overlap {
background: rgba(51,51,51,.2);
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
}
        
    h1.title {
    font-size: 3rem;
    line-height: 1.8;
    text-align: center ;
    margin: 60px 0 5px;
    text-shadow: 0 5px 15px rgb(51 51 51 / 10%);
}    

.sub-title {
    font-size: 1rem;
    text-align: center;
    line-height: 1.4;
    margin-top: 0;
    margin-bottom: 24px;
    font-weight: 700;
    opacity: .9;
    text-shadow: 0 5px 15px rgb(51 51 51 / 10%);
}
        
        </style>


</head>
<body>
<body id="page-top">

<nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
			
             <a class="navbar-brand"  href="<c:url value="/"/>"><img src="images/OnTheWay.png"/></a>  
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                    
                    <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">住宿</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                              <!--    <li><a class="dropdown-item" href="#!">All Products</a></li>
                                <li><hr class="dropdown-divider" /></li>-->
                                <li><a class="dropdown-item" href="<c:url value="#"/>">特色行程</a></li>
                                <li><a class="dropdown-item" href="<c:url value="/ClientSpEvent"/>">城市觀光</a></li>
                            </ul>
                        </li>
                        
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">租車</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                              <!--    <li><a class="dropdown-item" href="#!">All Products</a></li>
                                <li><hr class="dropdown-divider" /></li>-->
                                <li><a class="dropdown-item" href="<c:url value="#"/>">特色行程</a></li>
                                <li><a class="dropdown-item" href="<c:url value="/ClientSpEvent"/>">城市觀光</a></li>
                            </ul>
                        </li>
                        
                        
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">活動</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                              <!--    <li><a class="dropdown-item" href="#!">All Products</a></li>
                                <li><hr class="dropdown-divider" /></li>-->
                                <li><a class="dropdown-item" href="<c:url value="#"/>">特色行程</a></li>
                                <li><a class="dropdown-item" href="<c:url value="/ClientSpEvent"/>">城市觀光</a></li>
                            </ul>
                        </li>
                        
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">部落格</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                              <!--    <li><a class="dropdown-item" href="#!">All Products</a></li>
                                <li><hr class="dropdown-divider" /></li>-->
                                <li><a class="dropdown-item" href="<c:url value="#"/>">特色行程</a></li>
                                <li><a class="dropdown-item" href="<c:url value="/ClientSpEvent"/>">城市觀光</a></li>
                            </ul>
                        </li>
                        
                    </ul>
                    <form class="d-flex">
                        <button class="btn btn-outline-info" type="submit">
                            <i class="bi-cart-fill me-1"></i>
                            Cart
                            <span class="badge bg-info text-white ms-1 rounded-pill ">0</span>
                        </button>
                    </form>
                </div>
            </div>
        </nav>
        <!-- Header-->
        <header class="home-banner">
            <div class="overlap">
                <div class="text-center text-white">
                    <h1 class="title">會員訂單查詢</h1>
<!--                     <h5 class="sub-title">我們提供各式不同的租車選擇</h5> -->
                </div>
            </div>
        </header>
        <!--  
        <div>
        <label>日期</label>
        <input type="date" id="date">&nbsp;&nbsp;
        <label>承租地點</label>
        <select id="address">
	        <option>選擇地點</option>
	        <option>台北店</option>
	        <option>桃園店</option>
	        <option>台中店</option>
	        <option>高雄店</option>
        </select>&nbsp;&nbsp;
        <button type="button" class="btn btn-primary" id="searchButton"><i class="fas fa-search"></i>查詢</button>
        </div>
        --> 
             
        <div id="tomeet">
        
        <!-- End of Sidebar -->
        

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">
	          
	              <!-- Topbar Navbar -->
	              <!-- <ul class="navbar-nav ml-auto"> -->
	
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
	                     
	         
	             <!-- End of Topbar -->
	             
	             <!-- Begin Page Content -->
	             <div class="container-fluid"> 
	        
	 
					 <!-- DataTales Example -->
				     <div class="card shadow mb-4">
				       	  <!--table 標題 -->
				          <div class="card-header py-3">
				                   
				              <h6 class="m-0 font-weight-bold text-primary">所有訂單總覽</h6>
				          </div> 
				          <!--table 內容 -->
				          <div class="table-responsive" id="dataArea">
						  
						  </div>
					</div>


				</div>
				<!-- End of Page Wrapper -->
			</div>
			<!-- End of Main Content -->
		</div>
			<!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2021</p></div>
        </footer>
        <!-- Bootstrap core JS-->
         <script src="${pageContext.request.contextPath}/AdminTemplate/vendor/jquery/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="${pageContext.request.contextPath}/ProjectTemplate/js/scripts.js"></script>
        
        
    
    
    
    
<!-- Page level plugins -->
<!--     <script src="vendor/datatables/jquery.dataTables.min.js"></script> -->
<!--     <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script> -->

    <!-- Page level custom scripts -->
<!--     <script src="js/demo/datatables-demo.js"></script> -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    
<!-- Bootstrap core JavaScript-->
<script src="${pageContext.request.contextPath}/AdminTemplate/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/AdminTemplate/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="${pageContext.request.contextPath}/AdminTemplate/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="${pageContext.request.contextPath}/AdminTemplate/js/sb-admin-2.min.js"></script>

<%-- <img  src='${pageContext.request.contextPath}/images/PDF.png' > --%>

<!-- 注意下一行 -->
<%-- <img  src="<c:url value='/images/PDF.png'  />" > --%>
 </div> 
 <!-- 查詢功能,需要修改連結,與文字 -->

  <script>
		$(function(){
			//let dataArea = null;
			let restname = null;
			let query = null;
 			let customerId = 1;
// 			console.log( "customerId",customerId);
			
			
			restname = document.getElementById("restname");
			query = document.getElementById("query");
			dataArea = document.getElementById("dataArea");
			
			showAllData();
			
			function showAllData (){
				let xhr = new XMLHttpRequest();
				xhr.open('GET', "<c:url value='/findMamberCartById'/>?customerId=" + customerId );
				xhr.send();
				
				xhr.onreadystatechange = function() {
					if (xhr.readyState == 4 && xhr.status == 200) {
						dataArea.innerHTML = showData(xhr.responseText);
						var scriptsToLoad = [
							"${pageContext.request.contextPath}/AdminTemplate/vendor/datatables/jquery.dataTables.min.js", 
							"${pageContext.request.contextPath}/AdminTemplate/vendor/datatables/dataTables.bootstrap4.min.js",
							"${pageContext.request.contextPath}/AdminTemplate/js/demo/datatables-demo.js"
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
				let obj = JSON.parse(textData);
				let forder = obj.frontOrder;
				let segment = ""
				segment += `<div class="table-responsive">`
				segment += `<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">`;
				segment += 
					`<thead>
						<tr>
							<th>訂單編號</th>
							<th>產品名稱</th>
							<th>產品價格</th>
							<th>會員編號</th>			
							<th width="50px">刪除</th>
						</tr>
					</thead>`
					
				
					
				segment += "<tbody>"		
				for (n = 0; n < forder.length; n++) {
					let f = forder[n];
					//let tmpurl1 = "<c:url value='/modifyCar/' />" + car.id;
					//let tmpurl0 = "<a href='" + tmpurl1 + "'>" + car.name + "</a>";
					//	console.log( "tmpurl0",tmpurl0);
					
					segment += "<tr>";
					segment += "<td class='idX'>" + f.userOrderId + "</td>";
					segment += "<td >" + f.productname + "</td>";
					segment += "<td >" + f.productprice + "</td>";
					segment += "<td >" + f.customerId + "</td>";
				
					//	segment += "<td ><a href="deletecar/${car.id}">Delete</a></td>";
					//segment += "<td ><img width='100' height='60' src='" +cart.pictureString  +"'></td>";
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
                xhr.open("POST", "<c:url value='/deleteCar' />", true);
                xhr.setRequestHeader('Content-Type', "application/x-www-form-urlencoded");
                xhr.send("blogId="+blogId);
				
                xhr.onreadystatechange = function() {
                	 if(xhr.readyState == 4 && xhr.status == 200){
                		 console.log(xhr.responseText)
                		 if(xhr.responseText){
                			 console.log("OK")
                			 alert("刪除成功")
                			 showAllData();
                		 }
                		
                	 }
                }
                
			})
			
		})
		
	</script> 
	
</body>
</html>