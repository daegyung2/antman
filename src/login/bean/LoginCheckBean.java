package login.bean;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.DoctorDTO;
import admin.bean.EmployeeDTO;


@Controller
public class LoginCheckBean {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;

	
	@RequestMapping("/loginCheck.do")
	public String LoginCheck(){
		return "/member/loginCheck.jsp";
	}
	
	@RequestMapping("/E_CheckForm.do")
	public String ECheck(){
		
		return "/member/E_CheckForm.jsp";
	}
	
	@RequestMapping("E_CheckFormPro.do")
	public String ECheckPro(HttpServletRequest request, EmployeeDTO dto ){
		
		int check = (int)sqlMapClient.queryForObject("employee.EidCheck", dto);
		System.out.println(check);
		
		if(check == 1){
			request.setAttribute("Eid", dto.getEid());
			return "/member/inputForm.jsp"; //����� 1�̸� DB�� ����� �ִٴ� ���̹Ƿ� inputForm���� �Ѿ����
		}else if(check != 1){ //����� 1�� �ƴϸ� DB�� ����� ���ٴ� ���̹Ƿ� inputForm���� �Ѿ�� ��..
			
			return "/member/E_CheckPro.jsp";
		}
		
		return "/member/E_CheckForm.jsp";
	}
	
	@RequestMapping("/D_CheckForm.do")
	public String DCheck(){
		return "/member/D_CheckForm.jsp";
	}
	
	@RequestMapping("/D_CheckPro.do")
	public String DCheckPro(DoctorDTO dto, HttpServletRequest request){
		
		int check = (int)sqlMapClient.queryForObject("doctor.drIdCheck", dto);
		System.out.println(check);
		
		if(check == 1){
			request.setAttribute("DrId", dto.getDrId());
			return "/member/inputForm.jsp"; //����� 1�̸� DB�� ����� �ִٴ� ���̹Ƿ� inputForm���� �Ѿ����
		}else if(check != 1){ //����� 1�� �ƴϸ� DB�� ����� ���ٴ� ���̹Ƿ� inputForm���� �Ѿ�� ��..
			
			return "/member/D_CheckPro.jsp";
		}
		return "/member/D_CheckForm.jsp";
	}
}

