<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList" import="javaBean.RepairTable"%>
<jsp:useBean id="RepairTable" class="javaBean.RepairTable"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		ArrayList<RepairTable> repairTable = (ArrayList<RepairTable>) request.getAttribute("repairTable");
		int lenth = repairTable.size();
	%>
	<table border='1'>
		<thead>
			<tr>
				<th>维修单号</th>
				<th>保修日期</th>
				<th>维修状态</th>
				<th>维修地点</th>
				<th>故障类型</th>
				<th>故障描述</th>
				<th>故障图片</th>
				<th>操作类型</th>
			</tr>
		</thead>
		<tbody>
			<%
				for (int i = 0; i < lenth; i++) {
					RepairTable Repair = repairTable.get(i);
					String id = Repair.getRepairID();
					String date = Repair.getRepairDate();
					String processInfo = Repair.getProcessInform();
					String comment = Repair.getComment();
					String addr = Repair.getAddr();
					String Type = Repair.getType();
					String BADInformation = Repair.getBADInformation();
					String BADimage = Repair.getBADimage();
					String ProcessInform = Repair.getProcessInform();
					out.print("<tr><td>" + id + "</td>" + "<td>" + date + "</td>" + "<td>" + processInfo + "</td>" + "<td>"
							+ addr + "</td>" + "<td>" + Type + "</td>" + "<td>" + BADInformation + "</td>" + "<td>"
							+ BADimage + "</td>" + "<td>" + ProcessInform + "</td>");
					if (processInfo.equals("审核通过")) {
						out.print("<td><a>待维修  </a><a href='TestComplain2.jsp?RepairID=" + id + "'>投诉</a></td></tr>");
					} else {
						out.print("<td><a href='TestComplain2.jsp?RepairID=" + id + "'>投诉</a></td></tr>");
					}
				}
			%>

		</tbody>
	</table>
</body>
</html>