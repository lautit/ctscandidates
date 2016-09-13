<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="/templates/top.jsp" />

<section class="container" id="timeline">
	<div class="row main-row">
		<h2>Timeline</h2>
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-10 col-md-offset-1" id="timeLineData">
					<div class="row">
						<div class="col-md-3 col-md-offset-1">
							<p>Timeline ID: </p>
							<span>1234</span>
						</div>
						<div class="col-md-3 col-md-offset-1">
							<p>Project Manager: </p>
							<span>John Doe</span>
						</div>
						<div class="col-md-3 col-md-offset-1">
							<p>Start Date: </p>
							<span>12/12/12</span>
						</div>
					</div>
					<div class="row">
						<div class="col-md-3 col-md-offset-1">
							<p>Job Title: </p>
							<span>Java Programmer</span>
						</div>
						<div class="col-md-3 col-md-offset-1">
							<p>Grade: </p>
							<span>SA</span>
						</div>
						<div class="col-md-3 col-md-offset-1">
							<p>Description Form ID: </p>
							<span>10230123</span>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="progress" id="progressBar">
						<div class="progress-bar" id="statusBar" role="progressbar" style="width: 0%"></div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="checkboxes col-md-12" id="timelineCheckboxes">
					<div class="row">
						<div class="col-md-2">
							<input type="checkbox" class="progressCheckbox" disabled id="newCandidate">
							<label>New Candidate</label>
						</div>
						<div class="col-md-2">
							<input type="checkbox" class="progressCheckbox" disabled id="firstCall">
							<label>First Call</label>
						</div>
						<div class="col-md-2">
							<input type="checkbox" class="progressCheckbox" disabled id="firstInterview">
							<label>First Interview</label>
						</div>
						<div class="col-md-2">
							<input type="checkbox" class="progressCheckbox" disabled id="techInterview">
							<label>Technical Interview</label>
						</div>
						<div class="col-md-2">
							<input type="checkbox" class="progressCheckbox" disabled id="healthTests">
							<label>Health Tests</label>
						</div>
						<div class="col-md-2">
							<input type="checkbox" class="progressCheckbox" disabled id="hired">
							<label>Hired</label>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<script src="<c:url value="/js/timeline.js"/>"></script>
<c:import url="/templates/bot.jsp" />
