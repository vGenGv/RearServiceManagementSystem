<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String RepairID = request.getParameter("RepairID"); 
%>
<form id="form1" name= "form1" method= "post" action="StudentServlet?method=complain&RepairID=<%=RepairID%>">
	投诉：<input type="text" name="complain" id="complain"/><br><br>
	<input type="submit" name="submit" id="submit" value="提交" />
</form>
</body>
</html>