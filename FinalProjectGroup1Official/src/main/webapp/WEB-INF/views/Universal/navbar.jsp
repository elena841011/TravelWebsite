<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>navigation bar</title>

<style>


</style>

</head>
<body>

<header id="header">
					<h1 id="logo"><a href="<c:url value="/"/>">
					<img src="${pageContext.request.contextPath}/AdminTemplate/img/Blue.png" alt="無法顯示圖片" width="8%"></h1></a>
					<nav id="nav">
						<ul>
							<li class="current"><a href="<c:url value="/"/>">首頁</a></li>

								
								<li class="submenu">
								<a href="#">住宿</a>
								<ul>
									<li><a href="<c:url value="/hotelstay"/>">旅館瀏覽</a></li>
									<li><a href="<c:url value="/clientstay"/>">補助專區</a></li>
								</ul>
							</li>

							<li class="submenu">
								<a href="<c:url value="/wadeClient"/>">租車</a>
								
							</li>

							<li class="submenu">
								<a href="#">活動</a>
								<ul>
									<li><a href="<c:url value="/clientevent"/>">特色行程</a></li>
									<li><a href="<c:url value="/clientSpevent"/>">城市觀光</a></li>
								</ul>
							</li>
							<li class="submenu">
								<a href="<c:url value="/bosClient"/>">部落格</a>
								
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
								<a>我的帳號</a>
								<ul>
									<li><a href="<c:url value="/elena/gotoCustomerHomePage"/>">會員中心</a></li>
									<li><a href="right-sidebar.html">訂單查詢</a></li>
									<li><a href="<c:url value="/elena/logout"/>">登出</a></li>
								</ul>
							</li>
								
							<li id="loginHref" style="visibility:visible"><a href="<c:url value="/elena"/>" class="button primary">登入</a></li>
							<li id="register" style="visibility:visible"><a href="<c:url value="/elena/registration"/>" class="button primary">註冊</a></li>
							<li id="LoginName" style="visibility:hidden">親愛的${currentname}，歡迎回來！</li>
							<li id="logoutHref" style="visibility:hidden"><a href="<c:url value="/elena/logout"/>" class="button primary">登出</a></li>
						</ul>
					</nav>
				</header>
<script>
var currentUser = "${CurrentUser}";
var customerName = "${CurrentUser.customerName}";

window.onload = function(){



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
<script src="${pageContext.request.contextPath}/TwentyTemplate/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/TwentyTemplate/assets/js/jquery.dropotron.min.js"></script>
			<script src="${pageContext.request.contextPath}/TwentyTemplate/assets/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.request.contextPath}/TwentyTemplate/assets/js/jquery.scrollex.min.js"></script>
			<script src="${pageContext.request.contextPath}/TwentyTemplate/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/TwentyTemplate/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/TwentyTemplate/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/TwentyTemplate/assets/js/main.js"></script>


</body>


</html>