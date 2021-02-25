<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>empSearch.jsp</title>
<style>
	body{text-align:center;}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script>
	$(function(){
		$("#selectBtn").on("click",function(){
			
		}
	});
	
</script>
</head>
<body>
	<h2>manager 설정</h2>
	<c:forEach items="${emplist }" var="emp">
		<p>${emp.employee_id } / ${emp.last_name } / ${emp.department_id } <button type="button" id="selectBtn">선택</button></p>
	</c:forEach>
</body>
</html>