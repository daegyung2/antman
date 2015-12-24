package member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import admin.bean.MemberDTO;
import member.*;

@Controller
public class MemberBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	private int Eid;
	private String dreg_num;
	private int check;
	
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
	public String inputpro(@ModelAttribute MemberDTO dto, HttpServletRequest request){
		request.setAttribute("dreg_num",dto.getDreg_num());
		request.setAttribute("Eid", dto.getEid());
		if(dreg_num != null){
		  check = (int) sqlMapClient.queryForObject("doctor.checkDreg",dreg_num);
		  if(check != 0){
			  sqlMapClient.insert("member.insertUser",dto);
		  }else{
			  return "inputForm.do";
		  }
		}else if(Eid != 0){
			check = (int) sqlMapClient.queryForObject("Employee.checkEid",Eid);
			  if(check != 0){
				  sqlMapClient.insert("member.insertUser",dto);
			  }else{
				  return "inputForm.do";
			  }
		}else{
			sqlMapClient.insert("member.insertUser",dto);
		}
		
		return "/member/inputPro.jsp";
	}
	

	
}


