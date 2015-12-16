package admin.p_department;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.P_departmentDTO;

@Controller
public class UpdateP_departmentProBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/updateP_departPro.do")
	public String updatePro(P_departmentDTO dto){
		sqlMapClient.update("p_depart.update",dto);
		return "p_departmentList.do";
	}

}
