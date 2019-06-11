<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.ArrayList" import="javaBean.RepairTable"%>
<jsp:useBean id="RepairTable" class="javaBean.RepairTable"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
  <%
	ArrayList<RepairTable> repairTable = (ArrayList<RepairTable>)request.getAttribute("repairTable");
	int lenth = repairTable.size();
%>
<body>
<table>
  <tbody>
    <tr>
      <td><h5>报修单号</h5></td>
      <td><h5>学号</h5></td>
      <td><h5>联系方式</h5></td>
      <td><h5>地址</h5></td>
      <td><h5>故障类型</h5></td>
      <td><h5>故障描述</h5></td>
      <td><h5>图片</h5></td>
      <td><h5>提交时间</h5></td>
      <td><h5>状态</h5></td>
      <td><h5>审核</h5></td>
    </tr>
     <%
		for(int i=0;i<lenth;i++){
			RepairTable Repair = repairTable.get(i);
			String RepairID = Repair.getRepairID();
			String StudentID = Repair.getStudentId();
			String RepairPhone = Repair.getRepairPhone();
			String Addr = Repair.getAddr();
			String Type = Repair.getType();
			String BADInformation = Repair.getBADInformation();
			String BADimage = Repair.getBADimage();
			String RepairDate = Repair.getRepairDate();
			String ProcessInform = Repair.getProcessInform();
			out.print("<tr><td>"+RepairID+"</td><td>"+
			        StudentID+"</td><td>"+RepairPhone+"</td><td>"+Addr+"</td><td>"+Type+
					"</td><td>"+BADInformation+"</td><td>"+BADimage+"</td><td>"+RepairDate+"</td><td>"+
			        ProcessInform+"</td><td><a href='CheckServlet?method=pass&RepairID="+RepairID+
					"'>通过</a>&nbsp;&nbsp;<a href='CheckServlet?method=faluse&RepairID="+RepairID+"'>不通过</a></td></tr>"
					);
		}
	%>
  </tbody>
</table>
</body>
</html>