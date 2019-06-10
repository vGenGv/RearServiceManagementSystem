<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.ArrayList" import="javaBean.RepairTable"%>
<jsp:useBean id="RepairTable" class="javaBean.RepairTable"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	ArrayList<RepairTable> repairTable = (ArrayList<RepairTable>)request.getAttribute("repairTable");
	int lenth = repairTable.size();
%>
<table>
	<thead><tr><th>维修单号</th><th>日期</th><th>维修状态</th><th>操作</th></tr></thead>
	<tbody>
	<%
		for(int i=0;i<lenth;i++){
			RepairTable Repair = repairTable.get(i);
			String id = Repair.getRepairID();
			String date = Repair.getRepairDate();
			String processInfo = Repair.getProcessInform();
			String comment = Repair.getComment();
			out.print("<tr><td>"+id+"</td>"+"<td>"+date+"</td>"+"<td>"+processInfo+"</td>");
			if(processInfo.equals("审核通过")){
				out.print("<td><a href='StudentServlet?method=complete&RepairID="+id+"'>已完工  </a><a href='StudentServlet?method=complain&RepairID="+id+"'>投诉</a></td></tr>");
			}else if(processInfo.equals("审核中")){
				out.print("<td><a href='StudentServlet?method=delete&RepairID="+id+"'>撤回  </a><a href='StudentServlet?method=complain&RepairID="+id+"'>投诉</a></td></tr>");
			}else if(processInfo.equals("已完工")){
				if(comment==null){
					out.print("<td><a href='TestComment.jsp?RepairID="+id+"'>评价  </a><a href='StudentServlet?method=complain&RepairID="+id+"'>投诉</a></td></tr>");
				}else{
					out.print("<td><a href=''>查看评价  </a><a href='StudentServlet?method=complain&RepairID="+id+"'>投诉</a></td></tr>");
				}
			}else{out.print("<td><a href='ComplainServlet?RepairID="+id+"'>投诉</a></td></tr>");}
		}
	%>
	</tbody>
</table>

</body>
</html>