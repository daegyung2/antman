package admin.department;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.DepartmentDTO;

@Controller
public class UpdateDepartmentBean {
    @Autowired
    private SqlMapClientTemplate sqlMapClient;
  
	
	
	@RequestMapping("/updateDepartment.do")
	public String updateContent(@ModelAttribute DepartmentDTO dto,HttpServletRequest request){
		dto = (DepartmentDTO)sqlMapClient.queryForObject("depart.selectOne", dto.getDepart_id());
		
		request.setAttribute("dto",dto);
		return "/admin/department/updateDepartment.jsp";
	}
	

}
