package d_mypage;

import java.util.List;


import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
}
