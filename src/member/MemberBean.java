package member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import admin.bean.MemberDTO;
import member.*;

@Controller
public class MemberBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/loginForm.do")
	public ModelAndView form(){
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("/member/loginForm.jsp");
				
		return mv;
	}
	@RequestMapping("/loginPro.do")
	public String formPro(MemberDTO dto , HttpSession session){
		int check = (Integer)sqlMapClient.queryForObject("member.userCheck", dto);
		
		System.out.println(check);
		if(check==1){
			session.setAttribute("memId", dto.getId());		
		}
		session.setAttribute("memId", dto.getId());	
		
		return "/member/loginPro.jsp";	
	}
	
	@RequestMapping("/inputForm.do")
	public String inputForm(){
		return "/member/inputForm.jsp";
	}
	
	@RequestMapping("/inputPro.do")
	public String inputpro(MemberDTO dto){
		sqlMapClient.insert("member.insertUser",dto);
		return "/member/inputPro.jsp";
	}
	

	
}


