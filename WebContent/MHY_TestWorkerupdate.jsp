<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.ArrayList" import="javaBean.Worker"%>
<jsp:useBean id="Worker" class="javaBean.Worker"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
  <tbody>
<% 
    ArrayList<Worker> WorkTable = (ArrayList<Worker>)request.getAttribute("WorkTable");
    int lenth = WorkTable.size();
    String workerID = null;
    String depid = null;
    String pasd = null;
    String name = null;
    String gender = null;
    String tel = null;
    String email = null;
    String cls = null;
    String photo = null;
    String major = null;
for(int i=0;i<lenth;i++){
	Worker worker = WorkTable.get(i);
	workerID= worker.getworkerID();
	depid = worker.getDepID();
	pasd = worker.getworkerPswd();
	name = worker.getworkerName();
	gender = worker.getworkerGender();
	tel = worker.getworkerTel();
	email = worker.getemail();
	cls = worker.getworkerClass();
	photo = worker.getphoto();
	major = worker.getworkerMajor();
}
%>
修改维修工人信息<br>
	<form action="WorkerSet?method=update" method="post">
		维修员编号：<input name="workerID" type="text" value="<%=workerID%> " readonly> 该项不可更改<br>
		部门编号：<input name="depid" type="text" value="<%=depid %>"><br>		
		姓名：<input name="name" type="text" value="<%=name%>"><br>
		密码：<input name="pasd" type="text" value="<%=pasd%>"><br>
		性别：<input name="gender" type="text" value="<%=gender %>"><br>
		电话：<input name="tel" type="text" value="<%=tel%>"><br>
		邮箱：<input name="email" type="text" value="<%=email %>"><br>
		班组：<input name="cls" type="text" value="<%=cls %>"><br>
		相片：<input name="photo" type="text" value="<%=photo %>"><br>
		工种：<input name="major" type="text" value="<%=major %>"><br>
		<input name="submit" type="submit" value="修改"><br>
	</form>
  </tbody>
</table>
</body>
</html>