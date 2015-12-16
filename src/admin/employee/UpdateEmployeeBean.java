package admin.employee;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.DepartmentDTO;
import admin.bean.EmployeeDTO;

@Controller
public class UpdateEmployeeBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	private List list;
	
	
	@RequestMapping("/updateEmployee.do")
	public String updateEmployee(EmployeeDTO dto, DepartmentDTO departDTO){
		dto = (EmployeeDTO)sqlMapClient.queryForObject("employee.selectEm",dto);
		list = sqlMapClient.queryForList("depart.selectList",departDTO);
		return "/admin/employee/updateEmployee.jsp";
	}

	@ModelAttribute("dto")
	public EmployeeDTO getEmployee(EmployeeDTO dto){
		return dto = (EmployeeDTO)sqlMapClient.queryForObject("employee.selectEm",dto);
	}
	
	@ModelAttribute("list")
	public List getDepartList(DepartmentDTO departDTO){
		return sqlMapClient.queryForList("depart.selectList",departDTO);
	}
}
