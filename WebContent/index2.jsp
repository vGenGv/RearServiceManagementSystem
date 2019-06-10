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
<title>CDUT后勤管理系统</title>
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
		<a class="navbar-brand " href="#"> <img alt="brand"
			src="img\logo.png" style="width: 80x; height: 80px; display: inline;"></a>
		<a class="navbar-brand " style="font-size: 28px;" href="#">后勤管理系统</a>

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

				<li class="nav-item active "><a class="nav-link" href="#">主页
						<span class="sr-only">(current)</span>
				</a></li>
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
				<button class="btn btn-success" type="submit">搜索</button>
			</form>
			<button type="submit" class="btn btn-success">登陆</button>
		</div>
	</nav>


	<!-- 轮播图部分 -->
	<div class="container-fluid" style="background-color: lavender;">
		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm-10">
				<div id="demo" class="carousel slide" data-ride="carousel">
					<!-- 指示符 -->
					<ul class="carousel-indicators">
						<li data-target="#demo" data-slide-to="0" class="active"></li>
						<li data-target="#demo" data-slide-to="1"></li>
						<li data-target="#demo" data-slide-to="2"></li>
						<li data-target="#demo" data-slide-to="3"></li>
						<li data-target="#demo" data-slide-to="4"></li>
					</ul>

					<!-- 轮播图片 -->
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="img\2.jpg">
						</div>
						<div class="carousel-item">
							<img src="img\3.jpg">
						</div>
						<div class="carousel-item">
							<img src="img\4.jpg">
						</div>
						<div class="carousel-item">
							<img src="img\5.jpg">
						</div>
						<div class="carousel-item">
							<img src="img\6.jpg">
						</div>
					</div>

					<!-- 左右切换按钮 -->
					<a class="carousel-control-prev" href="#demo" data-slide="prev">
						<span class="carousel-control-prev-icon"></span>
					</a> <a class="carousel-control-next" href="#demo" data-slide="next">
						<span class="carousel-control-next-icon"></span>
					</a>
				</div>
			</div>
			<div class="col-sm-1"></div>
		</div>
	</div>
	<span class="d-block p-2 bg-dark text-white"
		style="font-size: 30px; text-align: center">最新公告</span>
	<!-- 四块巨幕 -->
	<!-- 分割线 -->
	<div class="container-fluid">
		<!-- Main component for a primary marketing message or call to action -->
		<div class="row">
			<div class="col-sm-4" style="background-color: lavender; height: 5px"></div>
			<div class="col-sm-8" style="background-color: #FFB6C1;"></div>
		</div>
	</div>
	<!-- 第一块巨幕 -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-4" style="background-color: white; height: 5px">
				<img src="img\1-1.svg" class="img-rounded"
					style="width: 300px; height: 300px">
			</div>
			<!-- Main component for a primary marketing message or call to action -->
			<div class="col-sm-8" style="background-color: white;">
				<div class="jumbotron"
					style="background-color: white; width: device-width; height: 300px">
					<h1 style="font-size: 45px; color: #5B5B5B; font-weight: bolder"
						class="text-center">掌上后勤</h1>
					<h2 style="font-size: 17px; color: #5B5B5B;" class="text-center">
						<br>
						系统更新后，后勤相关的操作得以在网上实行。欢迎广大师生通过该系统对后勤管理与服务工作进行监督、评价，需要维修时通过系统进行保修，我们会及时处理。<br>
					</h2>
				</div>
			</div>
		</div>
		<!-- row -->
	</div>
	<!-- contanier -->
	<!-- 分割线2 -->
	<div class="container-fluid">
		<!-- Main component for a primary marketing message or call to action -->
		<div class="row">
			<div class="col-sm-8" style="background-color: #FFB6C1;"></div>
			<div class="col-sm-4" style="background-color: lavender; height: 5px"></div>

		</div>
	</div>
	<!-- 第二块巨幕 -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-8" style="background-color: white;">
				<!-- Main component for a primary marketing message or call to action -->
				<div class="jumbotron"
					style="background-color: white; width: device-width; height: 300px">
					<h1 style="font-size: 45px; color: #5B5B5B; font-weight: bolder"
						class="text-center">维修保障</h1>
					<h2 style="font-size: 17px; color: #5B5B5B;" class="text-center">
						<br>所有维修人员均有一定的维护经验，经过正规的上岗培训，我集团均进行了严格个人资料登记与管理，维护期间均负责到人，全程记录便于后期的问题查找。
					</h2>
				</div>
			</div>
			<div class="col-sm-4" style="background-color: white; height: 5px">
				<img src="img\1-2.svg" class="img-rounded"
					style="width: 300px; height: 300px">
			</div>
		</div>
	</div>
	<!-- 分割线3 -->
	<div class="container-fluid">
		<!-- Main component for a primary marketing message or call to action -->
		<div class="row">
			<div class="col-sm-4" style="background-color: lavender; height: 5px"></div>
			<div class="col-sm-8" style="background-color: #FFB6C1;"></div>
		</div>
	</div>
	<!-- 第三块巨幕 -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-4" style="background-color: white;">
				<img src="img\1-3.svg" class="img-rounded"
					style="width: 300px; height: 300px">
			</div>
			<!-- Main component for a primary marketing message or call to action -->
			<div class="col-sm-8" style="background-color: white;">
				<div class="jumbotron"
					style="background-color: white; width: device-width; height: 300px">
					<h1 style="font-size: 45px; color: #5B5B5B; font-weight: bolder"
						class="text-center">车辆服务</h1>
					<h2 style="font-size: 17px; color: #5B5B5B;" class="text-center">
						<br>
						校园内的小白龙进行了新一轮的升级，保证每一辆车都能实现刷卡功能，严格规定司机的行车路线，正确规范司机的行车习惯，给同学带来更好的乘车体验。
					</h2>
				</div>
			</div>
		</div>
		<!-- row -->
	</div>
	<!-- contanier -->
	<!-- 分割线4 -->
	<div class="container-fluid">
		<!-- Main component for a primary marketing message or call to action -->
		<div class="row">
			<div class="col-sm-8" style="background-color: #FFB6C1;"></div>
			<div class="col-sm-4" style="background-color: lavender; height: 5px"></div>

		</div>
	</div>
	<!-- 第五六个模块 -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-6">
				<table class="table">
					<thead>
						<tr>
							<th scope="col"><h4>
									工作动态
									</h>
									<!-- 这里不要改成h4，否则会把接下来的图片放到第二行 -->
									<a href="#"><img src="img\more.gif" class="float-right"></a></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><a class="card-text" href="#" style="color: #5B5B5B">
									<img src="img\link.gif">我校幼儿园举行“放飞梦想 快乐成长”六一儿童节文艺汇演活动<br>
							</a></td>
						</tr>
						<tr>
							<td><a class="card-text" href="#" style="color: #5B5B5B">
									<img src="img\link.gif"> 后勤服务集团召开4月份中心主任例会 <br>
							</a></td>
						</tr>
						<tr>
							<td><a class="card-text" href="#" style="color: #5B5B5B">
									<img src="img\link.gif"> 后勤服务集团召开5月份中心主任例会 <br>
							</a></td>
						</tr>
						<tr>
							<td><a class="card-text" href="#" style="color: #5B5B5B">
									<img src="img\link.gif"> 四川省高校后勤协会成都第二片区2019年第一会议在我校召开 <br>
							</a></td>
						</tr>
						<tr>
							<td><a class="card-text" href="#" style="color: #5B5B5B">
									<img src="img\link.gif">
									能源服务中心尹协忠等四人获评动专会2017-2018年度个人先进称号<br>
							</a></td>
						</tr>
					</tbody>
				</table>
			</div>

			<div class="col-sm-6" style="background-color: white;">

				<table class="table">
					<thead>
						<tr>
							<th scope="col"><h4>
									党建之窗
									</h>
									<!-- 这里不要改成h4，否则会把接下来的图片放到第二行 -->
									<a href="#"><img src="img\more.gif" class="float-right"></a></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><a class="card-text" href="#" style="color: #5B5B5B">
									<img src="img\link.gif">后勤服务集团党总支获评2017-2018年度四川省高校后勤思想政治工作先进党组织<br>
							</a></td>
						</tr>
						<tr>
							<td><a class="card-text" href="#" style="color: #5B5B5B">
									<img src="img\link.gif"> 后勤服务集团党总支举办“廉政文化史”专题讲座 <br>
							</a></td>
						</tr>
						<tr>
							<td><a class="card-text" href="#" style="color: #5B5B5B">
									<img src="img\link.gif"> 后勤服务集团退休党支部走进战旗村 <br>
							</a></td>
						</tr>
						<tr>
							<td><a class="card-text" href="#" style="color: #5B5B5B">
									<img src="img\link.gif"> 后勤服务集团召开中心组学习（扩大）会议 <br>
							</a></td>
						</tr>
						<tr>
							<td><a class="card-text" href="#" style="color: #5B5B5B">
									<img src="img\link.gif"> 后勤服务集团党总支组织观看反腐倡廉影片《反贪风暴4》<br>
							</a></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<!-- row -->
	</div>
	<!-- container -->
	<!-- 分割线5 -->
	<div class="container-fluid">

		<!-- Main component for a primary marketing message or call to action -->
		<div class="row">
			<div class="col-sm-4" style="background-color: lavender; height: 5px"></div>
			<div class="col-sm-8" style="background-color: #FFB6C1;"></div>


		</div>
	</div>

	<!-- 专题部分 -->
	<div class="container-fluid">
		<table class="table">
			<thead>
				<tr>
					<th scope="col"><h4>
							热点专题
							</h>
							<!-- 这里不要改成h4，否则会把接下来的图片放到第二行 -->
							<a href="#"><img src="img\more.gif" class="float-right"></a></th>
				</tr>
			</thead>
		</table>
		<div class="row">
			<div class="col-sm-3" style="height: 125px">
				<img src="img\zt1.png">
			</div>
			<div class="col-sm-3" style="height: 125px">
				<img src="img\zt2.png">
			</div>
			<div class="col-sm-3" style="height: 125px">
				<img src="img\zt3.png">
			</div>
			<div class="col-sm-3" style="height: 125px">
				<img src="img\zt3.png">
			</div>
		</div>
	</div>
	<!-- 分割线5 -->
	<div class="container-fluid">
		<!-- Main component for a primary marketing message or call to action -->
		<div class="row">
			<div class="col-sm-4" style="background-color: lavender; height: 5px"></div>
			<div class="col-sm-8" style="background-color: #FFB6C1;"></div>
		</div>
	</div>


	<!-- 大字体部分 -->
	<div class="container-fluid">
		<!-- Main component for a primary marketing message or call to action -->
		<div class="jumbotron"
			style="background-color: white; width: device-width; padding: 55px; margin: 0;">

			<h1 style="font-size: 70px; color: #5B5B5B; font-weight: bolder"
				class="text-center">穷究于理 成就于工</h1>
			<h2 style="font-size: 30px; color: #5B5B5B;" class="text-center">
				<br>管理提效益 服务提质量 环境提形象
			</h2>
		</div>
	</div>

	<!-- 分割线6 -->
	<div class="container-fluid">
		<!-- Main component for a primary marketing message or call to action -->
		<div class="row">
			<div class="col-sm-8" style="background-color: #FFB6C1;"></div>
			<div class="col-sm-4" style="background-color: lavender; height: 5px"></div>
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
						style="font-size: 5px; text-align: right">邮政编码：610059|联系方式|<a
						href="#"><img class="rounded float-right"
							src="img\facebook.PNG" style="height: 36px"></a><a href="#"><img
							class="rounded float-right" src="img\wechat.PNG"
							style="height: 36px"></a><a href="#"><img
							class="rounded float-right" src="img\weibo.PNG"
							style="height: 36px"></a></span>
			</div>
		</div>

	</div>


	<script src="js/jquery-3.4.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/tooltip.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

</body>
</html>

