package worker;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dataBase.sql_data;
import javaBean.RepairTable;
import javaBean.CreatID;
/**
 * Servlet implementation class ShowOrder
 */
@WebServlet("/ShowOrder")
public class ShowOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowOrder() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String method = request.getParameter("method");
		if("showHistory".equals(method)) {
			showHistory(request, response);
		}else if("needToRepair".equals(method)) {
			needToRepair(request, response);
		}
		else {
			System.out.println("method参数错误");
		}

	}
	
	
	//审核通过待维修
	private void needToRepair(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
		String workerId = request.getSession().getAttribute("id").toString();
		String sql = "select * from repair where ProcessInform='审核通过' and workerID = '"+workerId+"';";

		sql_data db = new sql_data();
		ResultSet rs = db.executeQuery(sql); //执行sql语句
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
		request.getRequestDispatcher("./TestShowOrder.jsp").forward(request, response);//转到TestShowOrder.jsp页面，让维修工人看到维修单

	}
	

	
	private void showHistory(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		String workerId = request.getSession().getAttribute("id").toString();
		String sql = "select * from repair where ProcessInform = '已完工' and workerID = '"+workerId+"';";
		sql_data db = new sql_data();
		ResultSet rs = db.executeQuery(sql); //执行sql语句,有返回值
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
		request.getRequestDispatcher("./TestShowOrder.jsp").forward(request, response);//转到TestShowOrder.jsp页面，让维修工人看到维修单
	
	}
	
	private void complain(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		String ComplaintID = CreatID.creatID("C");
		String RepairID = request.getParameter("RepairID");
		String workerID = request.getSession().getAttribute("id").toString();
		String complaintPeople = request.getSession().getAttribute("name").toString();
		String identity = request.getSession().getAttribute("identity").toString();
		String complaint = request.getParameter("complain");
		String compalinInfor = request.getParameter("compalinInfor");
		String sql = "insert into complainttable values('"+ComplaintID+"','"+RepairID+"','"+workerID+"','"+complaintPeople+"','"+identity+"','"+complaint+"','"+compalinInfor+"');";
		sql_data db = new sql_data();
		db.executeInsert(sql);//excuteInsert没有返回值
		
		
		request.getRequestDispatcher("./TestShowOrder.jsp").forward(request, response);//转到TestShowOrder.jsp页面，让维修工人看到维修单
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
		if(method.equals("complain")) {
			//工人问题上报
			complain(request, response);
		}else if(method.equals("complete")) {
			//显示已完成工单
			showHistory(request, response);
		}
		
	}
	
}
