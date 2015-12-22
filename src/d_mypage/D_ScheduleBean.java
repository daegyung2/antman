package d_mypage;

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
		
		return "/d_mypage/d_schedule.jsp";
	}
}
