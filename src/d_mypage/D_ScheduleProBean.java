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
		String ymd = request.getParameter("ymd");

		String hour =(String)dto.getHour();
		String minute =(String)dto.getMinute();
	
		String sdate = ymd+' '+hour+":"+minute;;
		
		
		dto.setSdate(sdate);
		
		int check = (Integer) sqlMapClient.queryForObject("schedule.schedulejungbok",dto);
		System.out.println(check);
		if(check ==1){
			String jungbok = "중복된 날짜입니다.";
			request.setAttribute("joungbok", jungbok);
			return "/scheduleform.do";
		}else if(check == 0){
		
		
		sqlMapClient.insert("schedule.scheduleinsert", dto);
		}
		return "/scheduleform.do";
	}
}


