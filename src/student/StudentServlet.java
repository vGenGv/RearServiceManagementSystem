package student;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dataBase.sql_data;
import javaBean.CreatID;
import javaBean.RepairTable;

/**
 * Servlet implementation class StudentServlet
 */
@WebServlet("/StudentServlet")
public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String method = request.getParameter("method");
		if(method.equals("delete")) {
			//撤回报修
			delete(request,response);
		}else if(method.equals("showHistory")) {
			//显示报修保修单
			showHistory(request,response);
		}else if(method.equals("complete")) {
			//点击完工
			complete(request,response);
		}else {
			System.out.println("method参数错误");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String method = request.getParameter("method");
		if(method.equals("repair")) {
			//报修功能
			Repair(request,response);
		}else if(method.equals("comment")) {
			//评价此次维修
			comment(request,response);
		}else if(method.equals("complain")) {
			//投诉
			complain(request,response);
		}else {
			System.out.println("method参数错误");
		}
		
	}
	
	private void Repair(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//生成编号与日期
		String RepairID = CreatID.creatID("R");
		String Date = getDate();
		//session中获取学生编号
		String StudentId= request.getSession().getAttribute("id").toString();
		//从jsp表单中获取
		String Addr = request.getParameter("Addr");
		if(Addr == null){
			Addr=request.getSession().getAttribute("addr").toString();
		}
		String StudentPhone = request.getParameter("DeclraPhone");
		String Type = request.getParameter("Type");
		String BADInformation = request.getParameter("BADInformation");
		//存入数据库
		String sql = "insert into Repair "
				+ "(RepairID,StudentId,RepairPhone,RepairDate,Addr,Type,BADInformation,ProcessInform) values"
				+ "('"+RepairID+"','"+StudentId+"','"+StudentPhone+"','"+Date+"','"+Addr+"','"+Type+"','"+BADInformation+"','审核中')";
		sql_data db = new sql_data();
		db.executeInsert(sql);
		//应该弹出成功提示框
		response.sendRedirect("./TestStudent.jsp");
	}
	
	private void showHistory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String id = session.getAttribute("id").toString();
		String sql = "select * from repair where StudentID='"+id+"';";
		sql_data db = new sql_data();
		ResultSet rs = db.executeQuery(sql);
		ArrayList<RepairTable> repairTable = new ArrayList<RepairTable>();
		try {
			while(rs.next()) {
				String RepairID = rs.getString("RepairID");
				String workerID = rs.getString("workerID");
				String StudentId = rs.getString("StudentId");
				String RepairPhone = rs.getString("RepairPhone");
				String RepairDate = rs.getString("RepairDate");
				String Addr = rs.getString("Addr");
				String Type = rs.getString("Type");
				String BADInformation = rs.getString("BADInformation");
				String BADimage = rs.getString("BADimage");
				String ProcessInform = rs.getString("ProcessInform");
				String Comment = rs.getString("Comment");
				RepairTable tablerow = new RepairTable(RepairID,workerID,StudentId,
						RepairPhone,RepairDate,Addr,Type,BADInformation,BADimage,ProcessInform,Comment);
				repairTable.add(tablerow);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("repairTable", repairTable);
		request.getRequestDispatcher("./TestHistory.jsp").forward(request, response);
	
	}
	
	private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String RepairID = request.getParameter("RepairID");
		String sql = "delete from Repair where RepairID='"+RepairID+"';";
		sql_data db = new sql_data();
		db.executeDelete(sql);
		showHistory(request,response);
	}
	
	private void complete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String RepairID = request.getParameter("RepairID");		
		String sql = "update Repair set ProcessInform='已完工' where RepairID='"+RepairID+"';";
		sql_data db = new sql_data();
		db.executeUpdate(sql);
		showHistory(request,response);
	}
	
	private void comment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String comment = request.getParameter("comment");
		String RepairID = request.getParameter("RepairID");
		String sql = "update Repair set comment='"+comment+"' where RepairID='"+RepairID+"';";
		sql_data db = new sql_data();
		db.executeUpdate(sql);
		showHistory(request,response);
	}
	private void complain(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String complaintID = CreatID.creatID("C");
		String RepairID = request.getParameter("RepairID");
		String complaintPeople = request.getSession().getAttribute("name").toString();
		String identity = request.getSession().getAttribute("identity").toString();
		String complaint = request.getParameter("complain");
		String sql = "insert into complainttable values('"+complaintID+"','"+
				RepairID+"','"+complaintPeople+"','"+identity+"','"+complaint+"');";
		sql_data db = new sql_data();
		db.executeInsert(sql);
		showHistory(request,response);
	}
	
	private String getDate() {
		Date date = new Date();
        String formatDate = String.format("%tF", date);
		return formatDate;
	}

}
