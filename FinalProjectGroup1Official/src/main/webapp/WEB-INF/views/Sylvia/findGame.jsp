<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <link rel="stylesheet" href="css/style.css">
	<title>城市尋寶趣 </title>
	
	  <!-- Custom fonts for this template-->
    <link href="AdminTemplate/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="AdminTemplate/css/sb-admin-2.min.css" rel="stylesheet">
	
<style>
body{
 background-image:url(img/web_bg.jpg);
 max-width:100%;
 background-repeat:no-repeat;
 
background-size: cover;
 background-attachment : scroll;
 
}

#container {
  padding-top:20px;
  padding-left:10px;
  padding-right:30px;
  padding-bottom:40px;

}



</style>

</head>
<body>
<a href="<c:url value='/insertGame' />" >返回上一頁</a>
<div class="container" id="container" >

<div align='center'>

    <!-- poppup 區域 -->
    <div >
    <p align="center" ><a href="#popup1"><img src="img/logo-animation1.gif" /></a></p>
    </div>
    
    <div id="popup1" class="overlay" >
        <div class="popup" > 
       <!-- <img src="img/popup image.png" width="150%" > -->   
          <br>&nbsp;
          <a class="close" href="#">&times;</a>
          <div class="content">
            <p>你可以按下"x"重新選擇你要的冒險,<br>
              或是按下"返回城市尋寶趣"成為藏寶獵人!
            </p>
            <a href="<c:url value='/insertGame' />">返回城市尋寶趣</a>
          </div>
        </div>
      </div>
    



 <h1>?</h1>
    
    <input type="button"  value="Let's Go!" class='btn btn-primary btn-icon-split btn-lg ' style='width:120px;height:40px;'>
    
    <ul>
        <li title="img/1-qrcode.gif" >記憶烙金石</li>
        <li title="img/2-qrcode.gif">都會之矩</li>
        <li title="img/3-qrcode.gif">足尖下的繆思</li>
        
    </ul>
    
    </div>
    </div>

   <script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
   <script src="js/main.js"></script> 
    <!-- Bootstrap core JavaScript-->
    <script src="AdminTemplate/vendor/jquery/jquery.min.js"></script>
    <script src="AdminTemplate/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="AdminTemplate/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="AdminTemplate/js/sb-admin-2.min.js"></script>
</body>
</html>
