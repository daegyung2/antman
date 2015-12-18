package admin.department;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.DepartmentDTO;
import admin.bean.P_departmentDTO;

@Controller
public class UpdateDepartmentBean {
    @Autowired
    private SqlMapClientTemplate sqlMapClient;
    private List list;
  
	
	
	@RequestMapping("/updateDepartment.do")
	public String updateContent(@ModelAttribute DepartmentDTO dto,HttpServletRequest request, P_departmentDTO p_dto){
		dto = (DepartmentDTO)sqlMapClient.queryForObject("depart.selectOne", dto.getDepart_id());
		p_dto.setP_depart_id(dto.getP_depart_id());
		p_dto = (P_departmentDTO)sqlMapClient.queryForObject("p_depart.selectPdp",p_dto);
		list = sqlMapClient.queryForList("p_depart.selectList",p_dto);
		return "/admin/department/updateDepartment.jsp";
	}
	
	@ModelAttribute("list")
	public List getList(P_departmentDTO p_dto){
		return sqlMapClient.queryForList("p_depart.selectList",p_dto);
	}
    
	@ModelAttribute("pdto")
	public P_departmentDTO getPdto(P_departmentDTO p_dto){
		return (P_departmentDTO)sqlMapClient.queryForObject("p_depart.selectPdp",p_dto);
	}
	
	@ModelAttribute("dto")
	public DepartmentDTO getDto(DepartmentDTO dto){
		return (DepartmentDTO)sqlMapClient.queryForObject("depart.selectOne", dto.getDepart_id());
	}
}
