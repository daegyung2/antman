package e_mypage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.MainBoardDTO;
import admin.bean.ScheduleDTO;
import admin.bean.TreatmentteamDTO;



@Controller
public class E_MypageBean {
	
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/e_mypage.do")
	public String e_mypage(ScheduleDTO dto, HttpServletRequest request, HttpSession session){
		
		 
		return "/e_mypage/e_mypage.jsp";
	
	}

}
