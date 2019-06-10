<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8"><!--设置浏览器优先使用什么模式来渲染页面-->
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"><!-- width:viewport的宽度
   width=divice-width:viewport的宽度 
   initial-scale:初始的缩放比例 
   maxmum-scale:允许用户缩放的最大比例
   user-scalable:是否允许用户手动缩放
 --->
<link rel="stylesheet" href="css/bootstrap.min.css" />
<title>CDUT后勤管理系统-维修部门管理入口</title>
 <style>
	  .carousel-inner img {
		  width: 100%;
		  height: 100%;
		  
  </style>
  </head>
   
  <body>
  <!-- 导航栏 -->
 <nav class="navbar navbar-expand-lg navbar-dark bg-dark " >
     <a class="navbar-brand "  href="index2.jsp">
        <img alt="brand" src="img\logo.png" style="width:80x;height:80px;display:inline;" ></a>
     <a class="navbar-brand " style="font-size:28px;" href="index2.jsp" >后勤管理系统</a>
     
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
      <!---   navbar-toggle:【触发】按钮，会有下拉导航    data-toggle:交替执行某动作，collapse:展开和收缩
          data-target:目标对象(自己定义一个名字-->

        <span class="navbar-toggler-icon"></span><!--按钮里的内容,三条横杠-->
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">

          <li class="nav-item active">
            <a class="nav-link" href="index2.jsp">主页 <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item dropdown active">
  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          党建之窗
        </a>
  <div class=" dropdown-menu">
    <a class="dropdown-item" href="#">党建工作</a>
    <a class="dropdown-item" href="#">廉政建设</a>
    <a class="dropdown-item" href="#">工会及文化建设</a>
    <a class="dropdown-item" href="#">“两学一做”</a>
  </div>
</li>
          <li class="nav-item dropdown active">
  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          新闻中心
        </a>
  <div class="dropdown-menu ">
    <a class="dropdown-item" href="#">工作动态</a>
    <a class="dropdown-item" href="#">图片新闻</a>
    <a class="dropdown-item" href="#">后勤工作简报</a>
    <div class="dropdown-divider"></div>
    <a class="dropdown-item" href="#">最美后勤人</a>
    <a class="dropdown-item" href="#">最美女教师</a>
  </div>
</li>
         
          <li class="nav-item dropdown active">
  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          服务指南
        </a>
  <div class="dropdown-menu">
  <a class="dropdown-item" href="Suggestion.jsp">建言献策</a>
    <a class="dropdown-item" href="#">集团黄页</a>
    <a class="dropdown-item" href="#">机构设置</a>
    <a class="dropdown-item" href="#">校园维修</a>
</div>
</li>
</ul>
       <form class="form-inline mt-2 mt-md-0">
      <input class="form-control " type="text" placeholder="Search" aria-label="Search">
      <button class="btn btn-dark" type="submit">搜索</button>
    </form>
        <button type="submit" class="btn btn-success">登陆</button>
      </div>
    </nav>
    
    
    <div class="container-fluid">
     <div class="row">
      <div class="col-sm-2 bg-dark" >
      <nav class="nav flex-column">
 
    <a class="nav-link text-center active" href="ForManagement.jsp"style="font-size:18px ;color:white">人员信息管理</a>

    <a class="nav-link text-center" href="ForManagementCheck.jsp"style="font-size:18px ;color:white">审核报修单</a>

 <button type="button" class="btn btn-dark dropdown-toggle" style="font-size:18px ;color:white" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
   问题记录
  </button>
  <div class="dropdown-menu">
    <a class="dropdown-item" href="ForManagementComplaint.jsp">学生投诉</a>
    <a class="dropdown-item" href="#">维修工人问题上报</a>
  </div>
</nav>
      </div>
      <div class="col-sm-10 bg-grey" >
      <table class="table">
  <thead>
    <tr>
      <th scope="col"><h4>维修工人问题上报</h4> <!-- 这里不要改成h4，否则会把接下来的图片放到第二行 --></th>
    </tr>
  </thead>
  </table>
                 <ul class="list-group">
                 <li class="list-group-item">
                 <div class="media">
                <div class="media-left" >
                  <img class="media-object" style="height:55px"src="img\head.PNG">
                </div>
                   <div class="media-body">
                  <h5 class="media-heading">Grey He</h5>
          <p>新的系统简洁大方，非常好看，太喜欢啦！</p>
       </div>
       </div>
  </li>
   <li class="list-group-item">
                 <div class="media">
                <div class="media-left" >
                  <img class="media-object" style="height:55px"src="img\head.PNG">
                </div>
                   <div class="media-body">
                  <h5 class="media-heading">穆宏宇</h5>
          <p>怎么厕所的门坏了还不来修啊！</p>
       </div>
       </div>
  </li>
   <li class="list-group-item">
                 <div class="media">
                <div class="media-left" >
                  <img class="media-object" style="height:55px"src="img\head.PNG">
                </div>
                   <div class="media-body">
                  <h5 class="media-heading">罗子阳</h5>
          <p>厕所冲水的坏了，只能拿着雨伞上厕所，还好维修人员很快就来修了！好评！</p>
       </div>
       </div>
  </li>
   <li class="list-group-item">
                 <div class="media">
                <div class="media-left" >
                  <img class="media-object" style="height:55px"src="img\head.PNG">
                </div>
                   <div class="media-body">
                  <h5 class="media-heading">乔峰</h5>
          <p>空调不凉快了，啥时候来加冷制剂呢。我爱成都埋土大学。这个默认头像真好看。嘻嘻！</p>
       </div>
       </div>
  </li>
   <li class="list-group-item">
                 <div class="media">
                <div class="media-left" >
                  <img class="media-object" style="height:55px"src="img\head.PNG">
                </div>
                   <div class="media-body">
                  <h5 class="media-heading">Hanson Geng</h5>
          <p>The maintainers are quite friendly, the whole repairing process is convenient thanks to the new systme. By the way, these pages are awesome！ Love it so much!</p>
       </div>
       </div>
  </li>
   <li class="list-group-item">
                 <div class="media">
                <div class="media-left" >
                  <img class="media-object" style="height:55px"src="img\head.PNG">
                </div>
                   <div class="media-body">
                  <h5 class="media-heading">Kevin Wang</h5>
          <p>666，我路过。</p>
       </div>
       </div>
  </li>
</ul>
                        <div class="text-center">
                            <button class="btn btn-default btn-block">查看更多</button>
                        </div>
                        
     </div>
     </div></div>
     


<!-- 分割线5 -->
       <div class="container-fluid">
      <!-- Main component for a primary marketing message or call to action -->
      <div class="row">
      <div class="col-sm-4" style="background-color:lavender; height:5px"></div>
      <div class="col-sm-8" style="background-color:#FFB6C1;"></div>
  </div>
      </div>
       <!-- 大字体部分 -->
<div class="container-fluid">
      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron" style="background-color:white; width:device-width;padding:55px;margin: 0;">
        
          <h1 style="font-size: 70px;color:#5B5B5B;font-weight: bolder" class="text-center">穷究于理 成就于工</h1>
                <h2 style="font-size: 30px;color:#5B5B5B;" class="text-center"><br>管理提效益 服务提质量 环境提形象</h2>
        </div>
      </div>

<!-- 分割线6 -->
       <div class="container-fluid">
      <!-- Main component for a primary marketing message or call to action -->
      <div class="row">
      <div class="col-sm-8" style="background-color:#FFB6C1;"></div>
    <div class="col-sm-4" style="background-color:lavender; height:5px"></div>
  </div>
      </div>
      
      <!-- 底部栏 -->
      <div class="container-fluid" style="height:5px">
      <!-- Main component for a primary marketing message or call to action -->
      <div class="row">
      <div class="col-sm-5 bg-dark" >
      <span class="d-block bg-dark text-white"style="font-size:5px;text-align:left">版权声明  | 网站地图 | 友情链接 | 媒体专区 | <img src="img\ga.gif" style="height:20px" ></span>
      <span class="d-block bg-dark text-white"style="font-size:5px;display:inline">关于我们  | 15766456049 |四川省成都市二仙桥东三路一号成都理工大学6A502</span>
      </div>
     <div class="col-sm-3 bg-dark text-white">
     <img class="rounded float-center"src="img\logo.png"style="height:45px">
     </div>
     <div class="col-sm-4 bg-dark text-white"><p style="font-size:5px;">
    <span class="d-block bg-dark text-white"style="font-size:5px;text-align:right">土拨鼠股份有限公司©版权所有|蜀ICP备05026980号</span>
     <span class="d-block bg-dark text-white"style="font-size:15px;text-align:right	">邮政编码：610059|联系方式 | <a href="#"><img class="rounded float-right"src="img\facebook.PNG"style="height:36px"></a><a href="#"><img class="rounded float-right"src="img\wechat.PNG"style="height:36px"></a><a href="#"><img class="rounded float-right"src="img\weibo.PNG"style="height:36px"></a></span>
    </div>
    </div>
    </div>
    
    
	<script src="js/jquery-3.4.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/tooltip.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	
  </body>
</html>

 