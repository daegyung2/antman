package admin.p_department;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InsertP_departmentBean {
	
	@RequestMapping("/insertP_department.do")
	public String insertP_depart(){
		return "/admin/p_department/insertP_department.jsp";
	}

}
