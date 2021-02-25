<%@page import="java.util.ArrayList" %>
<%@page import="emp.serv.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list.jsp</title>
</head>
<body>
	<c:forEach items="${list}" var="emp">
		${ emp.first_name }  
		${ emp.email } 
		<fmt:formatDate value="${emp.hire_date }" pattern="yyyy-mm"/> 
		<fmt:formatNumber value="${emp.salary }" pattern="000,000"/><br>
	</c:forEach>

</body>
</html>