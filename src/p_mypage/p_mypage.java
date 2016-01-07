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
	public String d_answer(MyQnADTO dto, HttpServletRequest request){
		
		int drid = Integer.parseInt(request.getParameter("drid"));
		dto.setDrid(drid);
		System.out.println(drid);
		List list=sqlMapClient.queryForList("MyQnA.selectDr", dto.getDrid());
		System.out.println(list.size());
		request.setAttribute("list", list);
		
		return "/d_mypage/d_answer.jsp";
		
	}
	@RequestMapping("/MyQnA_Answer.do")
	public String MyQnA_Answer(HttpServletRequest request, MyQnADTO dto){
		
		return "/p_mypage/MyQnA_Answer.jsp";
	}
	
	@RequestMapping("/MyQnA_AnswerPro.do")
	public String MyQnA_AnswerPro(HttpServletRequest request, MyQnADTO dto){
		
		System.out.println(dto.getDrid());
		sqlMapClient.update("MyQnA.updateAnswer", dto);
		return "/p_mypage/MyQnA_AnswerPro.jsp";
	}
	
	
}
