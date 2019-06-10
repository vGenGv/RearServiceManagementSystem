package student;

import java.io.IOException;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dataBase.sql_data;
/**
 * Servlet implementation class Repair
 */
@WebServlet("/RepairServlet")
public class RepairServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RepairServlet() {
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
		
		//下面三行用来解决中文乱码问题
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		//生成编号与日期
		String RepairID = getNewEquipmentNo();
		String Date = getDate();
		
		//session中获取学生编号
		HttpSession session=request.getSession();
		String StudentId= session.getAttribute("id").toString();
		//从jsp表单中获取
		String Addr = request.getParameter("Addr");
		if(Addr == null){
			Addr=session.getAttribute("addr").toString();
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
	
	
	private String getDate() {
		Date date = new Date();
        String formatDate = String.format("%tF", date);
		return formatDate;
	}

	private String getNewEquipmentNo(){
		//生成13位的维修单编号
        Calendar c = Calendar.getInstance();
        Date date = new Date();
        String year = String.format("R%ty", date);
        int month = c.get(Calendar.MONTH);
        int day = c.get(Calendar.DATE);
        int hour = c.get(Calendar.HOUR_OF_DAY);
        int minute = c.get(Calendar.MINUTE);
        int random=(int)((Math.random()*9+1)*10);
        String newEquipmentNo = String.format(year+"%02d%02d%02d%02d%d", month,day,hour,minute,random);
        return newEquipmentNo;
    }
}
