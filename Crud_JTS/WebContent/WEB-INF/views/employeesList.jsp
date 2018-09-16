<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>All Employees</title>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container text-center">
<div class="jumbotron">
<div class="page-header">
<h1>List Employees</h1>
</div>
<h3><a href="add.html">Add More Employee</a></h3>
</div>
<div class="container text-center">
 <c:if test="${!empty employees}">
		<div class="page-header">
			<h2>List Employees</h2>
	    </div>
</div>


	<table class="table">
	<thead>
		<tr class="info">
			<th>Employee ID</th>
			<th>Employee Name</th>
			<th>Employee Age</th>
			<th>Employee Salary</th>
			<th>Employee Address</th>
			<th>Actions on Row</th>
		</tr>
	</thead>
		<c:forEach items="${employees}" var="employee">
		<tbody>
			<tr class="danger">
				<td><c:out value="${employee.empId}"/></td>
				<td><c:out value="${employee.empName}"/></td>
				<td><c:out value="${employee.empAge}"/></td>
				<td><c:out value="${employee.salary}"/></td>
				<td><c:out value="${employee.empAddress}"/></td>
				<td align="center"><a href="edit.html?empId=${employee.empId}">Edit</a> | <a href="delete.html?empId=${employee.empId}">Delete</a></td>
			</tr>
		</tbody>
		</c:forEach>
	</table>
</c:if>
</div>
</body>
</html>