package admin.doctor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InsertDoctorProBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	 @RequestMapping("insertDoctorPro.do")
     public String insertDoctor(DoctorDTO dto){
    	 sqlMapClient.insert("doctor.insertDr", dto);
    	 return "/admin/doctor/insertDoctorPro.jsp";
     }
}
