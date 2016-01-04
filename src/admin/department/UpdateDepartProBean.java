package admin.department;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import admin.bean.DepartmentDTO;

@Controller
public class UpdateDepartProBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;

	@RequestMapping("/updateDepartForm.do")
	public String updateForm(DepartmentDTO dto , HttpServletRequest request){
		System.out.println(dto.getDepart_id());
		dto = (DepartmentDTO) sqlMapClient.queryForObject("depart.selectOne",dto.getDepart_id());
		
		request.setAttribute("dto", dto);
		return "/admin/department/updateDepartment.jsp";
	}
	
	
	
	
	
	@RequestMapping("/updateDepartPro.do")
	public String updatePro(DepartmentDTO dto,HttpServletRequest request){
		sqlMapClient.update("depart.update",dto);
		

		return "departmentList.do";
		
	}


	
}
