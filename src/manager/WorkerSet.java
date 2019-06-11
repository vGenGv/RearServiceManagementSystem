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

/**
 * Servlet implementation class WorkerSet
 */
@WebServlet("/WorkerSet")
public class WorkerSet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WorkerSet() {
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
		if(method.equals("delete")) {
			//删除维修人员
			delete(request,response);
		}else if(method.equals("update")) {
			//修改维修人员信息
			update(request,response);
		}
		else if(method.equals("showupdate")) {
			//修改维修人员信息
			showupdate(request,response);
		}
		else if(method.equals("show")) {
			//显示维修队伍
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
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		doGet(request, response);
	}
	

	private void show(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String sql = "select * from worker";
		sql_data db = new sql_data();
		ResultSet rs = db.executeQuery(sql);
		ArrayList<Worker> WorkTable = new ArrayList<Worker>();
		try {
			while(rs.next()) {
				String workerID = rs.getString("workerID");
				String DepID = rs.getString("DepID");
				String workerName = rs.getString("workerName");
				String workerPswd = rs.getString("workerPswd");
				String workerGender = rs.getString("workerGender");
				String workerTel = rs.getString("workerTel");
				String workerClass = rs.getString("workerClass");
				String photo = rs.getString("photo");
				String workerMajor = rs.getString("workerMajor");
				String reward = rs.getString("reward");
				String email = rs.getString("email");
				Worker showwork = new Worker(workerID,DepID,workerPswd,workerName,workerGender,
						workerTel,workerClass,photo,workerMajor,reward,email);
				WorkTable.add(showwork);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("WorkTable", WorkTable);
		request.getRequestDispatcher("./MHY_TextWorker.jsp").forward(request, response);
	}

	private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("workerID");
		String depid = request.getParameter("depid");
		String pasd = request.getParameter("pasd");
		//String name = new String(request.getParameter("name").getBytes("utf-8"),"utf-8");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String tel = request.getParameter("tel");
		String cls = request.getParameter("cls");
		String photo = request.getParameter("photo");
		String 	major = request.getParameter("major");
		String email = request.getParameter("email");

		System.out.print(id + depid + pasd + name + gender + tel + cls + photo + major + email);
		// String sql = "update set users(name,psd) values('"+name+"','"+pasd+"') where
		// id='"+id+"'";
		String sql = "update worker set DepID='" + depid + "',workerPswd='" + pasd + "',workerName='" + name + "', workerGender='" + gender
				+ "',workerTel='" + tel + "',workerClass='" + cls + "',photo='" + photo + "',workerMajor='" + major + "',email='" + email
				+ "'where workerID='" + id + "'";
		sql_data db = new sql_data();
		db.executeUpdate(sql);
		show(request,response);
	}

	private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = null;
		id = request.getParameter("aa");
		System.out.println(id);
		String sql = "delete from worker where workerID = '"+id+"'";
        sql_data db = new sql_data();
        db.executeDelete(sql);
        show(request,response);
	}

	private void showupdate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		sql_data db = new sql_data();
		String id = request.getParameter("aa");
		String sql = "select * from worker where workerID = "+ id +"";
		ResultSet rs = db.executeQuery(sql);
		ArrayList<Worker> WorkTable = new ArrayList<Worker>();
		try {
			while(rs.next()) {
				String workerID = rs.getString("workerID");
				String DepID = rs.getString("DepID");
				String workerName = rs.getString("workerName");
				String workerPswd = rs.getString("workerPswd");
				String workerGender = rs.getString("workerGender");
				String workerTel = rs.getString("workerTel");
				String workerClass = rs.getString("workerClass");
				String photo = rs.getString("photo");
				String workerMajor = rs.getString("workerMajor");
				String reward =null;
				String email = rs.getString("email");
				Worker showwork = new Worker(workerID,DepID,workerPswd,workerName,workerGender,
						workerTel,workerClass,photo,workerMajor,reward,email);
				WorkTable.add(showwork);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("WorkTable", WorkTable);
		request.getRequestDispatcher("./MHY_TestWorkerupdate.jsp").forward(request, response);
	}
	
}
