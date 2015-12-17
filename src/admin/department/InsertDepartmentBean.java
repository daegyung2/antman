package admin.department;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.P_departmentDTO;

@Controller
public class InsertDepartmentBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	private List p_departlist;
	
   
	@RequestMapping("/insertDepartment.do")
	public String insertDepart(P_departmentDTO dto){
		p_departlist = sqlMapClient.queryForList("p_depart.selectList",dto);
		dto = (P_departmentDTO)sqlMapClient.queryForObject("p_depart.selectPdp",dto);
		return "/admin/department/insertDepartment.jsp";
	}
	
	@ModelAttribute("list")
	public List getP_departList(P_departmentDTO dto){
		return sqlMapClient.queryForList("p_depart.selectList",dto);
	}
    
	@ModelAttribute("p_dto")
	public P_departmentDTO getDto(P_departmentDTO dto){
		return (P_departmentDTO)sqlMapClient.queryForObject("p_depart.selectPdp",dto);
	}
	
}
