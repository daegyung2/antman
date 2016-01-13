package admin.department;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.DepartmentDTO;
import admin.bean.P_departmentDTO;

@Controller
public class DepartmentContentBean {
    @Autowired
    private SqlMapClientTemplate sqlMapClient;
	
	
	@RequestMapping("/departmentContent.do")
	public String content(@ModelAttribute DepartmentDTO dto,HttpServletRequest request,@ModelAttribute P_departmentDTO pdto){
		sqlMapClient.queryForObject("depart.selectOne",dto.getDepart_id());
		
		
		pdto.setP_depart_id(dto.getP_depart_id());
		pdto = (P_departmentDTO)sqlMapClient.queryForObject("p_depart.selectPdp",pdto);
		return "/admin/department/departmentContent.jsp";
	}
	
	@ModelAttribute("dto")
	public Object returnDTO(DepartmentDTO dto){
		return sqlMapClient.queryForObject("depart.selectOne",dto.getDepart_id());
	}
	
	@ModelAttribute("pdto")
	public P_departmentDTO getPdto(P_departmentDTO pdto){
		return (P_departmentDTO)sqlMapClient.queryForObject("p_depart.selectPdp",pdto);
	}
}
