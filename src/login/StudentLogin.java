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
 * Servlet implementation class StudentLogin
 */
@WebServlet("/StudentLogin")
public class StudentLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
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
				session.setAttribute("identity", "students");
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

}
