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
				<h2>
					<img alt="brand" src="img\logo_white.png" style="width: 40x; height: 40px;" id="logo_img" />后勤服务管理系统
				</h2>
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
					<li class="nav-item">
						<a class="nav-link js-scroll-trigger" href="#services"> 服务 </a>
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
					<form class="needs-validation" novalidate method="post" action="LoginServlet">
						<!-- Username -->
						<div class="form-group row justify-content-center">
							<label for="loginInputUsername" class="col-sm-3 col-form-label">用户名</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" id="loginInputUsername" name="loginInputUsername" placeholder="Username" required>
								<div class="invalid-feedback">请输入用户名</div>
							</div>
						</div>

						<!-- Password -->
						<div class="form-group row justify-content-center">
							<label for="loginInputPassword" class="col-sm-3 col-form-label">密码</label>
							<div class="col-sm-7">
								<input type="password" class="form-control" id="loginInputPassword" name="loginInputPassword" placeholder="Password" required>
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
							<i class="oi oi-people"></i> 专业的管理团队. <br> <i class="oi oi-graph"></i> 高效的组织机构. <br> <i class="oi oi-clock"></i> 24小时服务.<br>
							<i class="oi oi-heart"></i> 给您最完美的体验.
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