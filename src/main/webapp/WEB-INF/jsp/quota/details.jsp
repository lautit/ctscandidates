<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="/templates/top.jsp" />

<section id="quota">
	<div class="container">
			<h2>Quotas</h2>
			<div class="col-md-10 col-md-offset-1">
				<div class="row">
					<div class="col-md-6 col-md-offset-3">
						<div id="quoteData">
							<table class="table-bordered table-striped">
								<tr>
									<th>Quota Id</th>
									<th>Job code</th>
									<th>Job title</th>
									<th>Grade</th>
									<th>Timelines</th>
								</tr>
								<tr>
									<td>${quota.quotaId}</td>
									<td>${quota.jobCode}</td>
									<td>${quota.jobTitle}</td>
									<td>${quota.jobGrade}</td>
									
										<c:forEach items="${quota.timelineList}" var="timeline">									
											<td>${timeline.timelineId}</td>
											<td>${timeline.initDate}</td>
											<td>${timeline.initCancel}</td>
										</c:forEach>
															
									</tr>
			
							</table>
						</div>
						
					</div>
				</div>
			</div>
		</div>
</section>
<script src="<c:url value="/js/timeline.js"/>"></script>
<c:import url="/templates/bot.jsp" />