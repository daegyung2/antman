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
	private int see;
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
		else if (adto.getAdate() == null && adto.getName() ==null){
			aplist = sqlMapclient.queryForList("appointment.drappointidcheck" , adto);
			view = yes;
		
		}else if(adto.getAdate() == null && adto.getId() ==null)
		{
			aplist = sqlMapclient.queryForList("appointment.drappointnamecheck" , adto);
			view = yes;
		
		} 
		System.out.println(aplist.size());

		if (shit != null && adto.getAdate() == null && adto.getName() == null && adto.getId() == null){
		
		aplist = sqlMapclient.queryForList("appointment.drtodayappointcheck" , adto);
		}else{}
		
		List slist = sqlMapclient.queryForList("appointment.drsnameidcheck",adto);
		
		
		request.setAttribute("aplist", aplist);	
		request.setAttribute("slist", slist);
		request.setAttribute("list",list);
		request.setAttribute("aplist",aplist);
		request.setAttribute("view", view);
		return "/d_mypage/d_schedulecheck.jsp";
	}
	
	@RequestMapping("nextscheduleupdate.do")
	public String nextscheduleupdate (HttpServletRequest request, LoginDataBean ldto ,ScheduleDTO dto ,AppointmentDTO adto){
		
		int drid = Integer.parseInt(request.getParameter("drid"));
		System.out.println(adto.getAdate());
		System.out.println(adto.getId());
		dto.setDrid(drid);
		String nextdate = request.getParameter("nextdate");
		String ymds = dto.getYmds();
		String hour = dto.getHour();
		String minute = dto.getMinute();
		String adate = ymds+" "+hour+":"+minute;
		String sdate = ymds+" "+hour+":"+minute;
		adto.setAdate(adate);
		dto.setSdate(sdate);

	adto.setNextadate(nextdate);
	dto.setNextsdate(nextdate);

	
	int dcheck = (Integer) sqlMapclient.queryForObject("appointment.appointjungbok",adto);//의사의 스케쥴시간과 환자 스케쥴시간이 중복되는지 검사한다.
	int scheck = (Integer) sqlMapclient.queryForObject("schedule.schedulejungbok",dto);
	
	if(dcheck == 1){
		see = 1;	
		List slist = sqlMapclient.queryForList("appointment.drsnameidcheck",dto.getDrid());
		request.setAttribute("slist", slist);
		request.setAttribute("see", see);
		return "/d_mypage/d_schedulecheck.jsp";
	}else if(scheck == 1){
	see = 2;
	List slist = sqlMapclient.queryForList("appointment.drsnameidcheck",dto.getDrid());
	request.setAttribute("slist", slist);
	request.setAttribute("see", see);
	return "/d_mypage/d_schedulecheck.jsp";
	}else if(dcheck == 0 && scheck == 0){
		sqlMapclient.insert("appointment.nextappointupdate1",adto);
		sqlMapclient.insert("schedule.nextscheduleinsert",dto);
	}else{}
	
	


	
	List slist = sqlMapclient.queryForList("appointment.drsnameidcheck",dto.getDrid());
	request.setAttribute("slist", slist);
		return "/d_mypage/d_schedulecheck.jsp";
	}
	
	@RequestMapping("/symptomupdate.do")
	public String syptomupdate (HttpServletRequest request, LoginDataBean ldto ,ScheduleDTO dto ,AppointmentDTO adto){
		
	
		System.out.println(dto.getDrid()+1);/*
		System.out.println(drid);
		System.out.println(drname);*/
		
	sqlMapclient.update("appointment.symptomupdate",adto);
	adto = (AppointmentDTO) sqlMapclient.queryForObject("appointment.symptomselect",adto);
/*	sqlMapclient.insert("schedule.syptomupdate",dto);*/
	List slist = sqlMapclient.queryForList("appointment.drsnameidcheck",dto.getDrid());
	System.out.println(slist.size());
	request.setAttribute("adto",adto);
request.setAttribute("slist", slist);
		return "/d_mypage/d_schedulecheck.jsp";
	}
	
	
		@RequestMapping("/sscheduledelete.do")
		public String delete(AppointmentDTO dto, ScheduleDTO sdto,HttpServletRequest request){
			System.out.println(sdto.getId());
			
			sdto.setNextsdate(sdto.getNextadate());
			
			sdto.setSdate(dto.getAdate());
			sqlMapclient.delete("schedule.dupdateschedule",sdto);
			sqlMapclient.delete("appointment.deleteappoint",dto);
			
			return "/schedulecheck.do";
			
		}
}
