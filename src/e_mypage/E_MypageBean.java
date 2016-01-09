package e_mypage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import admin.bean.ScheduleDTO;

@Controller
public class E_MypageBean {
	
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/e_mypage.do")
	public String e_mypage(ScheduleDTO dto, HttpServletRequest request, HttpSession session){
		
	    System.out.println(dto.getDrid());
	
	
		List list=sqlMapClient.queryForList("schdule.selectAll", dto.getDrid());
	
		request.setAttribute("list", list);
	
		return "/e_mypage/e_mypage.jsp";
		
	}
	
	@RequestMapping("/e_mypagePraise.do")
	public String e_mypagePraise(){
		
		
		return "/e_mypage/e_mypagePraise.jsp";
	}
	


}