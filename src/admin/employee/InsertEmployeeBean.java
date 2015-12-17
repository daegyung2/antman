package admin.employee;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.DepartmentDTO;
import admin.bean.EmployeeDTO;

@Controller
public class InsertEmployeeBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	private List list;
	private int x;
	private int Eid;
	
	@RequestMapping("/insertEmployee.do")
	public String insertEmployee(HttpServletRequest request, DepartmentDTO dto, EmployeeDTO emdto){
		list = sqlMapClient.queryForList("depart.selectList",dto);
		x = (int) sqlMapClient.queryForObject("employee.count",emdto);
		if(x == 0){
		Eid = 10000;
		emdto.setEid(Eid);
		}else{
	    Eid = (int) sqlMapClient.queryForObject("employee.max",emdto) + 1;
	    emdto.setEid(Eid);
		}
		
		return "/admin/employee/insertEmployee.jsp";
	}
    
    @ModelAttribute("emdto")
    public EmployeeDTO getEid(EmployeeDTO emdto){
    	return emdto;
    }
    
    @ModelAttribute("list")
    public List getDepartList(DepartmentDTO dto){
    	return sqlMapClient.queryForList("depart.selectList",dto);
    }
}
