package login.bean;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberModifyBean {
	
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/modifyForm.do")
	public String modify(LoginDataBean dto){
		
		return "/member/modifyForm.jsp";
	}
	
	@RequestMapping("/modifyPro.do")
	public String modyfyPro(LoginDataBean dto){
		
		sqlMapClient.update("member.updatemember", dto);
		
		return "/member/modifyPro.jsp";
	}
	
		
	
}
