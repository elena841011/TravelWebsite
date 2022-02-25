<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<!--
	Twenty by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>會員登入</title>
<style>

.login{
 height: 600px;
  width: 470px;

  margin-right: auto;
  margin-left: auto;
  margin-top: 8%;
  margin-bottom: 30px;
  padding: 35px 40px 20px 40px; 
  background-color: white;
  border: 1px solid #D0D0D0;
  border-radius: 3% 3% 3% 3%;
  
  text-align: center;
}


</style>





		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/TwentyTemplate/assets/css/main.css" />
		<noscript><link rel="stylesheet" href="${pageContext.request.contextPath}/TwentyTemplate/assets/css/noscript.css" /></noscript>
	</head>
	<body class="left-sidebar is-preload">
		<div id="page-wrapper">

<%@include file="../Universal/navbar.jsp" %>

			<!-- Header -->
			
				<header id="header">
					<h1 id="logo"><a href="index.html">On <span> The Way</span></a></h1>
					<nav id="nav">
						<ul>
							<li class="current"><a href="<c:url value="/"/>">首頁</a></li>
<!-- 							<li class="submenu"> -->
<!-- 								<a href="#">分頁</a> -->
<!-- 								<ul> -->
<!-- 									<li><a href="left-sidebar.html">Left Sidebar</a></li> -->
<!-- 									<li><a href="right-sidebar.html">Right Sidebar</a></li> -->
<!-- 									<li><a href="no-sidebar.html">No Sidebar</a></li> -->
<!-- 									<li><a href="contact.html">Contact</a></li> -->
<!-- 									<li class="submenu"> -->
<!-- 										<a href="#">Submenu</a> -->
<!-- 										<ul> -->
<!-- 											<li><a href="#">Dolore Sed</a></li> -->
<!-- 											<li><a href="#">Consequat</a></li> -->
<!-- 											<li><a href="#">Lorem Magna</a></li> -->
<!-- 											<li><a href="#">Sed Magna</a></li> -->
<!-- 											<li><a href="#">Ipsum Nisl</a></li> -->
<!-- 										</ul> -->
<!-- 									</li> -->
<!-- 								</ul> -->
								
								<li class="submenu">
								<a href="<c:url value="/stay"/>">住宿</a>
								<ul>
									<li><a href="left-sidebar.html">Left Sidebar</a></li>
									<li><a href="right-sidebar.html">Right Sidebar</a></li>
									<li><a href="no-sidebar.html">No Sidebar</a></li>
									<li><a href="contact.html">Contact</a></li>
								</ul>
							</li>

							<li class="submenu">
								<a href="#">租車</a>
								<ul>
									<li><a href="left-sidebar.html">Left Sidebar</a></li>
									<li><a href="right-sidebar.html">Right Sidebar</a></li>
									<li><a href="no-sidebar.html">No Sidebar</a></li>
									<li><a href="contact.html">Contact</a></li>
								</ul>
							</li>

							<li class="submenu">
								<a href="#">活動</a>
								<ul>
									<li><a href="left-sidebar.html">Left Sidebar</a></li>
									<li><a href="right-sidebar.html">Right Sidebar</a></li>
									<li><a href="no-sidebar.html">No Sidebar</a></li>
									<li><a href="contact.html">Contact</a></li>
								</ul>
							</li>
							<li class="submenu">
								<a href="#">部落格</a>
								<ul>
									<li><a href="left-sidebar.html">Left Sidebar</a></li>
									<li><a href="right-sidebar.html">Right Sidebar</a></li>
									<li><a href="no-sidebar.html">No Sidebar</a></li>
									<li><a href="contact.html">Contact</a></li>
								</ul>
							</li>
								<li class="submenu">
								<a href="#">購物車</a>
								<ul>
									<li><a href="left-sidebar.html">Left Sidebar</a></li>
									<li><a href="right-sidebar.html">Right Sidebar</a></li>
									<li><a href="no-sidebar.html">No Sidebar</a></li>
									<li><a href="contact.html">Contact</a></li>
								</ul>
							</li>
							<li id="myAccount" style="visibility:hidden" class="submenu">
								<a href="<c:url value="/elena/gotoCustomerHomePage"/>">我的帳號</a>
								<ul>
									<li><a href="left-sidebar.html">Left Sidebar</a></li>
									<li><a href="right-sidebar.html">Right Sidebar</a></li>
									<li><a href="no-sidebar.html">No Sidebar</a></li>
									<li><a href="contact.html">Contact</a></li>
								</ul>
							</li>
								
							</li>
							<li id="loginHref" style="visibility:visible"><a href="<c:url value="/elena"/>" class="button primary">登入</a></li>
							<li id="register" style="visibility:visible"><a href="<c:url value="/elena/registration"/>" class="button primary">註冊</a></li>
							<li id="LoginName" style="visibility:hidden">親愛的${currentname}，歡迎回來！</li>
							<li id="logoutHref" style="visibility:hidden"><a href="<c:url value="/elena/logout"/>" class="button primary">登出</a></li>
						</ul>
					</nav>
				</header>

			<!-- Main -->
				<article id="main">
					
				
						
							<form action="<c:url value='/elena/login'/>" method="post">	
							<h2>會員登入<br>
							<em>Login</em></h1>
				
								
								

				</article>

			<!-- Footer -->
			 <%@include file="../Universal/footer.jsp" %>
				<footer id="footer">

					<ul class="icons">
						<li><a href="#" class="icon brands circle fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="#" class="icon brands circle fa-facebook-f"><span class="label">Facebook</span></a></li>
						<li><a href="#" class="icon brands circle fa-google-plus-g"><span class="label">Google+</span></a></li>
						<li><a href="#" class="icon brands circle fa-github"><span class="label">Github</span></a></li>
						<li><a href="#" class="icon brands circle fa-dribbble"><span class="label">Dribbble</span></a></li>
					</ul>

					<ul class="copyright">
						<li>&copy; Untitled</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
					</ul>

				</footer>

		</div>

		<!-- Scripts -->
			<script src="${pageContext.request.contextPath}/TwentyTemplate/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/TwentyTemplate/assets/js/jquery.dropotron.min.js"></script>
			<script src="${pageContext.request.contextPath}/TwentyTemplate/assets/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.request.contextPath}/TwentyTemplate/assets/js/jquery.scrollex.min.js"></script>
			<script src="${pageContext.request.contextPath}/TwentyTemplate/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/TwentyTemplate/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/TwentyTemplate/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/TwentyTemplate/assets/js/main.js"></script>
			
			<script>



// 有登入:隱藏登入標籤 & 沒登入:隱藏登出標籤，秀登入標籤
var logoutHref = document.getElementById("logoutHref");
var loginHref = document.getElementById("loginHref");
var myAccount = document.getElementById("myAccount");
var register = document.getElementById("register");
var LoginName = document.getElementById("LoginName");

	if (!customerName) {
			logoutHref.hidden = true;
			myAccount.hidden = true;
			LoginName.hidden = true;
			loginHref.style.visibility = "visible";
			register.style.visibility = "visible";
		}
		if (customerName) {
			logoutHref.style.visibility = "visible";
			myAccount.style.visibility = "visible";
			LoginName.style.visibility = "visible";
			loginHref.style.visibility ="hidden";
			register.style.visibility ="hidden";
			
// 			loginHref.hidden = true;
// 			register.hidden = true;
		}
}
</script>

	</body>
</html>