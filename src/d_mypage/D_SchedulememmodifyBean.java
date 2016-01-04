package d_mypage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import login.bean.LoginDataBean;

@Controller
public class D_SchedulememmodifyBean {
	
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/scheduleinfomodify.do")
	public String modify(LoginDataBean dto){
		
		return "/d_mypage/d_scheduleinfomodify.jsp";
	}
	
	@RequestMapping("/schedulemodifyPro.do")
	public String schedulemodifypro(LoginDataBean dto){
		String id = (String)dto.getId();
		dto.setId(id);
		sqlMapClient.update("member.modifymember", dto);
		
		return "/scheduleinfomodify.do";
	}
	

		
	
}
