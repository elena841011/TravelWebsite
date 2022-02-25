<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.5.1.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/javascript/j_frontfiltercu2.js"></script>
<style>


.regdiv{

 height: 1350px;
  width: 800px;

  margin-right: auto;
  margin-left: auto;
  margin-top: 8%;
  margin-bottom: 30px;
  padding: 35px 40px 20px 40px; 
  background-color: white;
  border: 1px solid #D0D0D0;
  border-radius: 3% 3% 3% 3%;
  
  

}



</style>
<script>
   function autoadd(){
	    $("#idAccount").val("elena123");
		$("#idEmail").val("elenaeeit@gmail.com");	
		$("#idPhone").val("0982013800");
		$("#idPassword").val("elena123@");
		$("#idName").val("胡家瑜");
		$("#idAddress").val("新北市蘆洲區長安街47號");
		$("#idBday").val("1995-10-11");
		$("#gender").val("女");
	   
   }


</script>

<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/TwentyTemplate/assets/css/main.css" />
		<noscript><link rel="stylesheet" href="${pageContext.request.contextPath}/TwentyTemplate/assets/css/noscript.css" /></noscript>
<title>會員註冊</title>
</head>
<body class="left-sidebar is-preload">

<%@include file="../Universal/navbar.jsp" %>







<article id="main">
	<div align="center">
		<fieldset style="width: 1000px;">
		
		<h2>會員註冊<br>
		<em>Registration</em></h1>
			<form:form id="submitform" method="post" modelAttribute="customer"
				enctype='multipart/form-data'>

		<div class="regdiv">
				<table cellspacing="2" cellpadding="1" border="1" width="85%">
				
				
					<tr>
						<!-- label會自己幫我生出for -->
						<td><form:label path="customerName">姓名:</form:label></td>
						<td><form:input id= "idName" path="customerName" type="text" size="10"
								maxlength="10" placeholder="請輸入姓名" />
								<span id='NameResult'></span><br>
								</td>
					</tr>
					<tr>

						<td><form:label path="account">帳號:</form:label><br></td>
						<td><form:input id="idAccount" path="account" type="text" size="20"
								maxlength="10" placeholder="請輸入帳號" /><br>
							<button class="inputbutton" type="button" id="accountbutton">查看帳號是否已被註冊</button>
							<span id='AccountResult'></span>
							<br>
							<p class="rule">
								(1.不可空白，2.至少6個字且字首為英文字母，其餘英數字混合，3.不可包含特殊字元[!@#$%^&*]與中文字)</p></td>
					</tr>
					<tr>
						<td><form:label path="password">密碼:</form:label></td>
						<td><form:input id="idPassword" path="password" type="password" size="10"
								maxlength="10" placeholder="請輸入密碼" />
								<span id='PasswordResult'></span>
							<p class="rule">(1.不可空白，2.至少6個字且必須 包含英文字母、數字、特殊字元[!@#$%^&*])</p>
						</td>
					</tr>
					<tr>
						<td><form:label path="email">E-mail:</form:label></td>
						<td><form:input id="idEmail" path="email" type="text" size="30"
								maxlength="40" placeholder="請輸入信箱" /><br>
							<button class="inputbutton" type="button" id="emailbutton">查看信箱是否已被註冊</button>
							<span id='EmailResult'></span>
							<br/>
							<p class="rule">(不可空白)</p></td>
					</tr>
					<tr>
					
<!-- 					<select name="pets"> -->
<!-- 					    <option value="">請選擇你最愛的寵物</option> -->
<!-- 					    <option value="dog">Dog</option> -->
<!-- 					    <option value="cat" selected>Cat</option> -->
<!-- 					    <option value="hamster">Hamster</option> -->
<!-- 					    <option value="parrot">Parrot</option> -->
<!-- 					    <option value="spider" disabled>Spider</option> -->
<!-- 					    <option value="goldfish">Goldfish</option> -->
<!-- 					</select> -->
					
					</tr>
					<tr>
						<td><form:label path="birthday">生日:</form:label></td>
						<td><form:input id="idBday" path="birthday" type="date" size="20"
								maxlength="20" />
								<span id='BdayResult'></span>
							<p class="rule">(不可空白)</p></td>
					</tr>
<%-- 					<td><form:label id= "gender" path="gender">性別:</form:label></td> --%>
<%-- 					<td><form:radiobutton path="gender" value="男" label="男" --%>
<%-- 							checked="true" /> <form:radiobutton  path="gender" value="女" --%>
<%-- 							label="女" /></td> --%>
						<tr>
						
						<td>性別：<br>&nbsp;</td>
					        <td>
					      	 <form:select path="gender">
						   <form:option label="請挑選" value="-1"/>
				 		   <form:options items="${genderList1}"
				 		   	/>
					      	</form:select><br>&nbsp; 
						
						</tr>
							
					<tr>
						<td><form:label path="cellphone">聯絡電話:</form:label></td>
						<td><form:input id="idPhone" path="cellphone" type="text" size="20"
								maxlength="20" placeholder="請輸入手機" /><br>
							<button class="inputbutton" type="button" id="cellphonebutton">查看電話是否已被註冊</button>
							<span id='PhoneResult'></span>
							<br />
							<p class="rule">(不可空白)</p></td>
					</tr>
					<tr>
						<td><form:label path="address" width="150">聯絡地址:</form:label></td>
						<td><form:input id="idAddress" path="address" type="text" size="50"
								maxlength="50" placeholder="請輸入地址" />
								<span id='AddressResult'></span><br>
								</td>
					</tr>

					<tr>
						<td><form:label path="customerImage">上傳個人圖片:</form:label></td>
						<td>
						<img id="output" width='140' height='150' />
						<form:input id="imgInp" path="customerImage"
								type='file' onchange="loadFile(event)"/></td>
						<br>
					</tr>
					
		
<!-- 					<input type="file" accept="image/*" onchange="loadFile(event)"> -->
<!-- 					<img id="output"/> -->


				</table>
</div>
				<br>

				<!-- <button onclick="window.location.href='./register.controller';" >送出</button> -->
				<form:button value="Send" id="sendData">送出</form:button>
				<button type="button" class="autoinputbutton" onclick="autoadd()">一鍵輸入</button>
			</form:form>
		</fieldset>
		
		</article>

		<%-- <a href="<c:url value='/loginMainPage.controller'/>">返回登入頁面</a><br> --%>
		<%-- <button onclick="window.location.href='<c:url value='/loginMainPage.controller'/>'; return false;" >返回登入頁面</button> --%>

		
	<%@include file="../Universal/footer.jsp" %>		
	</div>

	<script>
	
	window.addEventListener("load", function(){
		
		var dupflag1 = false;
		var dupflag2 = false;
		var dupflag3 = false;

		//檢查帳號信箱電話重複的controller mapping
		const targetlink1 = '<c:url value="/Ajax/Elena/checkduplicateaccount"/>';
		const targetlink2 = '<c:url value="/Ajax/Elena/checkduplicatecellphone"/>';
		const targetlink3 = '<c:url value="/Ajax/Elena/checkduplicateemail"/>';
		
		
		$("#accountbutton").click(function () {

            $.ajax({
                url: targetlink1,    //url位置
                type: 'POST', //請求方式
                data: { account: $("#idAccount").val() },
                success: function (res) {
                    if (res == 0) {
                        alert("此帳號已被註冊，請使用其他帳號")
                        dupflag1 = false;
                    } else {
                        dupflag1 = true;
                        alert("此帳號可以使用")

                    }
                }
            })
        });
		
		
		 $("#cellphonebutton").click(function () {

             $.ajax({
                 url: targetlink2,    //url位置
                 type: 'POST', //請求方式
                 data: { cellphone: $("#idPhone").val() },
                 success: function (res) {
                     if (res == 0) {
                         alert("此電話已被註冊，請使用其他帳號")
                         dupflag2 = false;
                     } else {
                         alert("此電話可以使用")
                         dupflag2 = true;
                     }
                 }
             })
         });

         $("#emailbutton").click(function () {

             $.ajax({
                 url: targetlink3,    //url位置
                 type: 'POST', //請求方式
                 data: { email: $("#idEmail").val() },
                 success: function (res) {
                     if (res == 0) {
                         alert("此信箱已被註冊，請使用其他帳號")
                         dupflag3 = false;
                     } else {
                         alert("此信箱可以使用")
                         dupflag3 = true;
                     }
                 }
             })
         });
         
         
         $("#sendData").submit(function (event) {

             if (!(dupflag1 && dupflag2 && dupflag3)) {
                 window.alert("請檢查相關資料是否重複");
                 event.preventDefault();  //不會再執行「連結到某個網址」這個動作

         });
         
         //預覽圖片
//          imgInp.onchange = evt => {
//         	  const [file] = imgInp.files
//         	  if (file) {
//         	    blah.src = URL.createObjectURL(file)
//         	  }
//         	}

	
	})

	</script>
<script>
  var loadFile = function(event) {
    var output = document.getElementById('output');
    output.src = URL.createObjectURL(event.target.files[0]);
    output.onload = function() {
      URL.revokeObjectURL(output.src) // free memory
    }
  };
</script>

</body>
</html>