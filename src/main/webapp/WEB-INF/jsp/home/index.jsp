<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

			<c:import url="/templates/top.jsp" />
			<body id="page-top" class="index">
	    <!-- Navigation -->
	    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top navbar-custom">
	        <div class="container">
	            <!-- Brand and toggle get grouped for better mobile display -->
	            <div class="navbar-header page-scroll">
	                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
	                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
	                </button>
	                <a class="navbar-brand" href="#page-top">CTS Candidates</a>
	            </div>
	            <!-- Collect the nav links, forms, and other content for toggling -->
	            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	                <ul class="nav navbar-nav navbar-right">
	                    <li class="hidden">
	                        <a href="#page-top"></a>
	                    </li>
	                    <li class="page-scroll">
	                        <a href="#portfolio">Candidates</a>
	                    </li>
	                    <li class="page-scroll">
	                        <a href="#about">Log</a>
	                    </li>
	                    <li class="page-scroll">
	                        <a href="#contact">Search</a>
	                    </li>
	                </ul>
	            </div>
	            <!-- /.navbar-collapse -->
	        </div>
	        <!-- /.container-fluid -->
	    </nav>
	    <!-- Header -->
	    <header>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <img class="img-responsive" src="img/profile.png" alt="">
                    <div class="intro-text">
                        <span class="name">CTS Candidate</span>
                        <span class="skills">records and tracks the outcome of your job search results</span>
                    </div>
                </div>
            </div>
        </div>
    </header>
	    <!-- Portfolio Grid Section -->
	    <section id="portfolio">
	        <div class="container">
	            <div class="row">
	                <div class="col-lg-12 text-center">
	                    <h2>Actions</h2>
	                </div>
	            </div>
	            <div class="row">
	                <div class="col-sm-4 portfolio-item">
	                    <a href="#portfolioModal1" class="portfolio-link" data-toggle="modal">
	                        <div class="caption">
	                            <div class="caption-content">
	                                <i class="fa fa-search-plus fa-3x"></i>
	                            </div>
	                        </div>
	                        <img src="img/portfolio/cabin.png" class="img-responsive" alt="">
	                    </a>
	                </div>
	                <div class="col-sm-4 portfolio-item">
	                    <a href="#portfolioModal2" class="portfolio-link" data-toggle="modal">
	                        <div class="caption">
	                            <div class="caption-content">
	                                <i class="fa fa-search-plus fa-3x"></i>
	                            </div>
	                        </div>
	                        <img src="img/portfolio/cake.png" class="img-responsive" alt="">
	                    </a>
	                </div>
	                <div class="col-sm-4 portfolio-item">
	                    <a href="#portfolioModal3" class="portfolio-link" data-toggle="modal">
	                        <div class="caption">
	                            <div class="caption-content">
	                                <i class="fa fa-search-plus fa-3x"></i>
	                            </div>
	                        </div>
	                        <img src="img/portfolio/circus.png" class="img-responsive" alt="">
	                    </a>
	                </div>
	                <div class="col-sm-4 portfolio-item">
	                    <a href="#portfolioModal4" class="portfolio-link" data-toggle="modal">
	                        <div class="caption">
	                            <div class="caption-content">
	                                <i class="fa fa-search-plus fa-3x"></i>
	                            </div>
	                        </div>
	                        <img src="img/portfolio/circus.png" class="img-responsive" alt="">
	                    </a>
	                </div>
	            </div>
	        </div>
	    </section>
			<c:import url="/templates/bot.jsp" />
