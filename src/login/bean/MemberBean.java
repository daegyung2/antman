package login.bean;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import admin.bean.AppointmentDTO;

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
		public String formPro(HttpServletRequest request,LoginDataBean dto , HttpSession session ){
			int check = (Integer)sqlMapClient.queryForObject("member.userCheck", dto);
			
			if(check==1){
				session.setAttribute("memId", dto.getId());
				dto = (LoginDataBean)sqlMapClient.queryForObject("member.userdata",dto.getId());
				session.setAttribute("memname", dto.getName());
				session.setAttribute("memage", dto.getAge());
				session.setAttribute("memgender", dto.getGender());
				session.setAttribute("memphone", dto.getPhone());
				session.setAttribute("meme_mail", dto.getE_mail());
				session.setAttribute("memeid", dto.getEid());
				session.setAttribute("memdrid", dto.getDrId());
				session.setAttribute("memauth", dto.getAuth());
				
			}else if(check != 1){
				return "/loginForm.do";
			}
			
			List alist = sqlMapClient.queryForList("appointment.selectAll",dto.getId());
			
			request.setAttribute("alist", alist);
			return "/main.do";	
		}	
		
		@RequestMapping("/logout.do")
		public String logout(LoginDataBean dto, HttpSession session){
			session.setAttribute("memId", null);
			return "/main.do";
		}
		
		@RequestMapping("/inputForm.do")
		public String inputForm(){
			return "/member/inputFormB.jsp";
		}
		
		@RequestMapping("/inputPro.do")
		public String inputPro(LoginDataBean dto, HttpServletRequest request){
		
			int check = (int)sqlMapClient.queryForObject("member.idpwCheck", dto);
			if(check==1){
				return "/inputPro2.do";
			}else if(check !=1){
				
				if(dto.getEid()!=null){
					sqlMapClient.insert("member.insertUserEid", dto);
					sqlMapClient.update("member.updateEid", dto);
				}else if(dto.getDrId()!=null){
					sqlMapClient.insert("member.insertUserDR", dto);
					sqlMapClient.update("member.updateDrId", dto);
					
				}else if(dto.getEid()==null && dto.getDrId()==null){
					sqlMapClient.insert("member.insertUser",dto);
					sqlMapClient.update("member.updateP", dto);
				}
			
			}
				
			return "/member/inputPro.jsp";
		}
		
		@RequestMapping("/confirmId.do")
		public String idCheck(HttpServletRequest request, HttpSession session, LoginDataBean dto) {
			dto.setId(request.getParameter("id"));
			int check = (int)sqlMapClient.queryForObject("member.idCheck", dto);
			
			request.setAttribute("check", check);
			
			return "/member/confirmId.jsp";
		}
		
		
		
		
}
