<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl.jsp</title>
</head>
<body>
<!-- 문자열을 잘라서 쓸 경우...필요 -->
<c:forTokens items="s,r,d" delims="," var="hobby">
	${hobby }<br>
</c:forTokens>
<c:set var="sum" value="0"/>
<c:forEach var="i" begin="1" end="10" step="1" >
	<c:set var="sum" value="${sum+i }" /> 
</c:forEach>
	${sum }
</body>
</html>