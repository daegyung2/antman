package admin.employee;

import java.util.List;

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
	public String insertPro(EmployeeDTO dto){
		sqlMapClient.insert("employee.insertEm",dto);
		return "employeeList.do";
	}
    
}
