package javaBean;

import java.util.Calendar;
import java.util.Date;

public class CreatID {
	/**
	 * 生成13位的编号head(1位)+yy+MM+dd+hh+mm+ss+随机数(2位)
	 * 如R19021012300566
	 * @param head
	 * 		维修单编号使用R、留言编号使用S、投诉表编号使用C
	 */
	public static String creatID(String head) {
		Calendar c = Calendar.getInstance();
        Date date = new Date();
        String year = String.format(head + "%ty", date);
        int month = c.get(Calendar.MONTH);
        int day = c.get(Calendar.DATE);
        int hour = c.get(Calendar.HOUR_OF_DAY);
        int minute = c.get(Calendar.MINUTE);
        int random=(int)((Math.random()*9+1)*10);
        String id = String.format(year+"%02d%02d%02d%02d%d", month,day,hour,minute,random);
        return id;
	}
}
