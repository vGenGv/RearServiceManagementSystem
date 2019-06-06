<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ZH-cn">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="css/bootstrap.min.css" />
<title>Hello World</title>
</head>
<body>
<%String test = session.getAttribute("test").toString();
  out.print(test);%>
	<div class="container">
		<div class="jumbotron">
			<h1>我的第一个 Bootstrap 页面</h1>
			<p>重置窗口大小，查看响应式效果！</p>
		</div>
		<div class="row">
			<div class="col-sm-4">
				<h3>第一列</h3>
				<p>学的不仅是技术，更是梦想！</p>
				<p>再牛逼的梦想,也抵不住你傻逼似的坚持！</p>
			</div>
			<div class="col-sm-4">
				<h3>第二列</h3>
				<p>学的不仅是技术，更是梦想！</p>
				<p>再牛逼的梦想,也抵不住你傻逼似的坚持！</p>
			</div>
			<div class="col-sm-4">
				<h3>第三列</h3>
				<p>学的不仅是技术，更是梦想！</p>
				<p>再牛逼的梦想,也抵不住你傻逼似的坚持！</p>
			</div>
		</div>
	</div>

	<script src="js/jquery-3.4.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/tooltip.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>