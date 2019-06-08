package student;

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
/**
 * Servlet implementation class RepairHistory
 */
@WebServlet(
		name = "RepairHistory",
		urlPatterns= {"/RepairHistory","/servlet/RepairHistory"})
public class RepairHistory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RepairHistory() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session=request.getSession();
		String id = session.getAttribute("id").toString();
		String sql = "select RepairID,RepairDate,ProcessInform from repair where StudentID='"+id+"';";
		sql_data db = new sql_data();
		ResultSet rs = db.executeQuery(sql);
		ArrayList<String> RepairID = new ArrayList<String>();
		ArrayList<String> RepairDate = new ArrayList<String>();
		ArrayList<String> ProcessInform = new ArrayList<String>();
		try {
			while(rs.next()) {
				System.out.println(rs.getString("RepairID"));
				RepairID.add(rs.getString("RepairID"));
				RepairDate.add(rs.getString("RepairDate"));
				ProcessInform.add(rs.getString("ProcessInform"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("RepairID", RepairID);
		request.setAttribute("RepairDate", RepairDate);
		request.setAttribute("ProcessInform", ProcessInform);
		request.getRequestDispatcher("./TestHistory.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
