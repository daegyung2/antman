package admin.doctor;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.DepartmentDTO;

@Controller
public class InsertDoctorBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	private List list;
	 
     @RequestMapping("/insertDoctor.do")
	public String insertPage(DepartmentDTO dto){ //부서 목록 불러와서 참조 
    	 list = sqlMapClient.queryForList("depart.selectList",dto);
		return "/admin/doctor/insertDoctor.jsp";
	}
	
     @ModelAttribute("list")
     public List getList(DepartmentDTO dto){
    	 return sqlMapClient.queryForList("depart.selectList",dto);
     }
	
}
