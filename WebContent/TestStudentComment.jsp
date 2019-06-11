<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>这个页面不是留言页面，是维修后写评语的页面，这个页面应该做成弹窗</h1>
<%
String RepairID = request.getParameter("RepairID"); 
%>
<form id="comment" name= "comment" method= "post" action="StudentServlet?method=comment&RepairID=<%=RepairID%>">
	评价：<input type="text" name="comment" id="comment"/><br><br>
	<input type="submit" name="submit" id="submit" value="提交" />
</form>

</body>
</html>