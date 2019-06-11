<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.ArrayList" import="javaBean.Worker"%>
<jsp:useBean id="Worker" class="javaBean.Worker"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	ArrayList<Worker> WorkTable = (ArrayList<Worker>)request.getAttribute("WorkTable");
	int lenth = WorkTable.size();
%>
<body>
<table>
 <tbody>
    <tr>
      <td><h5> 工号</h5></td>
      <td><h5> 所属部门编号</h5></td>
      <td><h5> 姓名</h5></td>
      <td><h5> 密码</h5></td>
      <td> <h5>性别</h5></td>
      <td ><h5> 电话</h5></td>
      <td ><h5> 邮箱</h5></td>
      <td> <h5>工种</h5></td>
      <td><h5> 维修班组</h5></td>
      <td ><h5> 照片</h5></td>
      <td><h5> 点赞次数</h5></td>
      <td><h5> 管理</h5></td>
    </tr>
  	<%
		for(int i=0;i<lenth;i++){
			Worker worker = WorkTable.get(i);
			String id = worker.getworkerID();
			String  depid = worker.getDepID();
			String	pasd = worker.getworkerPswd();
			String	name = worker.getworkerName();
			String	gender = worker.getworkerGender();
			String	tel = worker.getworkerTel();
			String	email = worker.getemail();
			String	cls = worker.getworkerClass();
			String	photos = worker.getphoto();
			String	major = worker.getworkerMajor();
			String	rewards = worker.getreward();
			out.print("<tr><td>" + id + "</td><td>" + depid + "</td><td>" + name + "</td><td>" + pasd + "</td><td>"
					+ gender + "</td><td>" + tel + "</td><td>" + email + "</td><td>" + major+ "</td><td>" + cls + "</td><td>" + photos 
					+ "</td><td>" + rewards + "</td><td><a href='WorkerSet?method=showupdate&aa=" + id 
					+ "'>修改</a>、<a href='WorkerSet?method=delete&aa=" + id + "'>删除</a></td></tr>");
		}
	%>
  </tbody>
</table>
</body>
</html>