package manager;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dataBase.sql_data;
import javaBean.RepairTable;
import javaBean.Worker;
import mail.Mail;

/**
 * Servlet implementation class CheckServlet
 */
@WebServlet("/CheckServlet")
public class CheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String method = request.getParameter("method");
		System.out.println(method);
		if(method.equals("pass")) {
			//审核通过
			try {
				pass(request,response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(method.equals("faluse")) {
			//审核不通过
			faluse(request,response);
		}else if(method.equals("show")) {
			//显示报修表
			show(request,response);
		}else {
				System.out.println("method参数错误");
			}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	private void faluse(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String RepairID = request.getParameter("RepairID");
		String fail = "审核失败";
		sql_data db = new sql_data();
		String sql = "update repair set ProcessInform='"+fail+"' where RepairID='"+RepairID+"'";
		db.executeUpdate(sql);
		show(request,response);
	}

	private void pass(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException{
		// TODO Auto-generated method stub
		String RepairID = request.getParameter("RepairID");
		String pass = "审核通过";
		sql_data db = new sql_data();
		String sql = "update repair set ProcessInform='"+pass+"' where RepairID='"+RepairID+"'";
		db.executeUpdate(sql);
		depart(RepairID);
		show(request,response);
	}

	private void show(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String sql = "select * from repair where  ProcessInform ='审核中'";
		sql_data db = new sql_data();
		ResultSet rs = db.executeQuery(sql);
		ArrayList<RepairTable> repairTable = new ArrayList<RepairTable>();
		try {
			while(rs.next()) {
				String RepairID = rs.getString("RepairID");
				String workerID = null;
				String StudentId = rs.getString("StudentId");
				String RepairPhone = rs.getString("RepairPhone");
				String RepairDate = rs.getString("RepairDate");
				String Addr = rs.getString("Addr");
				String Type = rs.getString("Type");
				String BADInformation = rs.getString("BADInformation");
				String BADimage = rs.getString("BADimage");
				String ProcessInform = rs.getString("ProcessInform");
				String Comment = null;
				RepairTable tablerow = new RepairTable(RepairID,workerID,StudentId,
						RepairPhone,RepairDate,Addr,Type,BADInformation,BADimage,ProcessInform,Comment);
				repairTable.add(tablerow);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("repairTable", repairTable);
		request.getRequestDispatcher("./MHY_TestCheck.jsp").forward(request, response);
	}
	
	/**
	 * 为审核通过的维修单自动分配工人
	 * @param RepairID
	 * @throws SQLException
	 */
	public void depart(String RepairID) throws  SQLException {
		sql_data db = new sql_data();
		String sql="select Type from repair where RepairID='"+RepairID+"'";
		ArrayList<String> workerID = new ArrayList<String>();
		ResultSet rs = db.executeQuery(sql);
		while(rs.next()) {
			String Type = rs.getString("Type");
			sql="select workerID from worker where workerMajor='"+Type+"'";
			ResultSet rs1 = db.executeQuery(sql);
			while(rs1.next()) {
				workerID.add(rs1.getString("workerID"));
			}
			int i = (int)Math.random()*workerID.size();	
			String Wid=workerID.get(i);
			sql = "update repair set workerID='"+ Wid +"' where RepairID='"+RepairID+"'";
			db.executeUpdate(sql);
			sql="select email from worker where workerID='"+Wid+"'";
		}
		//向工人发送提醒邮件
		rs = db.executeQuery(sql);
		if(rs.next()) {
			String email = rs.getString("email");
			Mail mail = new Mail(email);
			try {
				mail.sendMail();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
