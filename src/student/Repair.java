package student;

import java.io.IOException;
import java.util.Calendar;

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
@WebServlet("/Repair")
public class Repair extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Repair() {
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
//		session.setAttribute("test", "change session success");
//		request.setAttribute(arg0, arg1);
		//生成编号与日期
		String RepairID = getNewEquipmentNo("DCLA");
		String Date = getDate();
		//session中获取学生编号
		HttpSession session=request.getSession();
		String StudentId= session.getAttribute("id").toString();
		//从jsp表单中获取
		String Addr = request.getParameter("addr");
		String StudentPhone = request.getParameter("DeclraPhone");
		String Type = request.getParameter("Type");
		String BADInformation = request.getParameter("BADInformation");
		
		String sql = "insert into Repair "
				+ "(RepairID,StudentId,StudentPhone,RepairDate,Addr,Type,BADInformation,ProcessInform) values"
				+ "('"+RepairID+"','"+StudentId+"','"+StudentPhone+"','"+Date+"','"+Addr+"','"+Type+"','"+BADInformation+"','审核中')";
		sql_data db = new sql_data();
		db.executeInsert(sql);
		//应该弹出成功提示框
		response.sendRedirect("./TestStudent.jsp");
	}
	
	
	private String getDate() {
		Calendar c = Calendar.getInstance();
		int y = c.get(Calendar.YEAR);
        int m = c.get(Calendar.MONTH);
        int d = c.get(Calendar.DATE);
		String date = y+"-"+m+"-"+d;
		return date;
	}

	public  String getNewEquipmentNo(String equipmentType){
        Calendar c = Calendar.getInstance();
        int year = c.get(Calendar.YEAR);
        int month = c.get(Calendar.MONTH);
        int date = c.get(Calendar.DATE);
        int hour = c.get(Calendar.HOUR_OF_DAY);
        int minute = c.get(Calendar.MINUTE);
        int second = c.get(Calendar.SECOND);
        String newEquipmentNo = "0001";
      /*    int newEquipment = (int)((Math.random()*9+1)*1000);
            newEquipmentNo = String.format(equipmentType + "%04d", newEquipment);*/
        int newEquipment=year+month+date+hour+minute+second+(int)((Math.random()*9+1)*100);
        newEquipmentNo = String.format(equipmentType + "%04d", newEquipment);
        return newEquipmentNo;
    }
}
