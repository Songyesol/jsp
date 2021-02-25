<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
<head>
<title>sqltag.jsp</title>
</head>
<body>

<sql:query dataSource="${ jdbc/myoracle}" var="result">
SELECT * from Employees;
</sql:query>
 
<table border="1" width="100%">
<tr>
<th>Emp ID</th>
<th>First Name</th>

</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
<td>${row.employee_id}</td>
<td>${row.first_name}</td>

</tr>
</c:forEach>
</table>

</body>
</html>