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

.inputbox{
height:40px ;
width: 390px;

border: 3px solid #7B7B7B;
border-radius: 3% 3% 3% 3%;

}


</style>





		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/TwentyTemplate/assets/css/main.css" />
		<noscript><link rel="stylesheet" href="${pageContext.request.contextPath}/TwentyTemplate/assets/css/noscript.css" /></noscript>
	</head>
	<body class="left-sidebar is-preload">
		<div id="page-wrapper">

			<!-- Header -->
<%@include file="../Universal/navbar.jsp" %>

			<!-- Main -->
				<article id="main">
					
<!-- 					<header> -->
						<center>
							<form action="<c:url value='/elena/login'/>" method="post">	
							<h2>會員登入<br>
							<em>Login</em></h1>
						   <div class="login">
								<legend >請輸入您的帳號及密碼</legend>
								<h1 style="color:red;">${Failed}</h1>
							<!-- <center> -->
		
							<div>
							<br>
							<div style="text-align: LEFT;">帳號 :</div>
							 <INPUT class="inputbox" TYPE="TEXT" NAME="userName" required><BR>
							  <br>
							 
							  <div style="text-align: left;">密碼 :</div>
							   <INPUT class="inputbox" TYPE="password" NAME="userPwd" required><BR>
							   <a href="<c:url value='/elena/forgetpassword'/>">忘記密碼</a><br>
							  <BR>
							  
							<tr><td><input class="loginbutton" name="login" type="submit" value="登入"/><br>
							<br>
								還沒有帳號嗎?<a href="<c:url value='/elena/registration'/>">請點我註冊</a><br>
							<br>
							</form>
						</div>
						</center>
						
<!-- 					</header> -->

					<!-- One -->
						
										</div>

								</div>
								
								

				</article>

			<!-- Footer -->
	<%@include file="../Universal/footer.jsp" %>	

		</div>

	</body>
</html>