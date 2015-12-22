package d_mypage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.ScheduleDTO;

public class D_ScheduleCheckBean {

	@Autowired
	private SqlMapClientTemplate sqlMapclient;
	
	@RequestMapping("schedulecheck.do")
	public String scheduleform (HttpServletRequest request, ScheduleDTO dto){
		
		List list = sqlMapclient.queryForList("schedule.schedulecheck",dto);
		return "/d_mypage/d_schedulecheck.jsp";
	}
}
