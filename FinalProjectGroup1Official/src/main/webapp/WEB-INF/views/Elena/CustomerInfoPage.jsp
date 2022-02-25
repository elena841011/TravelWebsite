<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/TwentyTemplate/assets/css/main.css" />
		<noscript><link rel="stylesheet" href="${pageContext.request.contextPath}/TwentyTemplate/assets/css/noscript.css" /></noscript>
<title>CustomerInfoPage</title>

<style>

.customerTable{

 height: 500px;
  width: 500px;

  margin-right: auto;
  margin-left: auto;
  margin-top: 8%;
  margin-bottom: 30px;
  padding: 35px 40px 20px 40px; 
  background-color: white;
  border: 3px solid #D0D0D0;
  border-radius: 3% 3% 3% 3%;
  
  text-align: center;


}

</style>





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
	




<script type="text/javascript">
	function reconfirm(){
		ProceedDelete = confirm("確定要刪除嗎?");
		if (ProceedDelete) {
			window.location.href='./deleteAccount.do'; 
		}
// 		return false;
	}
</script>


<%@include file="../Universal/navbar.jsp" %>
<article id="main">

<%-- <jsp:useBean id="customerBean" class="login.model.CustomerBean" scope="session" /> --%>
<center>
<h2>

會員資料頁面
<h3>查看個人資料</h3>
</h2>
<h1 style="color:red;" class="testing">${updateSuccess}</h1>
</center>
<!-- <form action="/selectCustomerInfo.controller" method="post"> -->

<form enctype='multipart/form-data'>

<div class="customerTable">
<table  align="center"  cellspacing="2" cellpadding="10" border="5" width="80%">
<!-- <tr bgcolor="#FFFFE1"> -->
<!--     <td>Customer ID:</td> -->
<%--     <td>${CurrentUser.customerID} --%>
<!--     = request.getParameter("bean").getCustomerID -->
<!--     </td> -->
<!-- </tr> -->


    <td>姓名:</td>
    <td>${CurrentUser.customerName}
    </td>

</tr>
<tr>
    <td>帳號:</td>
    <td>${CurrentUser.account}
    </td>
</tr>
<tr>
    <td>密碼:</td>
    <td>${CurrentUser.password}
    </td>
</tr>
<tr>
    <td width="150">E-mail:</td>
    <td>${CurrentUser.email}
   </td>
</tr>
<tr>
    <td width="150">生日:</td>
    <td>${CurrentUser.birthday}
   </td>
</tr>
<tr>
    <td>性別</td>
    <td>${CurrentUser.gender}
    </td>
</tr>
<tr>
    <td>連絡電話:</td>
    <td>${CurrentUser.cellphone}
    </td>
</tr>
<tr>
    <td>連絡地址:</td>
    <td>${CurrentUser.address}
    </td>
</tr>
<tr>
    <td>個人照片:</td>
    <td><img width='150' height='200' src= "${CurrentUser.pictureString} ">
    </td>
</tr>
</table>

</form>
</div>

<center>
<button onclick="window.location.href='updateuserinfo';" >修改個人資料</button>
<!-- <button onclick="reconfirm();" >刪除個人帳號</button><br><br> -->
<button onclick="window.location.href='./gotoCustomerHomePage';" >返回會員中心</button><br>
<br>
</center>
</article>

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

<script src="${pageContext.request.contextPath}/TwentyTemplate/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/TwentyTemplate/assets/js/jquery.dropotron.min.js"></script>
			<script src="${pageContext.request.contextPath}/TwentyTemplate/assets/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.request.contextPath}/TwentyTemplate/assets/js/jquery.scrollex.min.js"></script>
			<script src="${pageContext.request.contextPath}/TwentyTemplate/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/TwentyTemplate/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/TwentyTemplate/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/TwentyTemplate/assets/js/main.js"></script>
			
			
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
			
			
			

</body>
</html>