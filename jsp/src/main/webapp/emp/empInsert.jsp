<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>employees.html</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(function(){
		//이메일 중복체크
		$("[name=emailBtn]").on("click",function(){

				$.ajax({
					url:"EmailCheck",
					data:{ email:$("[name=email]").val()} , //서버에 보낸 타입
					dataType:"xml" , //서버에서 넘겨준 결과타입
					success: function(result){ 
						/*//json
							if(result.email==true){
							$("#emailResult").html("<font color='blue'>사용가능</font>"); 
						}else{
							$("#emailResult").html("<font color='red'>사용불가능</font>");
						} */
						//xml
							$("#emailResult").html($(result).find("email").text());
						}
				});
		});
		
		//매니저 선택
 		$("[name=mgrbtn]").on("click",function(){
 			window.open("EmpSearch","aaa","width=400,height=400");

/* 			$.ajax({
				url:"EmpSearch",
				success :function(emplist){
					console.log(emplist);
					$("[name=manager_id]").append(emplist);
				},
				dataType:"json"
			}) */
		}); 
	});
</script>
</head>
<body>
	<!-- http://localhost/jsp/EmpUpdate?employee_id=107 -->
	<h3 id="top">사원등록</h3>
	<!-- employee_id 존재여부체크해서 action 다르게 지정하기 -->
	<c:set var="url" value="EmpInsert"></c:set>
	<c:if test="${not empty empVO.employee_id }">
	<c:set var="url" value="EmpUpdate"></c:set>
</c:if>
<form action="${url }" method="post" name="frm">
	employee_id 	<input type="number" name="employee_id" 
						<c:if test="${not empty empVO.employee_id }"> readonly </c:if> ><br>
	first_name  	<input name="first_name" value=${empVO.first_name }><br>
	last_name   	<input name="last_name" value=${empVO.last_name }><br>
	email       	<input type="email" name="email" value=${empVO.email }><button type="button" name="emailBtn">중복체크</button>
						<span id="emailResult"></span><br>
	phone_number	<input type="text" name="phone_number" value=${empVO.phone_number }><br>
	hire_date   	<input type="date" name="hire_date" value=${empVO.hire_date }><br>
	job_id 				<select name="job_id">
				      		<c:forEach items="${jobList }" var="job">
								<option value=${job.job_id } <c:if test="${job.job_id ==empVO.job_id }">selected</c:if>> 
								${job.job_title }</option>
							 </c:forEach>
						 </select><br>
	department_id	<c:forEach items="${deptList }" var="dept">
						<input type="radio" id="department_id" 
						name="department_id" value="${dept.department_id }" 
							<c:if test="${dept.department_id ==empVO.department_id }">checked</c:if>>
							${dept.department_name }
				  	</c:forEach> <br>
	manager_id	   
	<input type="text" name="manager_id">
	<input type="text" name="name">
	<button type="button" name="mgrbtn">사원검색</button><br>	
	
	<button type="submit">등록</button>
	<button type="reset">초기화</button>
</form>

</body>
</html>
