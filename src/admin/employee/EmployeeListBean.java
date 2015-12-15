package admin.employee;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.EmployeeDTO;

@Controller
public class EmployeeListBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	private List list;

	@RequestMapping("/employeeList.do")
	public String employeeList(EmployeeDTO dto){
		list = sqlMapClient.queryForList("employee.selectList",dto);
		return "/admin/employee/employeeList.jsp";
	}
	
	@ModelAttribute("list")
	public List getList(EmployeeDTO dto){
		return sqlMapClient.queryForList("employee.selectList",dto);
	}
}
