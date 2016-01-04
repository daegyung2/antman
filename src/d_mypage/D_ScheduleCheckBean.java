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
	List aplist = null;
	private String view = null;
	private String no;
	private String yes;
	@RequestMapping("schedulecheckform.do")
	public String schedulecheckform (HttpServletRequest request, ScheduleDTO dto, AppointmentDTO adto){
		int drid = Integer.parseInt(request.getParameter("drid"));
		adto.setDrid(drid);

		return "/d_mypage/d_schedulecheck.jsp";
	}

	@RequestMapping("schedulecheck.do")
	public String schedulecheck (HttpServletRequest request, ScheduleDTO dto, AppointmentDTO adto){
		int drid = Integer.parseInt(request.getParameter("drid"));
		dto.setDrid(drid);
		String shit = request.getParameter("drname");
		String ymd = request.getParameter("ymd");
		adto.setAdate(ymd);
		System.out.println(shit);
		System.out.println(adto.getAdate());
		System.out.println(adto.getName());
		List list = sqlMapclient.queryForList("schedule.drschedulecheck",dto);
		
		
		if (adto.getAdate() != null){
			aplist = sqlMapclient.queryForList("appointment.drappointcheck" , adto);
			view = yes;
		}
		else if (adto.getAdate() == null){
			aplist = sqlMapclient.queryForList("appointment.drappointnamecheck" , adto);
			view = yes;
		
		}else{}
		System.out.println(aplist.size());

		if (shit != null && adto.getAdate() == null && adto.getName() == null){
		
		aplist = sqlMapclient.queryForList("appointment.drtodayappointcheck" , adto);
		}else{}
		List slist = sqlMapclient.queryForList("schedule.drsnameidcheck",dto);
		
		
		request.setAttribute("aplist", aplist);	
		request.setAttribute("slist", slist);
		request.setAttribute("list",list);
		request.setAttribute("aplist",aplist);
		request.setAttribute("view", view);
		return "/d_mypage/d_schedulecheck.jsp";
	}
	
	@RequestMapping("nextscheduleupdate.do")
	public String nextscheduleupdate (HttpServletRequest request, LoginDataBean ldto ,ScheduleDTO dto ,AppointmentDTO adto){
	/*String obdrid =(String)request.getParameter("drid");*/
String nextdate = request.getParameter("nextdate");
int drid = Integer.parseInt(request.getParameter("drid"));
	
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
