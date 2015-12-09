package admin.department;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InsertDepartmentBean {
   
	@RequestMapping("/insertDepartment.do")
	public String insertDepart(){
		return "/admin/department/insertDepartment.jsp";
	}
	
}
