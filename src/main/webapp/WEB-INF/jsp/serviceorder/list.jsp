<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="/templates/top.jsp" />

<h4>Service Orders</h4>
<table class="table table-striped table-bordered table-hover">
	<tr>
		<th>Id</th>
		<th>Proyect Manager</th>
		<th>Recruiter</th>
		<th></th>
	</tr>
	<c:forEach items="${serviceOrders}" var="so">
		<tr>
			<td>${so.serviceOrderId}</td>
			<td>${so.proyectManager}</td>
			<td>${so.recruiter}</td>
			<td><a href="details.html?id=${so.serviceOrderId}" class="btn btn-primary">View</a>
			</td>
		</tr>
	</c:forEach>
</table>

<c:import url="/templates/bot.jsp" />