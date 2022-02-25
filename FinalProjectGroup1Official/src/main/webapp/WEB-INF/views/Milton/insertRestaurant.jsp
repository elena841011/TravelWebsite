<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
<meta charset="UTF-8">
<title>Shop Homepage - Start Bootstrap Template</title>
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


<style type="text/css">
   span.error {
	color: red;
	display: inline-block;
	font-size: 5pt;
	}
	
	.home-banner{
        
        background-image:url();
      
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
<meta charset="UTF-8"> 
<link rel='stylesheet' href="<c:url value='${pageContext.request.contextPath}/ProjectTemplate/css/style.css' />"type="text/css" />
</head>
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
                            <span class="badge bg-info text-white ms-1 rounded-pill ">${cartCount}</span>
                        </button>
                    </form>
                </div>
            </div>
        </nav>
        <!-- Header
        -->
        <header class="home-banner">
            <div class="overlap">
                <div class="text-center text-dark">
                    <h1 class="title">我的購物車</h1>
                    <h3 class="sub-title"><em>My Shopping Cart</em></h3>
                </div>
            </div>
        </header>

	<!-- Header -->


	<!-- Main -->
	<div align="center">
		<article id="main">
		<!-- <h2>我的購物車<br> <em>My Shopping Cart</em></h2> -->	
				<fieldset style="width: 960px;">
				<main class="container">
				&nbsp;
  <div class="bg-light p-5 rounded">
    <legend>商品項目</legend>
      
				&nbsp;
				
					<%-- 	    <form:form method="POST" modelAttribute="place" > --%>
					
					<form:form method="POST" modelAttribute="productinfo" enctype='multipart/form-data'>
						<Table>
						<td>類型：<br>&nbsp;</td>
							<td width='360'>
							<form:select path="type.typeId">
								<form:option label="請挑選" value="-1" />

								<form:options items="${typeList}" itemLabel="typeName"
											itemValue="typeId" />
							</form:select> <br>&nbsp; 
							<form:errors path='type.typeId' cssClass="error" /> 
							</td>
							<tr>

								<td>商品：<br>&nbsp;
								</td>
								<td><form:select path="type.typeId">
										<form:option label="請挑選" value="-1" />

										<form:options items="${productList}" itemLabel="productname"
											itemValue="productid" />
									</form:select> <br>&nbsp;</td>
							</tr>

							<tr>							
								<td colspan='4' align='center'><br>&nbsp;
								 <input class="btn btn-lg btn-primary" type='submit' href="#"></td>
							</tr>
						</Table>
					</form:form>

  </div>
</main>
				</fieldset>
				
				&nbsp;
				<hr>
				&nbsp;
				
       <main class="container">
         <div class="bg-light p-5 rounded">
    
			<!--  	<fieldset style="">-->
					<legend>產品內容</legend>
					&nbsp;
					<table border="1px">
						<tr>
							<th align="center">產品類型</th>
							<th align="center">產品名稱</th>
							<th class="center">價格</th>
							<th>&nbsp;</th>

						</tr>
						<c:forEach items="${productList}" var="productList">
							<tr>

								<td align="center">${productList.type.typeName}</td>
								<td align="center">${productList.productname}</td>
								<td align="center">${productList.productprice}</td>
								<td>
								<form method="post">
									<input type="hidden" name="productCode" value="${productList.productid}">
									<input type="hidden" name="customerId" value="${CurrentUser.customerID}"> 
									<input class="btn btn-sm btn-primary" type="submit" value="Add To Cart">	
								</form></td>

							</tr>
						</c:forEach>

					</table>
				</fieldset>
  
   
  </div>
</main>

                &nbsp;
				<hr>
				&nbsp;
				<main class="container">
                <div class="bg-light p-5 rounded">



				<fieldset style="width: 960px;">
					<legend>購物內容</legend>
					&nbsp;
					<table border="1px">

						<tr>
							<!--               <th>產品數量</th> -->
							<th align=center>產品類型</th>
							<th align="center">產品名稱</th>
							<th align="center">價格</th>
							<th align='center'>數量</th>
							<th align='center'>操作</th>

						</tr>
						<c:forEach var="item" items="${cart}" varStatus="status">
							<tr>
								<td>${item.productid}</td>
								<td>${item.productname}</td>
								<td>${item.productprice}</td>
								<td>${item.productquantity}</td>
								<!-- 顯示購物車有幾項商品 -->
								<%--               <c:out value="${status.index}"/> --%>



								<td>
									<form action="" method="post">
										<input type="hidden" name="todo" value="remove"> 
										<input type="hidden" name="productCode" value="${item.productid}">					
										<input class="btn btn-sm btn-primary"  type="hidden" name="cartIndex" value="${status.index}">
										<input class="btn btn-sm btn-primary"  type="submit" value="Remove Item">
										
									</form>
								</td>
							</tr>

							<br>
						</c:forEach>
					</table>
					<br>
					
					<form method = "post">
						
					</form>
					
					
					<c:url var="ContinueShopping" value="/shopeCarPage" />
					<form action="${ContinueShopping}" method="post">
						<input class="btn btn-sm btn-primary" type="hidden" name="todo" value="shop"> 
						<input class="btn btn-sm btn-primary" type="submit" value="Continue Shopping">
					</form>
					<br>
				
                    
					<c:url var="checkout" value="/shopCartCheckOut" />
					<form action="${checkout}" method="post">
						<input class="btn btn-sm btn-primary" type="hidden" name="todo" value="checkout"> 
						<input class="btn btn-sm btn-primary" type="submit" value="Checkout">			
					</form >
				</fieldset>
                <br>
				<a href="<c:url value='/'/> ">回前頁</a>
	</article>
	</div>
</body>
</html>