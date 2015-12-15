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
	public String insertEmployee(HttpServletRequest request, DepartmentDTO dto,EmployeeDTO emdto){
		list = sqlMapClient.queryForList("depart.selectList",dto);
		for(int i = 1; i > 0; i++){
		Eid = (int) (Math.random()*100000);
		x = (int) sqlMapClient.queryForObject("employee.eidCheck",Eid);
        if(x == 0){
        	emdto.setEid(Eid);
        	i = -1;
        }else{
        	i = 1;
        }
		}
		
		return "/admin/employee/insertEmployee.jsp";
	}
    
    @ModelAttribute("Eid")
    public int getEid(EmployeeDTO emdto){
    	return Eid;
    }
    
    @ModelAttribute("list")
    public List getDepartList(DepartmentDTO dto){
    	return sqlMapClient.queryForList("depart.selectList",dto);
    }
}
