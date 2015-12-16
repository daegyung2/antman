package admin.p_department;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.P_departmentDTO;

@Controller
public class InsertP_departmentProBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;

	@RequestMapping("/insertP_departPro.do")
	public String insertP_departPro(P_departmentDTO dto){
		sqlMapClient.insert("p_depart.insertPdp",dto);
		return "p_departmentList.do";
	}
}
