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
		
		sqlMapClient.update("member.modifymember", dto);
		
		return "/member/modifyPro.jsp";
	}
	//직원마이페이지 회원정보수정
	@RequestMapping("/e_modifyForm.do")
	public String e_modifyForm(){
		return "/e_mypage/e_modifyForm.jsp";
	}
	
	@RequestMapping("/e_modifyPro.do")
	public String e_modyfyPro(LoginDataBean dto){
		
		sqlMapClient.update("member.modifymember", dto);
		
		return "/e_mypage/e_modifyPro.jsp";
	}
	

	
		
	
}
