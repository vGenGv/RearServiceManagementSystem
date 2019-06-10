package login;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dataBase.sql_data;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String method = request.getParameter("method");
		if(method.equals("studentLogin")) {
			studentLogin(request,response);
		}else if(method.equals("managerLogin")) {
			managerLogin(request,response);
		}else if(method.equals("workerLogin")) {
			workerLogin(request,response);
		}
	}
	private void studentLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = null;
		String pwd = null;
		id = request.getParameter("id");
		pwd = request.getParameter("psw").trim();
		String sql = "select * from students where StudentId='"+id+"' and StudentPswd='"+pwd+"'";
		sql_data db = new sql_data();
		ResultSet rs = db.executeQuery(sql);
		if(rs==null){
			//重定向到登陆 失败页面
		}else{
			try {
				rs.next();
				String studentID = id;
				String name = rs.getString("StudentName");
				String dormitory= rs.getString("StudentDormitory");
				System.out.println(studentID+name+dormitory);
				HttpSession session=request.getSession();
				session.setAttribute("identity", "student");
				session.setAttribute("id", studentID);
				session.setAttribute("name", name);
				session.setAttribute("addr", dormitory);
				response.sendRedirect("./TestStudent.jsp");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				// 重定向到失败页面
				System.out.println("登陆出错");
			}
		}
	}
	private void managerLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = null;
		String pwd = null;
		id = request.getParameter("id");
		pwd = request.getParameter("psw").trim();
		String sql = "select * from manager where managerID='"+id+"' and managerPswd='"+pwd+"'";
		sql_data db = new sql_data();
		ResultSet rs = db.executeQuery(sql);
		if(rs==null){
			//重定向到登陆 失败页面
		}else{
			try {
				rs.next();
				String name = rs.getString("managerName");
				//System.out.println(id+name);
				HttpSession session=request.getSession();
				session.setAttribute("identity", "manager");
				session.setAttribute("id", id);
				session.setAttribute("name", name);
				response.sendRedirect("index.jsp");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				// 重定向到失败页面
				System.out.println("登陆出错");
			}
		}
	}
	private void workerLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = null;
		String pwd = null;
		id = request.getParameter("id");
		pwd = request.getParameter("psw").trim();
		String sql = "select * from worker where workerId='"+id+"' and workerPswd='"+pwd+"'";
		sql_data db = new sql_data();
		ResultSet rs = db.executeQuery(sql);
		if(rs==null){
			//重定向到登陆 失败页面
		}else{
			try {
				rs.next();
				String name = rs.getString("workerName");
				//System.out.println(id+name);
				HttpSession session=request.getSession();
				session.setAttribute("identity", "worker");
				session.setAttribute("id", id);
				session.setAttribute("name", name);
				response.sendRedirect("index.jsp");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				// 重定向到失败页面
				System.out.println("登陆出错");
			}
		}
	}

}
