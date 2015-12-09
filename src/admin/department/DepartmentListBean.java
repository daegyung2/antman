package admin.department;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.DepartmentDTO;

@Controller
public class DepartmentListBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	private List list;

	  @RequestMapping("/departmentList.do")
	 public String departList(DepartmentDTO dto){
		 list = sqlMapClient.queryForList("depart.selectList",dto);
		 return "/admin/department/departmentList.jsp";
	 }
}
