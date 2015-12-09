package admin.employee;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InsertEmployeeBean {

	@RequestMapping("/insertEmployee.do")
	public String insertEmployee(){
		return "/admin/employee/insertEmployee.jsp";
	}
}
