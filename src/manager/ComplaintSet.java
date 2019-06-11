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
import javaBean.Complaint;

/**
 * Servlet implementation class ComplaintSet
 */
@WebServlet("/ComplaintSet")
public class ComplaintSet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ComplaintSet() {
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
		if(method.equals("student")) {
			//显示学生投诉
			showstudent(request,response);
		}else if(method.equals("worker")) {
			//显示工人上报
			showworker(request,response);
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
	

	private void showstudent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String sql = "select * from complainttable where identity='学生' ";
		sql_data db = new sql_data();
		ResultSet rs = db.executeQuery(sql);
		ArrayList<Complaint> ComplaintTable = new ArrayList<Complaint>();
		try {
			while(rs.next()) {
				String ComplaintID = rs.getString("ComplaintID");
				String RepairID = rs.getString("RepairID");
				String StudentId = rs.getString("StudentId");
				String workerID = null;
				String Complaintpeople = rs.getString("Complaintpeople");
				String identity = rs.getString("identity");
				String ComplaintIntInfor = rs.getString("ComplaintIntInfor");
				Complaint showcomplaint = new Complaint(ComplaintID,RepairID,StudentId,workerID
						,Complaintpeople,identity, ComplaintIntInfor);
				ComplaintTable.add(showcomplaint);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("ComplaintTable", ComplaintTable);
		request.getRequestDispatcher("./MHY_TestforComplain.jsp").forward(request, response);
	}

	private void showworker(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String sql = "select * from complainttable where identity='职工' ";
		sql_data db = new sql_data();
		ResultSet rs = db.executeQuery(sql);
		ArrayList<Complaint> ComplaintTable = new ArrayList<Complaint>();
		try {
			while(rs.next()) {
				String ComplaintID = rs.getString("ComplaintID");
				String RepairID = rs.getString("RepairID");
				String StudentId = null;
				String workerID = rs.getString("workerID");
				String Complaintpeople = rs.getString("Complaintpeople");
				String identity = rs.getString("identity");
				String ComplaintIntInfor = rs.getString("ComplaintIntInfor");
				Complaint showcomplaint = new Complaint(ComplaintID,RepairID,StudentId,workerID
						,Complaintpeople,identity, ComplaintIntInfor);
				ComplaintTable.add(showcomplaint);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("ComplaintTable", ComplaintTable);
		request.getRequestDispatcher("./MHY_TestforWorkerCom.jsp").forward(request, response);
	}
	
}
