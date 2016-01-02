package d_mypage;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.ScheduleDTO;

@Controller
public class D_ScheduleProBean {

	
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("schedulepro.do")
	public String scheduleform (HttpServletRequest request, ScheduleDTO dto){
		
		int drid = Integer.parseInt(request.getParameter("drid"));
		String drname = (String)request.getParameter("drname");
		String year =(String)dto.getYear();
		String month =(String)dto.getMonth();
		String day =(String)dto.getDay();
		String hour =(String)dto.getHour();
		String minute =(String)dto.getMinute();
		
		String sdate = year+"-"+month+"-"+day+' '+hour+":"+minute;;

		
		dto.setSdate(sdate);
		
		
		
		
		sqlMapClient.insert("schedule.scheduleinsert", dto);
		
		return "/scheduleform.do";
	}
}


