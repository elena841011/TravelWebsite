<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/TwentyTemplate/assets/css/main.css" />
		<noscript><link rel="stylesheet" href="${pageContext.request.contextPath}/TwentyTemplate/assets/css/noscript.css" /></noscript>
<title>帳號驗證</title>
</head>
<body>
<%@include file="../Universal/navbar.jsp" %>

<article id="main">
<center>
若此信箱有在此網站作登記，您將會收到郵件。<br>
請至登記信箱收取信件完成登錄手續。

<a href= "<c:url value='/elena'/>">按此返回登入頁面</a>

</article>
</center>

<%@include file="../Universal/footer.jsp" %>	
</body>
</html>