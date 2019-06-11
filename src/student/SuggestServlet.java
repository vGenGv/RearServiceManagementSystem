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

import dataBase.sql_data;
import javaBean.SuggestTable;
import javaBean.CreatID;
/**
 * Servlet implementation class SuggestServlet
 */
@WebServlet("/SuggestServlet")
public class SuggestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SuggestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String sql = "select * from Suggest order by SuggestID DESC";
		sql_data db = new sql_data();
		ResultSet rs = db.executeQuery(sql);
		ArrayList<SuggestTable> SuggestTable = new ArrayList<SuggestTable>();
		try {
			while(rs.next()) {
				String SuggestID = rs.getString("SuggestID");
				String StudentID = rs.getString("StudentID");
				String SuggestMan = rs.getString("SuggestMan");
				String SuggestDate = rs.getString("SuggestDate");
				String SuggestInform = rs.getString("SuggestInform");
				SuggestTable tablerow = new SuggestTable(SuggestID,StudentID,SuggestMan,SuggestDate,SuggestInform);
				SuggestTable.add(tablerow);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("SuggestTable", SuggestTable);
		request.getRequestDispatcher("./Suggestion.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Date date = new Date();
        String SuggestDate = String.format("%tF", date);
		String suggestID = CreatID.creatID("S");
		String StudentID = request.getSession().getAttribute("name").toString();
		String name = request.getSession().getAttribute("name").toString();
		String suggestion = request.getParameter("suggestion");
		String isAnonymous = request.getParameter("isAnonymous");
		String sql = "insert into suggest values('"+suggestID+"','"+StudentID+"','"+name+"','"
				+SuggestDate+"','"+suggestion+"','"+isAnonymous+"')";
		sql_data db = new sql_data();
		db.executeInsert(sql);
		doGet(request,response);
	}
}
