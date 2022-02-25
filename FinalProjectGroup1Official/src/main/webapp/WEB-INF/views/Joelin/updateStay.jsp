<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Update Stay</h1>
<form:form method="post" action="/updateStay/${id}">
    <table>
        <tr>
            <td>Hotel: </td>
            <td><form:input path="hotel"/></td>
        </tr>
        <tr>
            <td>price: </td>
            <td><form:input path="price"/></td>
        </tr>
        
        <tr>
            <td></td>
            <td><input type="submit" value="Update" /></td>
        </tr>
    </table>
</form:form>

</body>
</html>