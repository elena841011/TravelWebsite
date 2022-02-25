<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- Custom fonts for this template-->
    <link href="AdminTemplate/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="AdminTemplate/css/sb-admin-2.min.css" rel="stylesheet">
   
   <style>


#container {
  padding-top:100px;
  border: 1px solid 000000;
}



</style>

   
</head>

<body align="center" >

<div class="container" id="container" >
<div class="card text-center" style="width:500px">
<div class="card-header">
<img alt="" src="img/success-gif.gif" width="150%"height="" class="card-img-top" >


<br>
${successMessage}<br>

          <div>
            <p>您已埋下寶藏囉!<br>
              現在按下"前往尋寶"體驗城市尋寶趣!
            </p>
            <a href="<c:url value='/findGame' />">前往尋寶</a>
          </div>
</div> 

</div>
</div>
 

<!-- Bootstrap core JavaScript-->
    <script src="AdminTemplate/vendor/jquery/jquery.min.js"></script>
    <script src="AdminTemplate/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="AdminTemplate/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="AdminTemplate/js/sb-admin-2.min.js"></script> 
    
        
</body>
</html>