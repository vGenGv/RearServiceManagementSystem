<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<!--设置浏览器优先使用什么模式来渲染页面-->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- width:viewport的宽度
   width=divice-width:viewport的宽度 
   initial-scale:初始的缩放比例 
   maxmum-scale:允许用户缩放的最大比例
   user-scalable:是否允许用户手动缩放
 --->
<link rel="stylesheet" href="css/bootstrap.min.css" />
<title>CDUT后勤管理系统-维修人员入口</title>
<style>
.carousel-inner img {
	width: 100%;
	height: 100%;
}
</style>
</head>

<body>
	<!-- 导航栏 -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark ">
		<a class="navbar-brand " href="index2.jsp"> <img alt="brand"
			src="img\logo.png" style="width: 80x; height: 80px; display: inline;"></a>
		<a class="navbar-brand " style="font-size: 28px;" href="index2.jsp">后勤管理系统</a>

		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarCollapse" aria-controls="navbarCollapse"
			aria-expanded="false" aria-label="Toggle navigation">
			<!---   navbar-toggle:【触发】按钮，会有下拉导航    data-toggle:交替执行某动作，collapse:展开和收缩
          data-target:目标对象(自己定义一个名字-->

			<span class="navbar-toggler-icon"></span>
			<!--按钮里的内容,三条横杠-->
		</button>
		<div class="collapse navbar-collapse" id="navbarCollapse">
			<ul class="navbar-nav mr-auto">

				<li class="nav-item active"><a class="nav-link"
					href="index2.jsp">主页 <span class="sr-only">(current)</span></a></li>
				<li class="nav-item dropdown active"><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownMenuLink" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> 党建之窗 </a>
					<div class=" dropdown-menu">
						<a class="dropdown-item" href="#">党建工作</a> <a
							class="dropdown-item" href="#">廉政建设</a> <a class="dropdown-item"
							href="#">工会及文化建设</a> <a class="dropdown-item" href="#">“两学一做”</a>
					</div></li>
				<li class="nav-item dropdown active"><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownMenuLink" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> 新闻中心 </a>
					<div class="dropdown-menu ">
						<a class="dropdown-item" href="#">工作动态</a> <a
							class="dropdown-item" href="#">图片新闻</a> <a class="dropdown-item"
							href="#">后勤工作简报</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">最美后勤人</a> <a
							class="dropdown-item" href="#">最美女教师</a>
					</div></li>

				<li class="nav-item dropdown active"><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownMenuLink" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> 服务指南 </a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="Suggestion.jsp">建言献策</a> <a
							class="dropdown-item" href="#">集团黄页</a> <a class="dropdown-item"
							href="#">机构设置</a> <a class="dropdown-item" href="#">校园维修</a>
					</div></li>
			</ul>
			<form class="form-inline mt-2 mt-md-0">
				<input class="form-control " type="text" placeholder="Search"
					aria-label="Search">
				<button class="btn btn-dark" type="submit">搜索</button>
			</form>
			<button type="submit" class="btn btn-success">登陆</button>
		</div>
	</nav>


	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-2 bg-dark">
				<nav class="nav flex-column">

					<button type="button" class="btn btn-dark dropdown-toggle"
						style="font-size: 18px; color: white" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">维修单</button>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="ForWorker.jsp">未完工维修单</a> <a
							class="dropdown-item" href="#">维修记录</a>
					</div>
					<a class="nav-link text-center " href="ForWorker2.jsp"
						style="font-size: 18px; color: white">定期维修检查</a>

				</nav>
			</div>
			<div class="col-sm-10 bg-grey">
				<table class="table">
					<thead>
						<tr>
							<th scope="col"><h4>已完工维修单</h4> <!-- 这里不要改成h4，否则会把接下来的图片放到第二行 --></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><h5>维修单号</h5></td>
							<td><h5>报修日期</h5></td>
							<td>
								<h5>学生电话</h5>
							</td>
							<td><h5>地点</h5></td>
							<td><h5>故障类型</h5></td>
							<td><h5>故障描述</h5></td>
							<td><h5>故障图片</h5></td>
							<td><h5>操作</h5></td>
						</tr>
						<tr>
							<td>20190522001</td>
							<td>2019年5月22日11点34分09秒</td>
							<td>1827654246</td>
							<td>珙桐园</td>
							<td>水管问题</td>
							<td>水龙头漏水</td>
							<td><img src="..."></td>
							<td><button type="button" class="btn btn-secondary">问题上报</button>
							</td>
						</tr>
					</tbody>
				</table>
			</div>

		</div>
	</div>

	<!-- 底部栏 -->
	<div class="container-fluid" style="height: 5px">
		<!-- Main component for a primary marketing message or call to action -->
		<div class="row">
			<div class="col-sm-5 bg-dark">
				<span class="d-block bg-dark text-white"
					style="font-size: 5px; text-align: left">版权声明 | 网站地图 | 友情链接
					| 媒体专区 | <img src="img\ga.gif" style="height: 20px">
				</span> <span class="d-block bg-dark text-white"
					style="font-size: 5px; display: inline">关于我们 | 15766456049
					|四川省成都市二仙桥东三路一号成都理工大学6A502</span>
			</div>
			<div class="col-sm-3 bg-dark text-white">
				<img class="rounded float-center" src="img\logo.png"
					style="height: 45px">
			</div>
			<div class="col-sm-4 bg-dark text-white">
				<p style="font-size: 5px;">
					<span class="d-block bg-dark text-white"
						style="font-size: 5px; text-align: right">土拨鼠股份有限公司©版权所有|蜀ICP备05026980号</span>
					<span class="d-block bg-dark text-white"
						style="font-size: 15px; text-align: right">邮政编码：610059|联系方式
						| <a href="#"><img class="rounded float-right"
							src="img\facebook.PNG" style="height: 36px"></a><a href="#"><img
							class="rounded float-right" src="img\wechat.PNG"
							style="height: 36px"></a><a href="#"><img
							class="rounded float-right" src="img\weibo.PNG"
							style="height: 36px"></a>
					</span>
			</div>
		</div>
	</div>


	<script src="js/jquery-3.4.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/tooltip.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

</body>
</html>

