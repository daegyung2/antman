package admin.department;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.DepartmentDTO;

@Controller
public class InsertDepartmentProBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	
    @RequestMapping("/insertDepartPro.do")
	public String insertPro(DepartmentDTO dto){
    	sqlMapClient.insert("depart.insert", dto);
    	return "departmentList.do";
    	
    }
	
}
