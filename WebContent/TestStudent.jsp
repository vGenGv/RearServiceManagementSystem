<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<table border="1" width="" height="">
<tr><td>
	<form id="form1" name="form1" method="post" action="StudentServlet?method=repair">
	<%String value = "";%><br><br>
 	--------报修单-------<br><br>
 	（姓名学号在session中）<br><br>
      联系电话：<input type="text" name="DeclraPhone" id="DeclraPhone" /><br><br>
      地址：<input type="text" name="Addr" id="Addr" /><br><br>
      故障类型：<select name="Type" size="1" id="Type">
      <option value="test">test</option>
      <option value="electric">电</option>
      <option value="water">水</option>
      <option value="carpenter">器</option>
    </select><br><br>
      故障问题描述：<br><input type="text" name="BADInformation" id="BADInformation" value="<%=value %>"/><br><br>
      上传图片：<br><br>
    <input type="submit" name="submit" id="submit" value="提交" />
    <input type="reset" name="reset" id="reset" value="重置" />
</form></td>

<td><a href="StudentServlet?method=showHistory">---------报修记录---------</a><br><br>
</td></tr>

<tr><td>
	---------维修工登陆---------<br><br>
	<form id="workerlogin" name="workerlogin" method="post" action="LoginServlet?method=workerLogin">
	账号：<input type="text" name="id" id="id"/><br><br>
	密码：<input type="text" name="psw" id="psw"/><br><br>
	<input type="submit" name="submit" id="submit" value="登陆" />
	</form>
</td>

<td>
	-------维修管理部门登陆------<br><br>
	<form id="managerlogin" name="managerlogin" method="post" action="LoginServlet?method=managerLogin">
	账号：<input type="text" name="id" id="id"/><br><br>
	密码：<input type="text" name="psw" id="psw"/><br><br>
	<input type="submit" name="submit" id="submit" value="登陆" />
	</form>
</td></tr>

<tr><td>
	---------学生登陆---------<br><br>
	<form id="studentlogin" name="studentlogin" method="post" action="LoginServlet?method=studentLogin">
	账号：<input type="text" name="id" id="id"/><br><br>
	密码：<input type="text" name="psw" id="psw"/><br><br>
	<input type="submit" name="submit" id="submit" value="登陆" />
	</form>
</td><td>
</td></tr>

<tr><td></td><td></td></tr>
</table>
</body>
</html>