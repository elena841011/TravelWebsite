<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/TwentyTemplate/assets/css/main.css" />
		<noscript><link rel="stylesheet" href="${pageContext.request.contextPath}/TwentyTemplate/assets/css/noscript.css" /></noscript>
<title>會員中心</title>



		<style>
		  .bd-placeholder-img {
			font-size: 1.125rem;
			text-anchor: middle;
			-webkit-user-select: none;
			-moz-user-select: none;
			user-select: none;
		  }
	
		  @media (min-width: 768px) {
			.bd-placeholder-img-lg {
			  font-size: 3.5rem;
			}
		  }

		  


		</style>


</head>
<body class="left-sidebar is-preload">
<%@include file="../Universal/navbar.jsp" %>
	<div id="page-wrapper">

<article id="main">
				<center>
				<h2>會員中心<br>
					<em>My Info</em></h1>
					
					
				</center>
				
				<main>
					<div class="container py-4">
						<h1>親愛的${CurrentUser.customerName}，您可以在此管理您在On The Way的帳戶體驗</h1>
				  <div class="cusinfo">
					  <div class="row align-items-md-stretch">
						
						<a href="#"><img src="${pageContext.request.contextPath}/AdminTemplate/img/banner2.jpg" alt="" width="500" height="200"/></a><br><br><br>
						<div class="col-md-6">
						  <div class="h-100 p-5 bg-light border rounded-3">
							<h2>我的帳號</h2>
							<p>您可以在我的帳號中，進行個人資訊的修改。<br>You can edit your information by clicking on my account.</p>
							<button onclick="window.location.href='../elena/gotoCustomerInfo' "class="btn btn-outline-secondary" type="button">管理個人帳號</button>
						  </div>
						</div>
						<div class="col-md-6">
							<div class="h-100 p-5 bg-light border rounded-3">
							  <h2>我的購物清單</h2>
							  <p>您可以在您的購物清單中查看您的購物紀錄，以及尚未付款的商品。<br>You can click my shopping cart to check out your purchase history.</p>
							  <button class="btn btn-outline-secondary" type="button">管理個人購物清單</button>
							</div>
						  </div>
						  <div class="col-md-6">
							<div class="h-100 p-5 bg-light border rounded-3">
							  <h2>我的最愛</h2>
							  <p>您可以在我的最愛中查看您的願望清單，也可將願望清單加至我的購物車中<br>You can click my favorite to see your wish list.</p>
							  <button class="btn btn-outline-secondary" type="button">管理我的最愛</button>
							</div>
						  </div>

					  </div>
				  
					 
					</div>
				  </main>
							</div>					
				
								</article>

	<%@include file="../Universal/footer.jsp" %>	
</body>
</html>