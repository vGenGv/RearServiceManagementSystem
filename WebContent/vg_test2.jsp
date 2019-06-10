<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<!-- Required meta tags -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Icon CSS -->
<link rel="stylesheet" href="css/open-iconic-bootstrap.min.css" />

<!-- Theme CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/responsive.css" />

<title>后勤服务管理系统</title>
</head>
<body id="page-top">

	<!-- NAVBAR
    ================================================= -->
	<nav class="navbar navbar-expand-lg navbar-dark navbar-togglable  fixed-top" id="mainNav">
		<div class="container">
			<!-- Brand -->
			<a class="navbar-brand js-scroll-trigger" href="#page-top">
				<img alt="brand" src="img\logo_white.png" style="width: 40x; height: 40px;" id="logo_img" /><span id="logo_text"> 后勤服务管理系统</span>
			</a>

			<!-- Toggler -->
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon-bar"><i class="oi oi-menu"></i></span>
			</button>

			<!-- Collapse -->
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<!-- Links -->
				<ul class="navbar-nav ml-auto">
					<li class="nav-item">
						<a class="nav-link js-scroll-trigger" href="#page-top"> 主页 </a>
					</li>
					<li class="nav-item">
						<a class="nav-link js-scroll-trigger" href="#news"> 新闻 </a>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"> 服务 </a>
						<div class=" dropdown-menu">
							<a class="dropdown-item js-scroll-trigger" href="#services">服务总览</a>
							<a class="dropdown-item js-scroll-trigger" href="#">廉政建设</a>
							<a class="dropdown-item js-scroll-trigger" href="#">工会及文化建设</a>
							<a class="dropdown-item js-scroll-trigger" href="#">“两学一做”</a>
						</div>
					</li>
					<li class="nav-item">
						<a class="nav-link js-scroll-trigger" href="#about"> 关于 </a>
					</li>
					<li class="nav-item">
						<a class="nav-link js-scroll-trigger" href="#contact"> 反馈 </a>
					</li>
					<li class="nav-item">
						<button class="btn btn-cn btn-success js-scroll-trigger" data-toggle="modal" data-target="#loginModal" type="button">登录</button>
					</li>
				</ul>
			</div>
			<!-- / .navbar-collapse -->
		</div>
		<!-- / .container -->
	</nav>

	<!-- LOGIN MODAL
    ================================================== -->
	<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModalTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">

				<!-- modal header -->
				<div class="modal-header">
					<h3 class="modal-title center-block" id="loginModalTitle">登录</h3>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<!-- / modal header -->

				<!-- modal body -->
				<div class="modal-body">
					<form class="needs-validation" novalidate>
						<!-- Username -->
						<div class="form-group row justify-content-center">
							<label for="loginInputUsername" class="col-sm-3 col-form-label">用户名</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" id="loginInputUsername" placeholder="Username" required>
								<div class="invalid-feedback">请输入用户名</div>
							</div>
						</div>

						<!-- Password -->
						<div class="form-group row justify-content-center">
							<label for="loginInputPassword" class="col-sm-3 col-form-label">密码</label>
							<div class="col-sm-7">
								<input type="password" class="form-control" id="loginInputPassword" placeholder="Password" required>
								<div class="invalid-feedback">请输入密码</div>
							</div>
						</div>

						<!-- Login radio -->
						<div class="form-group row justify-content-center">
							<label class="col-form-label col-sm-3 pt-0">登录方式</label>
							<div class="col-sm-7">
								<div class="custom-control custom-radio">
									<input class="custom-control-input" type="radio" name="loginRadios" id="loginRadio1" value="student_option" required>
									<label class="custom-control-label" for="loginRadio1"> 学生登录 </label>
								</div>
								<div class="custom-control custom-radio">
									<input class="custom-control-input" type="radio" name="loginRadios" id="loginRadio2" value="worker_option" required>
									<label class="custom-control-label" for="loginRadio2"> 工人登录 </label>
								</div>
								<div class="custom-control custom-radio">
									<input class="custom-control-input" type="radio" name="loginRadios" id="loginRadio3" value="admin_option" required>
									<label class="custom-control-label" for="loginRadio3"> 管理登录 </label>
									<div class="invalid-feedback">请选择登录方式</div>
								</div>
							</div>
						</div>

						<!-- Button -->
						<div class="form-group row justify-content-center">
							<div class="col-auto">
								<button type="submit" class="btn btn-cn btn-success">登录</button>
							</div>
						</div>
					</form>
				</div>
				<!-- / modal body -->
			</div>
		</div>
	</div>

	<!-- HERO
    ================================================== -->
	<section class="section section-top section-full">

		<!-- Cover -->
		<div class="bg-cover" style="background-image: url(img/5.jpg);"></div>

		<!-- Overlay -->
		<div class="bg-overlay"></div>
		<!-- Content -->
		<div class="container">
			<div class="row justify-content-center align-items-center">
				<div class="col-md-10 col-lg-7 ">
					<div class="banner-content">
						<!-- Preheading -->
						<p class="text-white text-uppercase text-center text-xs">成都理工大学</p>

						<!-- Heading -->
						<h1 class="text-white text-center mb-4 display-4 font-weight-bold">后勤服务管理系统</h1>

						<!-- Subheading -->
						<p class="lead text-white text-center mb-5">一站式服务，为你的生活排忧解难</p>

						<!-- Button -->
						<p class="text-center mb-0">
							<a href="#news" class="btn btn-primary" style="padding: 0.5rem 2.0rem; font-size: 1.5rem"> 开始 </a>
						</p>
					</div>
				</div>
			</div>
			<!-- / .row -->
		</div>
		<!-- / .container -->
	</section>

	<!-- SECTIONS
    ================================================== -->
	<!-- PAGES
    ================================================== -->

	<!-- News
    ================================================== -->
	<section class="section bg-dark" id="news">
		<div class="carousel slide" id="review-slider" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#review-slider" data-slide-to="0" class="active"></li>
				<li data-target="#review-slider" data-slide-to="1"></li>
				<li data-target="#review-slider" data-slide-to="2"></li>
			</ol>
			<div class="caousel-inner">
				<div class="container">
					<div class="row">
						<div class="col-lg-10 m-auto">
							<div class="carousel-item active text-center test-content">
								<img src="img/2.jpg" alt="" class="img-fluid ">

								<div class="client-text">
									<h3>新起点 新征程</h3>
								</div>
							</div>

							<div class="carousel-item text-center test-content">
								<img src="img/3.jpg" alt="" class="img-fluid ">

								<div class="client-text">
									<h3>拨穗正冠 扬帆起航</h3>
								</div>
							</div>

							<div class="carousel-item text-center test-content">
								<img src="img/4.jpg" alt="" class="img-fluid ">

								<div class="client-text">
									<h3>定格当下 相伴未来</h3>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- SERVICES
    ================================================== -->
	<section class="section" id="services">
		<div class="container">
			<div class="row justify-content-center mb-4">
				<div class="col-md-8 col-lg-6 text-center">

					<!-- Heading -->
					<h2 class="lg-title mb-2">全面服务</h2>

					<!-- Subheading -->
					<p class="mb-5 ">多种多样，应有尽有</p>

				</div>
			</div>
			<!-- / .row -->

			<div class="row justy-content-center">
				<div class="col-lg-3 col-md-6">
					<div class="text-center feature-block">
						<div class="feature-icon-block mb-4">
							<i class="oi oi-wrench"></i>
						</div>
						<h4 class="mb-3 ">故障报修</h4>
						<p>Our team are experts in matching you with the right provider.</p>
					</div>
				</div>

				<div class="col-lg-3 col-md-6">
					<div class="text-center feature-block">
						<div class="feature-icon-block mb-4">
							<i class="oi oi-magnifying-glass"></i>
						</div>
						<h4 class="mb-3">记录查询</h4>
						<p>We've been awarded for our high rate of customer satisfaction.</p>
					</div>
				</div>

				<div class="col-lg-3 col-md-6">
					<div class="text-center feature-block">
						<div class="feature-icon-block mb-4">
							<i class="oi oi-browser"></i>
						</div>
						<h4 class="mb-3">问题通知</h4>
						<p>We only compare market leaders with a reputation for quality.</p>
					</div>
				</div>

				<div class="col-lg-3 col-md-6">
					<div class="text-center feature-block">
						<div class="feature-icon-block mb-4">
							<i class="oi oi-pencil"></i>
						</div>
						<h4 class="mb-3">反馈留言</h4>
						<p>We only compare market leaders with a reputation for service.</p>
					</div>
				</div>
			</div>
		</div>
		<!-- / .container -->
	</section>

	<!-- FOOTER
    ================================================== -->
	<footer class="top-padding bg-dark">
		<!--Content -->
		<div class="container">
			<div class="row align-self-center">
				<div class="col-lg-4 col-md-6">
					<div class="footer-widget">
						<!-- Brand -->
						<a href="#" class="footer-brand text-white"> 后勤服务管理系统 </a>
						<p>
							<i class="oi oi-people"></i> 专业的管理团队. <br> <i class="oi oi-graph"></i> 高效的组织机构. <br> <i class="oi oi-clock"></i> 24小时服务.<br> <i class="oi oi-heart"></i> 给您最完美的体验.
						</p>
					</div>
				</div>

				<div class="col-lg-2 ml-lg-auto col-md-2">

					<!-- Links -->
					<ul class="footer-link list-unstyled ml-0 justify-content-end">
						<li>
							<a href="#" class="text-white"> 服务 </a>
						</li>
						<li>
							<a href="#" class="text-white"> 动态 </a>
						</li>
						<li>
							<a href="#" class="text-white"> 反馈 </a>
						</li>
					</ul>
				</div>
				<div class="col-lg-3 col-md-4">

					<!-- Links -->
					<ul class="footer-link list-unstyled ml-0 justify-content-end">
						<li>
							<i class="oi oi-phone"></i> +123-4567890
						</li>
						<li>
							<i class="oi oi-location"></i> 成都理工大学
						</li>
						<li>
							<i class="oi oi-link-intact"></i> www.rearservice.manage
						</li>
					</ul>
				</div>
			</div>
			<!-- / .row -->

			<div class="row justify-content-md-center footer-copy">
				<div class="col-lg-8 col-md-6 col-sm-6 text-center">
					<p class="lead text-white-50">&copy; Copyright Reserved to Themeturn | Design and Developed by Esrat</p>
				</div>
			</div>
		</div>
		<!-- / .container -->
	</footer>

	<!-- JAVASCRIPT
    ================================================== -->
	<!-- Global JS -->
	<script src="js/jquery-3.4.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/tooltip.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

	<!-- Plugin JS -->
	<script src="js/jquery.easing.min.js"></script>

	<!-- Theme JS -->
	<script src="js/theme.js"></script>

</body>
</html>