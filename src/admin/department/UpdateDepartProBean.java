package admin.department;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.DepartmentDTO;

@Controller
public class UpdateDepartProBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;

	
	@RequestMapping("/updateDepartPro.do")
	public String updatePro(@ModelAttribute DepartmentDTO dto,HttpServletRequest request){

		sqlMapClient.update("depart.update",dto);
		return "departmentList.do";
	}
	

	
}
