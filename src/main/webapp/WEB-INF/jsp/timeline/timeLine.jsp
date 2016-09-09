<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<div class="portfolio-modal modal fade" id="portfolioModal4"
	tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-content">
		<div class="close-modal" data-dismiss="modal">
			<div class="lr">
				<div class="rl"></div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					<div class="modal-body">
						<h2>Search</h2>
						<hr class="star-primary">
						<img src="img/portfolio/circus.png"
							class="img-responsive img-centered" alt="">
						<p>
							Use this area of the page to describe your project. The icon
							above is part of a free icon set by <a
								href="https://sellfy.com/p/8Q9P/jV3VZ/">Flat Icons</a>. On their
							website, you can download their free set with 16 icons, or you
							can purchase the entire set with 146 icons for only $12!
						</p>
						<ul class="list-inline item-details">
							<li>Client: <strong><a
									href="http://startbootstrap.com">Start Bootstrap</a> </strong>
							</li>
							<li>Date: <strong><a
									href="http://startbootstrap.com">April 2014</a> </strong>
							</li>
							<li>Service: <strong><a
									href="http://startbootstrap.com">Web Development</a> </strong>
							</li>
						</ul>
						<button type="button" class="btn btn-default" data-dismiss="modal">
							<i class="fa fa-times"></i> Close
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="portfolio-modal modal fade" id="portfolioModal4"
	tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-content">
		<div class="close-modal" data-dismiss="modal">
			<div class="lr">
				<div class="rl"></div>
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
									<div class="progress-bar" id="statusBarr" role="progressbar"
										aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"
										style="width: 0%"></div>
								</div>
							</div>
							<!--formulario TL-->
							<div class="col-md-12">
								<button type="button" id="close-TL" class="btn btn-danger"
									data-dismiss="modal">
									<i class="fa fa-times"></i>Close
								</button>
							</div>
							<script src="js/jquery.min.js"></script>
							<script>
								//encuentra le valor de la barra de progreso
								$('#timeLineContainer').find(".checkProgress").change(function() {
													if ($(this).is(":checked")) {
														var prog = $(this)
																.data(
																		"progress");
														$('#statusBarr').css(
																'width',
																prog + "%");
														$(this).next().attr(
																"disabled",
																true);
													}
												});
							</script>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>