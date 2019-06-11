<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
						<a class="dropdown-item js-scroll-trigger" href="#service_repaire">故障报修</a>
						<a class="dropdown-item js-scroll-trigger" href="#service_query">记录查询</a>
						<a class="dropdown-item js-scroll-trigger" href="#service_question">问题通知</a>
						<a class="dropdown-item js-scroll-trigger" href="#service_reply">反馈留言</a>
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
