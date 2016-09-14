<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="/templates/top.jsp" />

<div class="container">
	<div class="jumbotron">
		<h4>${quota.jobGrade},${quota.jobTitle}</h4>
		<h5 aria-label="Left Align">
			<span class=" glyphicon glyphicon-asterisk align-left"
				aria-hidden="true"></span> Quota ID: ${quota.quotaId}
		</h5>
		<br>
		<h5 aria-label="Left Align">Job Code: ${quota.jobCode}</h5>
		<h5 aria-label="Left Align">Job Title: ${quota.jobTitle}</h5>
		<br>
		<h4 aria-label="Left Align">Current Timelines:</h4>


		<c:forEach items="${quota.timelineList}" var="timeline"
			varStatus="status">



			<h5 aria-label="Left Align">Actual event is:
				${actualEvents[status.index].name}</h5>
			<br>
			<div class="progress">


				<div class="progress-bar" role="progressbar" aria-valuenow="60"
					aria-valuemin="0" aria-valuemax="100"
					style="width: ${eventPercentage[status.index]}%;">
					${eventPercentage[status.index]}%</div>
			</div>					
											${timeline.timelineId}<br>
											${timeline.initDate}<br>
											${timeline.cancelDate}<br>

		</c:forEach>


	</div>
</div>
<script src="<c:url value="/js/timeline.js"/>"></script>
<c:import url="/templates/bot.jsp" />