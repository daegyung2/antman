package admin.employee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.EmployeeDTO;

@Controller
public class InsertEmployeeProBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
  
	@RequestMapping("/insertEmployeePro.do")
	public String insertEmployee(EmployeeDTO dto){
		sqlMapClient.insert("employee.insertEm", dto);
		
		return "/admin/employee/insertEmployeePro.jsp";
	}
}
