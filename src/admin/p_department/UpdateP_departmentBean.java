package admin.p_department;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.P_departmentDTO;

@Controller
public class UpdateP_departmentBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/updateP_department.do")
	public String updateP_depart(P_departmentDTO dto){
    dto = (P_departmentDTO)sqlMapClient.queryForObject("p_depart.selectPdp",dto.getP_depart_id());
		return "/admin/p_department/updateP_department.jsp";
	}
    
	@ModelAttribute("dto")
	public P_departmentDTO getP_depart(P_departmentDTO dto){
		return (P_departmentDTO)sqlMapClient.queryForObject("p_depart.selectPdp",dto.getP_depart_id());
	}
}
