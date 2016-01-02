package d_mypage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.ScheduleDTO;
import admin.bean.TreatmentteamDTO;
import login.bean.LoginDataBean;
@Controller
public class D_ScheduleDeleteBean {

	
	@Autowired
	private SqlMapClientTemplate sqlMapclient;
	
	
	@RequestMapping("scheduledelete.do")
	public String scheduledelete(ScheduleDTO dto,TreatmentteamDTO tdto, HttpServletRequest request){
			int drid = Integer.parseInt(request.getParameter("drid"));
			dto.setDrid(drid);
		System.out.println(dto.getSid());
		System.out.println(dto.getDrid());
			
		 sqlMapclient.delete("schedule.scheduledelete",dto.getSid());
	
			List list = sqlMapclient.queryForList("schedule.drschedulecheck",dto.getDrid());
			
			tdto = (TreatmentteamDTO) sqlMapclient.queryForObject("treatment.doctorprofile",tdto.getDrid());
			
			request.setAttribute("tdto", tdto);
			request.setAttribute("list", list);
		return "/d_mypage/d_schedule.jsp";
	}
}


