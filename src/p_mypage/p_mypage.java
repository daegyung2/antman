package p_mypage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.AppointmentDTO;
import admin.bean.DoctorDTO;

@Controller
public class p_mypage {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/p_mypage.do")
	public String p_mypage(AppointmentDTO dto, HttpSession session, HttpServletRequest request){
		request.getAttribute("memId");
		dto.setId((String)session.getAttribute("memId"));
		List list=sqlMapClient.queryForList("appointment.selectAll", dto.getId());
		System.out.println(list);
		request.setAttribute("list", list);
		
		return "/p_mypage/p_mypage.jsp";
		
	}
	
	@RequestMapping("/d_answer.do")
	public String d_answer(AppointmentDTO dto,DoctorDTO dtoa, HttpSession session, HttpServletRequest request){
		request.getAttribute("memId");
		
		List list=sqlMapClient.queryForList("appointment.selectAll", dto.getId());
		System.out.println(list);
		request.setAttribute("list", list);
		
		return "/p_mypage/d_answer.jsp";
		
	}
	
}
