	package treatmentteam;

	import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.orm.ibatis.SqlMapClientTemplate;
	import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.TreatmentteamDTO;
	
	@Controller
public class TreatmentDoctorProfileBean {
	
		@Autowired
		private SqlMapClientTemplate sqlMapClient;
		
		@RequestMapping("doctorprofile.do")
		public String doctorprofile (HttpServletRequest request , TreatmentteamDTO dto){
			
			sqlMapClient.queryForObject("treatment.doctorprofile",dto);
			
			
			
		return "treatmentteam/doctorprofile.jsp";
		}
		
		
	}


