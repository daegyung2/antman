package d_mypage;

import java.util.List;


import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.AppointmentDTO;
import admin.bean.ScheduleDTO;
import login.bean.LoginDataBean;

@Controller
public class D_ScheduleCheckBean {

	@Autowired
	private SqlMapClientTemplate sqlMapclient;
	
	@RequestMapping("schedulecheckform.do")
	public String schedulecheckform (HttpServletRequest request, ScheduleDTO dto){
		
		
		return "/d_mypage/d_schedulecheck.jsp";
	}

	@RequestMapping("schedulecheck.do")
	public String schedulecheck (HttpServletRequest request, ScheduleDTO dto, AppointmentDTO adto){
		int drid = Integer.parseInt(request.getParameter("drid"));
		dto.setDrid(drid);
		System.out.println(dto.getDrid());
		List list = sqlMapclient.queryForList("schedule.drschedulecheck",dto.getDrid());
		List aplist = sqlMapclient.queryForList("appointment.drappointcheck" , adto.getDrid());
		request.setAttribute("list",list);
		request.setAttribute("aplist",aplist);
		return "/d_mypage/d_schedulecheck.jsp";
	}
	
	@RequestMapping("nextscheduleupdate.do")
	public String nextscheduleupdate (HttpServletRequest request, LoginDataBean ldto ,ScheduleDTO dto ,AppointmentDTO adto){
	/*String obdrid =(String)request.getParameter("drid");*/
String nextdate = request.getParameter("nextdate");
int drid = Integer.parseInt(request.getParameter("drid"));
	System.out.println(drid+1);
	System.out.println(dto.getDrid());
	System.out.println(adto.getDrid());
/*	dto.setDrid(drid);
	adto.setDrid(drid);*/
	
/*	adto.setNextadate(nextdate);
	dto.setNextsdate(nextdate);
	
	String year = dto.getYear();
	String month = dto.getMonth();
	String day = dto.getDay();
	String hour = dto.getHour();
	String minute = dto.getMinute();
	
	String adate = year+"-"+month+"-"+day+" "+hour+":"+minute;
	String sdate = year+"-"+month+"-"+day+" "+hour+":"+minute;
	adto.setAdate(adate);
	dto.setSdate(sdate);*/
	
/*	sqlMapclient.insert("appointment.nextappointupdate1",adto);
	System.out.println(dto.getId());
	System.out.println(dto.getName());
	sqlMapclient.insert("schedule.nextscheduleinsert",dto);*/

	


		return "/d_mypage/d_schedulecheck.jsp";
	}
	
}
