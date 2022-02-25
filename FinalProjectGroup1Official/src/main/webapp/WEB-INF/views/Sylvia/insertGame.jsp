<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

  <!-- Custom fonts for this template-->
    <link href="<%=basePath%>/AdminTemplate/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="<%=basePath%>/AdminTemplate/css/sb-admin-2.min.css" rel="stylesheet">
   
<style>
body{
 background-image:url(img/web_bg.jpg);
 max-width:100%;
 background-repeat:no-repeat;
 
background-size: cover;
 background-attachment : scroll;
 
}

#container {
  padding-top:100px;
  padding-left:10px;
  padding-right:30px;
  padding-bottom:40px;
  border: 1px solid 000000;
}



</style>


</head>
<body>

<a href="<c:url value='/clientevent' />" >返回上一頁</a>
<p align="center" ><img src="img/logo-animation1.gif" /></p>
<P>
<div align="center">
<!-- 成為藏寶人 -->
<a href="#Game" >
<img src="img/button_2.png" width="20%"height="" >
</a>
 &nbsp;&nbsp;&nbsp;<!-- 成為尋寶人 -->
<a href="<c:url value='/findGame' />">
<img src="img/button_1.png" width="20%"height="" >
</a>

</div>


<div class="container" id="container" >
<div class="card">
<div class="card-body">
<h4>新增寶藏資料</h4>
<hr>


<%-- <form:form method="POST" modelAttribute="place" enctype='multipart/form-data' >  --%>
<form:form method="POST" modelAttribute="Game" >

<!-- group1  -->
<div class="form-group row"> 
	   <div class="col-sm-6 mb-3 mb-sm-0">
     <tr>
	      <td>手機號碼：</td>
	      <td  width=''>
	      	<form:input path="number" class="form-control form-control-user"/><br>&nbsp;	
		      <form:errors path='number' cssClass="error"/>
		  </td>
		  </div>
		 <div class="col-sm-6">
		   <td>暱稱：</td>
	   	  <td>
	      	<form:input path="nickname" class="form-control form-control-user"/><br>&nbsp;	
		      <form:errors path='nickname' cssClass="error"/>
		  </td>
	</tr>
	 </div> 
	 </div>
	 
	 <!-- group2  --> 
	  <div class="form-group row">
	    <div class="col-sm-6 mb-3 mb-sm-0">
	    <tr>
	      <td>寶藏名稱：</td>
	      <td  width=''>
	      	<form:input path="boxname" class="form-control form-control-user"/><br>&nbsp;	
		      <form:errors path='boxname' cssClass="error"/>
		  </td>
		  </div>
		 <div class="col-sm-6">
		   <td>電子信箱：</td>
	   	  <td>
	      	<form:input path="email" class="form-control form-control-user"/><br>&nbsp;	
		      <form:errors path='email' cssClass="error"/>
		  </td>
	</tr>
	</div>
	</div>
	
	<!-- group3  --> 
	  <div class="form-group row">
	    <div class="col-sm-6 mb-3 mb-sm-0">
	   <tr>
	      <td>經度：</td>
	        <td  width=''>
	      	<form:input path="longitude" class="form-control form-control-user"/><br>&nbsp;	
		      <form:errors path='longitude' cssClass="error"/>
		  </td>
		 </div>
		 <div class="col-sm-6">
	      <td>緯度：</td>
		  <td  width=''>
		  <form:input path='latitude' class="form-control form-control-user"/><br>&nbsp;	
		      <form:errors path='latitude' cssClass="error"/>
		  </td> 
	   </tr>
	   
	  </div> 
	</div>
	 
	 <!-- group4  --> 
	  <div class="form-group row"> 
	    <div class="col-sm-12 mb-3 mb-sm-0">	
	   <tr>
	      <td>提示一：</td>
	   	  <td>
	   	  	 <form:input path="tip1" class="form-control form-control-user"/><br>&nbsp;
	   	  	 <form:errors path="tip1"  cssClass="error" />
        </tr>
         </div>
         
	   	  <div class="col-sm-12 mb-3 mb-sm-0">
  	   <tr>
	   	  <td>提示二：</td>
	   	  <td>
	   	  	 <form:input path="tip2" class="form-control form-control-user"/><br>&nbsp;
	   	  	 <form:errors path="tip2"  cssClass="error" />
	   	  </td>
       </tr>
        </div>
        
	   	  <div class="col-sm-12 mb-3 mb-sm-0">
  	   <tr>
	   	  <td>提示三：</td>
	   	  <td>
	   	  	 <form:input path="tip3" class="form-control " /><br>&nbsp;
	   	  	 <form:errors path="tip3"  cssClass="error" />
	   	  </td>
	   </tr>
	   </div>
	   <div class="col-sm-12 mb-3 mb-sm-0">
	   
	   <form action="<c:url value='/value'/>" method="post">
         <table>
	   
	   <tr>
	    <td colspan='4' ><br>&nbsp;
	     <div align='center' >
         <input type='submit' class='btn btn-primary btn-icon-split btn-lg ' style='width:120px;height:40px;'><a href="<c:url value=' /insertGameSuccess' />"> </a>
	     <input type='reset' class='btn btn-primary btn-icon-split btn-lg ' style='width:120px;height:40px;'>
	     <input class='btn btn-primary btn-icon-split btn-lg ' style='width:120px;height:40px;'
            type="submit" onclick="inport()" value="一鍵輸入"><a href="<c:url value=' /insertGameSuccess' />"></a>
	 
        </div>
        
        </td>
	   
	       </tr>
         </table>
        </form>
        
        
         <script>
         $(document).ready(function() {
          $('#GameV1').DataTable();
         });
         function inport() {

          document.getElementById("number").value = "0933786518";
          document.getElementById("nickname").value = "小新";
          document.getElementById("boxname").value = "所羅門王的寶藏";
          document.getElementById("email").value = "AAA@gmail.com";
          
          document.getElementById("longitude").value = "25.897199";
          document.getElementById("latitude").value = "121.56667";
          document.getElementById("tip1").value = "金光閃閃";
          document.getElementById("tip2").value = "冒險犯難";
          document.getElementById("tip3").value = "炫光奪目";
          
          
          
         };
        </script>
        

       </div>
	   
	   
	   
 </form:form>

</div>
</div>
</div>

 <!-- Bootstrap core JavaScript-->
    <script src="<%=basePath%>/AdminTemplate/vendor/jquery/jquery.min.js"></script>
    <script src="<%=basePath%>/AdminTemplate/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="<%=basePath%>/AdminTemplate/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="<%=basePath%>/AdminTemplate/js/sb-admin-2.min.js"></script>

</body>
</html>