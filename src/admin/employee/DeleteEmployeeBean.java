package admin.employee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.EmployeeDTO;

@Controller
public class DeleteEmployeeBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	
	@RequestMapping("/deleteEmployee.do")
	public String deleteEmployee(EmployeeDTO dto){
		sqlMapClient.delete("employee.delete",dto.getEid());
		return "employeeList.do";
	}

}
