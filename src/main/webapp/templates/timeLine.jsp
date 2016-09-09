<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-content">
		<div class="close-modal" data-dismiss="modal">
			<div class="lr">
				<div class="rl">
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="modal-body">
					<h2>Time Line</h2>
					<div class="col-md-10 col-md-offset-1">
						<div class="row">
							<div class="col-md-8 col-md-offset-2">
								<div id="timeLineData">
									<table class="table-bordered table-striped">
										<tr>
											<th>Time Line Id</th>
											<th>Job title</th>
											<th>Grade</th>
											<th>Start Date</th>
											<th>Descripcion Form ID</th>
										</tr>
										<tr>
											<td>1234</td>
											<td>Java Programmer</td>
											<td>Proyect Manager</td>
											<td>12/12/12</td>
											<td>10230123</td>
										</tr>
									</table>
								</div>
								<div class="progress">
									<div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width:37.50%">
									</div>
								</div>
							</div>
							<!--formulario TL-->
							<form action="#">
								<div id="timeLineContainer" class="col-md-12">
									<div class="timeLineItem col-md-1 col-md-offset-2">
										<input type="checkbox" name="dataUpload" value="dataUpload">
										<br />Data
										<br />Upload</div>
									<div class="timeLineItem col-md-1">
										<input type="checkbox" name="firstCall" value="firstCall">
										<br />First
										<br />Call</div>
									<div class="timeLineItem col-md-1">
										<input type="checkbox" name="secondCall" value="secondCall">
										<br />Second
										<br />Call</div>
									<div class="timeLineItem col-md-1">
										<input type="checkbox" name="firstInterview" value="firstInterview">
										<br />First
										<br />Interview</div>
									<div class="timeLineItem col-md-1">
										<input type="checkbox" name="secondInterview" value="secondInterview">
										<br />Second
										<br />Interview</div>
									<div class="timeLineItem col-md-1">
										<input type="checkbox" name="psychometricTesting" value="psychometricTesting">
										<br />Psyco-Test
										<br />Check</div>
									<div class="timeLineItem col-md-1">
										<input type="checkbox" name="Hired" value="Hired">
										<br />Hired</div>
									<div class="timeLineItem col-md-1">
										<input type="checkbox" name="Hired" value="Hired">
										<br />Finished</div>
								</div>
							</form>
						</div>
						<!--MP fin formulario TL-->
						<div class="col-md-12">
							<button type="button" id="close-TL" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times"></i>Close</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
