<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="BIG5"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
	<link rel="stylesheet" href="<c:url value='/TwentyTemplate/assets/css/main.css' />" />
	<noscript>
		<link rel="stylesheet" href="<c:url value='/TwentyTemplate/assets/css/noscript.css' />" />
	</noscript>
<title>Insert title here</title>
</head>
<body>
	

		<!-- Header -->
		<%@include file="../Universal/navbar.jsp" %>

		<!-- Banner -->
		

		<!-- Main -->
		<article id="main">
			<!-- 部落格標題 -->
			<header class="special container">
				<span class="icon solid fa-chart-bar"></span>
				
				
			</header>

			<!-- 部落格內容 -->
			<section class="wrapper style2 container special-alt">
				<c:forEach items="${beanList}" var="bean">    
					<div class="card mb-3" >
					  <div class="row g-0">
					    <div class="col-md-4">
					      <img src="${bean.pictureString}" class="img-fluid rounded-start" alt="...">
					    </div>
					    <div class="col-md-8 text-dark">
					      <div class="card-body">
					        <h5 class="card-title">${bean.price}  #${bean.seat} ${bean.name}</h5>
					        <p class="card-text">${bean.address}</p>
					        <p class="card-text float-right"><small class="text-muted"><a href="${bean.handbag}">來源</a></small></p>
					      </div>
					    </div>
					  </div>
					</div>
				</c:forEach>
			</section>

		

		</article>

		<!-- CTA -->
<%-- 	<%@include file="../Universal/navbar.jsp" %> --%>

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
				<li>&copy; Untitled</li>
				<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
			</ul>

		</footer>

	</div>

	<!-- Scripts -->
	<script src="<c:url value='/TwentyTemplate/assets/js/jquery.min.js' />"></script>
	<script src="<c:url value='/TwentyTemplate/assets/js/jquery.dropotron.min.js' />"></script>
	<script src="<c:url value='/TwentyTemplate/assets/js/jquery.scrolly.min.js' />"></script>
	<script src="<c:url value='/TwentyTemplate/assets/js/jquery.scrollex.min.js' />"></script>
	<script src="<c:url value='/TwentyTemplate/assets/js/browser.min.js' />"></script>
	<script src="<c:url value='/TwentyTemplate/assets/js/breakpoints.min.js' />"></script>
	<script src="<c:url value='/TwentyTemplate/assets/js/util.js' />"></script>
	<script src="<c:url value='/TwentyTemplate/assets/js/main.js' />"></script>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"  crossorigin="anonymous"></script>
	

</body>
</html>