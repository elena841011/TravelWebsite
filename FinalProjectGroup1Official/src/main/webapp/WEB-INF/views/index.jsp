<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<!--
	Twenty by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>On My Way</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/TwentyTemplate/assets/css/main.css" />
		<noscript><link rel="stylesheet" href="${pageContext.request.contextPath}/TwentyTemplate/assets/css/noscript.css" /></noscript>
	</head>
	<body class="index is-preload">
	
	
<c:choose>
<c:when test="${not empty CurrentUser}">

<c:set var="currentaccount" scope="session" value="${CurrentUser.account}"/>
<c:set var="currentname" scope="session" value="${CurrentUser.customerName}"/>
<c:set var="loginorout" scope="session" value="登出"/>
</c:when>

<c:otherwise>
<c:set var="currentaccount" scope="session" value="訪客帳號"/>
<c:set var="currentname" scope="session" value="訪客"/>
<c:set var="loginorout" scope="session" value="會員登入"/>
</c:otherwise>
</c:choose>
	
	
	
	
	
	
	
		<div id="page-wrapper">

			<!-- Header -->
				<header id="header" class="alt">
					<h1 id="logo"><a href="<c:url value="/"/>">
					<img src="${pageContext.request.contextPath}/AdminTemplate/img/Blue.png" alt="無法顯示圖片" width="10%"></h1>
					
<!-- 					On<span> The Way</span></a></h1> -->
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
<!-- 							</li> -->

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
								<a href="<c:url value="/insertRestaurant"/>">購物車</a>
<!-- 								<ul> -->
<!-- 								</ul> -->
							</li>

							<li id="myAccount" style="visibility:hidden" class="submenu">
								<a>我的帳號</a>
								<ul>
									<li><a href="<c:url value="/elena/gotoCustomerHomePage"/>">會員中心</a></li>
									<li><a href="<c:url value="/FrontEndShopeCartOrderFind"/>">訂單查詢</a></li>
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

			<!-- Banner -->
				<section id="banner">

					<!--
						".inner" is set up as an inline-block so it automatically expands
						in both directions to fit whatever's inside it. This means it won't
						automatically wrap lines, so be sure to use line breaks where
						appropriate (<br />).
					-->
					<div class="inner">

						<header>
							<h2>On My Way</h2>
						</header>
						<p>歡迎來到<strong>On My Way</strong>
						<br />
						在這裡
						<br />
						與你心愛的人一起創造你們的專屬回憶吧！</p>
						<footer>
							<ul class="buttons stacked">
								<li><a href="#main" class="button fit scrolly">了解 On My Way</a></li>
							</ul>
						</footer>

					</div>

				</section>

			<!-- Main -->
				<article id="main">

					<header class="special container">
						<span class="icon solid fa-chart-bar"></span>
						<h2>我們相信：「旅行是唯一讓你付出，卻能變得更富有的事情。」<br>
						<strong>Travel</strong> is the Only Thing You Buy that Makes You <strong>Richer.</strong>
						<br />
						</h2>
						<br>
						<br>
						<p>放下旅行指南，一切隨緣。不需要思考下一個目的地，隨心所欲。有時候，不小心亂入一間街角的餐廳，都有可能是出乎意料的相遇。往往不在計畫裡的計劃，總會在記憶深處令人回味。
						<br />
						
						<br />
						</p>
					</header>

					<!-- One -->
						<section class="wrapper style2 container special-alt">
							<div class="row gtr-50">
								<div class="col-8 col-12-narrower">

									<header>
										<h2>「旅行是段與自己獨處的時光，既浪漫又艱辛，但旅行能讓人找到自己。｣</h2>
									</header>
									<p>旅行令人著迷，一路上所遇所見都能為內心帶來啟發與改變，那是種源自於心靈，能真切的感受到自我成長與蛻變的過程，讓我們更加成熟更加謙虛更加知足，最終我們將趨近於我們靈魂更深層的自己。</p>
									<br>
									<p>在On My Way, 你可以找到專屬於你的浪漫旅行</p>
									<footer>
										<ul class="buttons">
											<li><a href="<c:url value="/bosClient"/>" class="button">看看我們的專屬文章</a></li>
										</ul>
									</footer>

								</div>
								<div class="col-4 col-12-narrower imp-narrower">

									<ul class="featured-icons">
										<li><span class="icon fa-clock"><span class="label">Feature 1</span></span></li>
										<li><span class="icon solid fa-volume-up"><span class="label">Feature 2</span></span></li>
										<li><span class="icon solid fa-laptop"><span class="label">Feature 3</span></span></li>
										<li><span class="icon solid fa-inbox"><span class="label">Feature 4</span></span></li>
										<li><span class="icon solid fa-lock"><span class="label">Feature 5</span></span></li>
										<li><span class="icon solid fa-cog"><span class="label">Feature 6</span></span></li>
									</ul>

								</div>
							</div>
						</section>

					<!-- Two -->
						<section class="wrapper style1 container special">
							<div class="row">
								<div class="col-4 col-12-narrower">

									<section>
										<span class="icon solid featured fa-check"></span>
										<header>
											<h3>我們的宗旨</h3>
										</header>
										<p>On My Way致力於發展科技，期望幫助您的旅行大小事更加順利。我們提供難忘體驗、多種交通選項以及公寓、飯店等各類絕佳住宿。</p>
									</section>

								</div>
								<div class="col-4 col-12-narrower">

									<section>
										<span class="icon solid featured fa-check"></span>
										<header>
											<h3>我們的規模</h3>
										</header>
										<p>不論以知名品牌或各種規模的新創事業標準來看，On My Way都是全球規模數一數二的旅遊平台，幫助世界各地的住宿能觸及全球旅客，讓事業成長。</p>
									</section>

								</div>
								<div class="col-4 col-12-narrower">

									<section>
										<span class="icon solid featured fa-check"></span>
										<header>
											<h3>消費條款</h3>
										</header>
										<p>所有在On My Way上購買的行程皆可在活動開始前七天無條件取消訂單，七天內取消訂單我們將酌收50%的服務費用，若三天內取消訂單，我們將酌收70%的費用。</p>
									</section>

								</div>
							</div>
						</section>

					<!-- Three -->
						<section class="wrapper style3 container special">

							<header class="major">
								<h2>我們提供的<strong>服務</strong></h2>
							</header>

							<div class="row">
								<div class="col-6 col-12-narrower">

									<section>
										<a href="<c:url value="/clientevent"/>" class="image featured"><img src="images/activity2.jpg" alt="" /></a>
										<header>
											<h3>各式活動</h3>
										</header>
										<p>深入挖掘在地旅遊體驗行程，我們把安排旅程變得更簡單、更即時，也讓旅人玩得更自在、更盡興、更安全。我們深信每一趟旅程，都是一場精彩的饗宴。並希望每個愛旅行的你，都能和我們一樣，享受體驗生活的美好。</p>
									</section>

								</div>
								<div class="col-6 col-12-narrower">

									<section>
										<a href="<c:url value="/readSpEvent/23421"/>" class="image featured"><img src="images/activity1.jpg" alt="" /></a>
										<header>
											<h3>手沖咖啡體驗</h3>
										</header>
										<p>手沖咖啡帶給人的優雅感，在大家心中一向是最具氣質的咖啡沖煮技巧。從咖啡豆的挑選、磨豆，到掌控水溫及倒水的時間點和速度，每一個步驟都十分講究。手沖咖啡入門體驗，由咖啡師深入淺出示範講解咖啡知識，帶你一起體驗手沖咖啡之樂。</p>
									</section>

								</div>
							</div>
							<div class="row">
								<div class="col-6 col-12-narrower">

									<section>
										<a href="<c:url value="/hotelstay"/>" class="image featured"><img src="images/accommodation.jpg" alt="" /></a>
										<header>
											<h3>精選住宿</h3>
										</header>
										<p>正在計劃下一次的旅行嗎？我們的精選飯店系列是您的不二之選。寬敞舒適的客房連一系列精選禮遇必定令您及摯愛親朋留下寶貴的旅行回憶。立即預訂以體驗專屬於您的享受!</p>
									</section>

								</div>
								<div class="col-6 col-12-narrower">

									<section>
										<a href="<c:url value="/wadeClient"/>" class="image featured"><img src="images/rentCar.jpg" alt="" /></a>
										<header>
											<h3>租車服務</h3>
										</header>
										<p>全國最綿密的租車服務據點，擁有多樣時新車款滿足不同的需求，且提供您最便利、安心的服務 ─ 多樣化租用選擇，我們提供高品質的服務，相信能讓您在每一趟旅程充滿安心、愉快。</p>
									</section>

								</div>
							</div>

					

						</section>

				</article>

			<!-- CTA -->
				<section id="cta">

					<header>
						<h2>快來加入我們吧<strong><br>Join us</strong></h2>
					</header>
					<footer>
						<ul class="buttons">
							<li><a href="<c:url value="/elena/registration"/>" class="button primary">加入我們</a></li>
							<li><a href="#" class="button">返回最上層</a></li>
						</ul>
					</footer>

				</section>

			<!-- Footer -->
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

    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
var currentUser = "${CurrentUser}";
var customerName = "${CurrentUser.customerName}";

window.onload = function(){

if("${loginSuccess}" == "登入成功!"){
	alert("${name}" + "," + "歡迎回來!");
// 	Swal.fire("${name}" + "," + "歡迎回來!");
}


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
<!-- <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script> -->




	</body>
</html>