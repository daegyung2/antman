package p_mypage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.AcademyDTO;
import admin.bean.AppointmentDTO;
import admin.bean.MyQnADTO;
import admin.bean.ScheduleDTO;

@Controller
public class P_MypageBean {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/p_mypage.do")
	public String p_mypage(AppointmentDTO dto, HttpSession session, HttpServletRequest request){
		request.getAttribute("memId");
		dto.setId((String)session.getAttribute("memId"));
		List list=sqlMapClient.queryForList("appointment.selectAll", dto.getId());
	
		request.setAttribute("list", list);
		
		return "/p_mypage/p_mypage.jsp";
		
	}

		@RequestMapping("/deleteappoint.do")
		public String delete(AppointmentDTO dto, ScheduleDTO sdto,HttpServletRequest request){
			System.out.println(dto.getAdate());
			sdto.setSdate(dto.getAdate());
			sdto.setNextsdate(dto.getNextadate());
			sqlMapClient.delete("appointment.deleteappoint",dto);
			sqlMapClient.delete("schedule.dupdateschedule",sdto);
			
			return "/p_mypage.do";
			
		}
	
	
	

	@RequestMapping("/p_myacademy.do")
	public String p_academy(AcademyDTO dto, HttpSession session, HttpServletRequest request){
		
		request.getAttribute("memId");
		dto.setId((String)session.getAttribute("memId"));
		System.out.println(dto.getId());
	      
		List list=sqlMapClient.queryForList("academy.selectacademy", dto.getId());
		
		request.setAttribute("list", list);
		System.out.println(list.size());
		
		return "/p_mypage/p_myacademy.jsp";
	}
	
	
}
