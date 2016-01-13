package treatmentteam;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.DepartmentDTO;
import admin.bean.P_departmentDTO;

public class TreatmentSideBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;

	@RequestMapping("/treatmentsidebar.do")
	public String list(HttpServletRequest request,P_departmentDTO pdto){

		List tlist = sqlMapClient.queryForList("p_depart.selectdepartlist", pdto);
	
		request.setAttribute("tlist", tlist);
		return "/treatmentteam/treatmentsidebar.jsp";
	}
}
