package login.bean;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import login.bean.*;

@Controller
public class MemberBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/loginForm.do")
	public ModelAndView form(){
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("/Hospital/login/loginForm.jsp");
				
		return mv;
	}
	@RequestMapping("/loginPro.do")
	public String formPro(LoginDataBean dto , HttpSession session){
		int check = (Integer)sqlMapClient.queryForObject("member.userCheck", dto);
		
		if(check==1){
			session.setAttribute("memId", dto.getId());		
		}else if(check != 1){
			return "/loginForm.do";
		}
		
		return "/Hospital/login/loginPro.jsp";	
	}
	
	@RequestMapping("/logout.do")
	public String logout(LoginDataBean dto, HttpSession session){
		session.setAttribute("memId", null);
		return "/Hospital/login/loginForm.jsp";
	}
	
	@RequestMapping("/inputForm.do")
	public String inputForm(){
		return "/Hospital/login/inputForm.jsp";
	}
	
	@RequestMapping("/inputPro.do")
	public String inputpro(LoginDataBean dto){
		sqlMapClient.insert("member.insertUser",dto);
		return "/Hospital/login/inputPro.jsp";
	}
	
	@RequestMapping("/confirmId.do")
	public String idCheck(HttpServletRequest request, HttpSession session, LoginDataBean dto) {
		dto.setId(request.getParameter("id"));
		String check = (String)sqlMapClient.queryForObject("member.idCheck", dto);
		
		request.setAttribute("check", check);
		
		return "/Hospital/login/confirmId.jsp";
	}
	

	
}


