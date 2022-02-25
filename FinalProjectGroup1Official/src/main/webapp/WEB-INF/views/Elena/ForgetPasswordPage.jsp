<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/TwentyTemplate/assets/css/main.css" />
		<noscript><link rel="stylesheet" href="${pageContext.request.contextPath}/TwentyTemplate/assets/css/noscript.css" /></noscript>
<title>忘記密碼</title>

    <style type="text/css">
        .regDiv {
height: 300px;
width: 700px;

margin-right: auto;
margin-left: auto;
margin-top: 8%;
margin-bottom: 210px;
padding: 35px 50px 20px 50px; 
background-color: white;
border: 1px solid #D0D0D0;
border-radius: 3% 3% 3% 3%;
}

/* .sendbutton{ */
/* height:40px ; */
/* width: 593px; */

/* border: 1px solid #7B7B7B; */
/* border-radius: 3% 3% 3% 3%; */

/* background-color:#BEBEBE; */
/* margin: 15px 0px 15px 0px; */


/* font-weight:bold; */
/* } */

.inputLbox
{
height:40px ;
width: 593px;

margin-bottom:50px;

border: 1px solid #7B7B7B;
border-radius: 3% 3% 3% 3%;

}

.autoinputbutton{
height:40px ;
width: 127px;

border: 1px solid #7B7B7B;
border-radius: 3% 3% 3% 3%;

background-color:#FFFFB9;
margin: 20px 0px 25px 0px;
align-items: center;

font-weight:bold;

}
        
 </style>

<script>
function autoadd(){
    $("#email").val("elenaeeit@gmail.com");
	

}
</script>

</head>
<body>
<%@include file="../Universal/navbar.jsp" %>

<article id="main">
<center>
<h2>忘記密碼<br>
<em>Forget Password</em></h1>
 <div class="regDiv">
        <center>
        <form method="POST">
        請輸入註冊時所使用的信箱:
        <input type="text" class="inputLbox" id="email" name="email"  value="" />
        
         <input type="submit" class="sendbutton" value="提繳"><br>
        </form>
        
      <button type="button" class="autoinputbutton" onclick="autoadd()">一鍵輸入</button></center> 
<br>    
<a href= "<c:url value='/elena'/>">按此返回登入頁面</a>
</div>

</article>
</center>

<%@include file="../Universal/footer.jsp" %>	
</body>
</html>