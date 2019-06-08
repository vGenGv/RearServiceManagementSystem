<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	ArrayList<String> RepairID = (ArrayList<String>)request.getAttribute("RepairID");
	ArrayList<String> RepairDate = (ArrayList<String>)request.getAttribute("RepairDate");
	ArrayList<String> ProcessInform = (ArrayList<String>)request.getAttribute("ProcessInform");
	int lenth = RepairID.size();
	String id,date,inform;
%>
<table>
	<thead><tr><th>维修单号</th><th>日期</th><th>维修状态</th><th>操作</th></tr></thead>
	<tbody>
	<%
		for(int i=0;i<lenth;i++){
			id = RepairID.get(i);
			date = RepairDate.get(i);
			inform = ProcessInform.get(i);
			out.print("<tr><td>"+id+"</td>"+"<td>"+date+"</td>"+"<td>"+inform+"</td>");
			if(inform.equals("审核通过")){
				out.print("<td><a href='/Complete'>已完工</a><a href=''>投诉</a></td></tr>");
			}else if(inform.equals("审核中")){
				out.print("<td><a href=''>撤回</a><a href=''>投诉</a></td></tr>");
			}else if(inform.equals("已完工")){
				out.print("<td><a href=''>撤回</a><a href=''>投诉</a></td></tr>");
			}else{out.print("<td><a href=''>投诉</a></td></tr>");}
		}
	%>
	</tbody>
</table>

</body>
</html>