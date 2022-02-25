<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    


   
<!DOCTYPE html>
<html>
<head>



<!-- 結帳成功<br> -->
<%-- <c:url var="checkout" value="/checkOutSuccessMessage"/> --%>
<%-- <c:set var="totalPrice" scope="session" value="${totalPrice}"/> --%>
<%-- <c:out value="${totalPrice}"/> --%>

<a href="<c:url value='/'/> " >回前頁</a>
<%--  <c:out value="${totalPrice}"/> --%>
</head>
<body>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script type="text/javascript"> 

Swal.fire({
	  title: '結帳成功!',
	  text: '總金額:' + ${totalPrice},
	  icon: 'success',
	  confirmButtonText: '回前頁',


	}).then(function () {
        window.location.href = "/FinalProjectGroup1/"
    })

	
	
</script>
</body>
</html>