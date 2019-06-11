<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.ArrayList" import="javaBean.Complaint"%>
<jsp:useBean id="RepairTable" class="javaBean.Complaint"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>网络报修管理平台</title>
</head>
<%
	ArrayList<Complaint> ComplaintTable = (ArrayList<Complaint>)request.getAttribute("ComplaintTable");
	int lenth = ComplaintTable.size();
%>
<table border="1"style="margin-bottom:100px">
  <tr><td>投诉编号</td>
  <td>报修编号</td>
  <td>姓名</td>
  <td>投诉人编号</td>
  <td>身份</td>
  <td>投诉内容</td>
  <%
            for(int i=0;i<lenth;i++){
            Complaint Complaint = ComplaintTable.get(i);
	     	String ComplaintID = Complaint.getComplaintID();
		    String RepairID = Complaint.getRepairID();
	        String workerID = Complaint.getworkerID();
		    String Complaintpeople = Complaint.getComplaintpeople();
	     	String identity= Complaint.getidentity();
		    String ComplaintIntInfor = Complaint.getComplaintIntInfor();
				out.print("<tr><td>" + ComplaintID+ "</td><td>" + RepairID + "</td><td>" + Complaintpeople + "</td><td>" + workerID + "</td><td>"
						+ identity + "</td><td>" + ComplaintIntInfor + "</td></tr>");
			
		}
		    %>
</table>
</body>
</html>