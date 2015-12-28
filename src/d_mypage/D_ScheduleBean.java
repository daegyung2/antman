package d_mypage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.ScheduleDTO;

@Controller
public class D_ScheduleBean {

	@Autowired
	private SqlMapClientTemplate sqlMapclient;
	
	@RequestMapping("scheduleform.do")
	public String scheduleform (HttpServletRequest request, ScheduleDTO dto){
		System.out.println(dto.getDrname());
		List list = sqlMapclient.queryForList("schedule.drschedulecheck",dto.getDrname());
		request.setAttribute("list", list);
		return "/d_mypage/d_schedule.jsp";
	}
}
