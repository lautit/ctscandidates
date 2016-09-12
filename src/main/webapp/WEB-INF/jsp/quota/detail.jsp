<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="/templates/top.jsp" />



<div class="panel panel-default col-md-6 col-md-offset-3">
  <div class="panel-heading">
    <h3 class="panel-title">SO: 134563</h3>
  </div>
  <div class="panel-body">
 
    <table class="table table-striped table-bordered table-hover ">
	<tr>
		<th>Job Title</th>
		<th>Job Code</th>
		<th></th>	
	</tr>
	 <c:forEach items="${quotas}" var="q">
		<tr>
		
			<td>${q.jobTitle}</td>
			<td>${q.jobCode}</td>
			<td>
				<a href="viewTimeline.html?id=${q.quotaId}" class="btn btn-default">View</a>
			</td>
		</tr>
	</c:forEach>
	</table>
  </div>
</div> 


<c:import url="/templates/bot.jsp" />