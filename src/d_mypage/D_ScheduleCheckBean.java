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
	
	@RequestMapping("schedulecheck.do")
	public String schedulecheck (HttpServletRequest request, ScheduleDTO dto){
		
		List list = sqlMapclient.queryForList("schedule.schedulecheck",dto.getDrname());
		request.setAttribute("list",list);
		return "/d_mypage/d_schedulecheck.jsp";
	}
}
