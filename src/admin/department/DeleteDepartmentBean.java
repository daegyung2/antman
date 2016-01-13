package admin.department;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.DepartmentDTO;
import admin.bean.DoctorDTO;

@Controller
public class DeleteDepartmentBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/deleteDepart.do")
	public String deleteDepart(DepartmentDTO dto ,DoctorDTO ddto,HttpServletRequest request){
		System.out.println(ddto.getDpname());
		int check = (int) sqlMapClient.queryForObject("doctor.dpdoctorcheck",ddto);
		
		if(check == 1){
			
			request.setAttribute("check", check);
			return "/departmentList.do";
			
		}else if(check == 0 ){

		sqlMapClient.delete("depart.delete",dto.getDepart_id());
		}
		return "/departmentList.do";
		
	}
	
	

}
