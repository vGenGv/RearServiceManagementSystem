package student;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dataBase.sql_data;
import javaBean.RepairTable;
/**
 * Servlet implementation class RepairHistory
 */
@WebServlet("/HistoryServlet")
public class HistoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HistoryServlet() {
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
		ResultSet rs = queryDB(session);
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
	
	private ResultSet queryDB(HttpSession session) {
		String id = session.getAttribute("id").toString();
		String sql = "select * from repair where StudentID='"+id+"';";
		sql_data db = new sql_data();
		ResultSet rs = db.executeQuery(sql);
		return rs;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
