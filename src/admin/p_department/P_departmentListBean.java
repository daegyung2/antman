package admin.p_department;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.P_departmentDTO;

@Controller
public class P_departmentListBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	private List list;
	
	@RequestMapping("p_departmentList.do")
	public String p_departList(P_departmentDTO dto){
		list = sqlMapClient.queryForList("p_depart.selectList",dto);
		return "/admin/p_department/p_departmentList.jsp";
	}
	
	@ModelAttribute("list")
    public List getList(P_departmentDTO dto){
		return sqlMapClient.queryForList("p_depart.selectList",dto);
	}
}
