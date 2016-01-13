package admin.p_department;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.DepartmentDTO;
import admin.bean.P_departmentDTO;

@Controller
public class DeleteP_departmentBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;

	@RequestMapping("/deleteP_department.do")
	public String deleteP_depart(P_departmentDTO dto, DepartmentDTO ddto, HttpServletRequest request){
		
		int check = (int) sqlMapClient.queryForObject("depart.departdeleted",ddto);
		System.out.println(check);
		if(check == 0){
			sqlMapClient.delete("p_depart.delete",dto.getP_depart_id());
			
			return "p_departmentList.do";
			}else if(check > 0){
			
			request.setAttribute("check", check);
			
		}
		return "p_departmentList.do";
	}
		
}
