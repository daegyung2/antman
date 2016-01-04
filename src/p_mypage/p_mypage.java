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
import admin.bean.MyQnADTO;

@Controller
public class p_mypage {

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
	
	@RequestMapping("/d_answer.do")
	public String d_answer(AppointmentDTO dto, HttpServletRequest request){
		
	
		List list=sqlMapClient.queryForList("MyQnA.selectDr", dto);
		
		request.setAttribute("list", list);
		
		return "/p_mypage/d_answer.jsp";
		
	}
	@RequestMapping("/MyQnA_Answer.do")
	public String MyQnA_Answer(HttpServletRequest request, MyQnADTO dto){
		
		sqlMapClient.update("MyQnA.updateAnswer", dto);
		return "/p_mypage/MyQnA_AnswerPro.jsp";
	}
	
}
