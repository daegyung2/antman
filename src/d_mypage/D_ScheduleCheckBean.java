package d_mypage;

import java.util.List;


import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.AppointmentDTO;
import admin.bean.ScheduleDTO;

@Controller
public class D_ScheduleCheckBean {

	@Autowired
	private SqlMapClientTemplate sqlMapclient;
	
	@RequestMapping("schedulecheckform.do")
	public String schedulecheckform (HttpServletRequest request, ScheduleDTO dto){
		
		
		return "/d_mypage/d_schedulecheck.jsp";
	}

	@RequestMapping("schedulecheck.do")
	public String schedulecheck (HttpServletRequest request, ScheduleDTO dto){
		System.out.println(dto.getDrname());
		List list = sqlMapclient.queryForList("schedule.drschedulecheck",dto.getDrname());
		List aplist = sqlMapclient.queryForList("appointment.drappointcheck" , dto.getDrname());
		request.setAttribute("list",list);
		request.setAttribute("aplist",aplist);
		return "/d_mypage/d_schedulecheck.jsp";
	}
	
	@RequestMapping("nextscheduleupdate.do")
	public String nextscheduleupdate (HttpServletRequest request, ScheduleDTO dto ,AppointmentDTO adto){
	adto = (AppointmentDTO)sqlMapclient.queryForObject("apppointment.drappointcheck",adto.getId());
	
	String year = dto.getYear();
	String month = dto.getMonth();
	String day = dto.getDay();
	String hour = dto.getHour();
	String minute = dto.getMinute();
	
	String adate = year+month+day+hour+":"+minute;
	String sdate = year+month+day+hour+":"+minute;
	adto.setAdate(adate);
	dto.setSdate(sdate);
	if(adto.getAdate1() == null){
		sqlMapclient.update("appointment.nextappointupdate1",adto);
	}else if(adto.getAdate1() != null){
		sqlMapclient.update("appointment.nextappointupdate2",adto);
	}else if(adto.getAdate2() != null){
		sqlMapclient.update("appointment.nextappointupdate3",adto);
	}
	
	dto = (ScheduleDTO)sqlMapclient.queryForObject("schedule.drschedulecheck",dto.getDrname());
	
	if(dto.getSdate1() == null){
		sqlMapclient.update("schedule.nextscheduleupdate1",dto);
	}else if(dto.getSdate1() != null){
		sqlMapclient.update("schedule.nextscheduleupdate2",dto);
	}else if(dto.getSdate2() != null){
		sqlMapclient.update("schedule.nextscheduletupdate3",dto);
	}
	
		return "/d_mypage/d_schedulecheck.jsp";
	}
	
}
