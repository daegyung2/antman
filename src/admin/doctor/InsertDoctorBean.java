package admin.doctor;

import java.io.File;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InsertDoctorBean {
	 
     @RequestMapping("/insertDoctor.do")
	public String insertPage(){
		return "/admin/doctor/insertDoctor.jsp";
	}
	
    
	
}
