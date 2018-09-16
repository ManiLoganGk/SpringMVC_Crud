<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Spring MVC Form Handling</title>
		
		
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	</head>
	<body>
	<div class="container text-center">
	  <div class="row">
	   <div class="page-header">
		 <h2>Add Employee Data</h2>
	   </div>
	   <div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
		<form:form method="POST" action="save.html" class="form-group">
		
	   		<div class="form-row">
				    <div class="col-12 col-md-7 mb-2 mb-md-0"><form:label  path="empId">Employee ID:</form:label></div>
		    		<div class="col-12 col-md-5 mb-2 mb-md-0"><form:input class="form-control" path="empId" value="${employee.empId}" readonly="true"/><br/></div>
			</div>	
			
			<div class="form-row">	
			        <div class="col-12 col-md-7 mb-2 mb-md-0"><form:label path="empName">Employee Name:</form:label></div>
			        <div class="col-12 col-md-5 mb-2 mb-md-0"><form:input class="form-control"  path="empName" value="${employee.empName}"/><br/></div>
			</div>
			<div class="form-row">  
			       <div class="col-12 col-md-7 mb-2 mb-md-0"> <form:label path="empAge">Employee Age:</form:label></div>
			        <div class="col-12 col-md-5 mb-2 mb-md-0"><form:input class="form-control" path="empAge" value="${employee.empAge}"/><br/></div>
			 </div>
			 <div class="form-row">  
			        <div class="col-12 col-md-7 mb-2 mb-md-0"><form:label path="salary">Employee Salary:</form:label></div>
			        <div class="col-12 col-md-5 mb-2 mb-md-0"><form:input class="form-control" path="salary" value="${employee.salary}"/><br/></div>
			 </div>
			 <div class="form-row"> 
			        <div class="col-12 col-md-7 mb-2 mb-md-0"><form:label path="empAddress">Employee Address:</form:label></div>
                    <div class="col-12 col-md-5 mb-2 mb-md-0"><form:input class="form-control" path="empAddress" value="${employee.empAddress}"/><br/></div>
			 </div>
			  <div class="form-row">   
			     	<div class="col-12 col-md-6 mb-2 mb-md-0"><input class="btn btn-lg btn-success" type="submit" value="Submit"/></div>
			     	<div class="col-12 col-md-6 mb-2 mb-md-0"><input class="btn btn-lg btn-success" type="reset"/></div>
			  </div>
		</form:form>
		</div>
		</div>
  <c:if test="${!empty employees}">
  	<div class="page-header">
		<h2>List Employees</h2>
	</div>
	<table class="table">
	<thead>
		<tr>
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
			<tr>
				<td><c:out value="${employee.empId}"/></td>
				<td><c:out value="${employee.empName}"/></td>
				<td><c:out value="${employee.empAge}"/></td>
				<td><c:out value="${employee.salary}"/></td>
				<td><c:out value="${employee.empAddress}"/></td>
				<td align="left"><a href="edit.html?empId=${employee.empId}">Edit</a> | <a href="delete.html?empId=${employee.empId}">Delete</a></td>
			</tr>
		</tbody>
		</c:forEach>
	  </table>
	</c:if>
	</div>
</body>
</html>