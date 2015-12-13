package admin.department;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.DepartmentDTO;

@Controller
public class DepartmentContentBean {
    @Autowired
    private SqlMapClientTemplate sqlMapClient;
	
	
	@RequestMapping("/departmentContent.do")
	public String content(DepartmentDTO dto,HttpServletRequest request){
		sqlMapClient.queryForObject("depart.selectOne",dto.getDepart_id());
		return "/admin/department/departmentContent.jsp";
	}
	
	@ModelAttribute("dto")
	public Object returnDTO(DepartmentDTO dto){
		return sqlMapClient.queryForObject("depart.selectOne",dto.getDepart_id());
	}
}
