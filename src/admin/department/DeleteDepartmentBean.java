package admin.department;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.DepartmentDTO;

@Controller
public class DeleteDepartmentBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/deleteDepart.do")
	public String deleteDepart(DepartmentDTO dto){
		sqlMapClient.delete("depart.delete",dto.getDepart_id());
		return "departmentList.do";
	}
	
	

}
