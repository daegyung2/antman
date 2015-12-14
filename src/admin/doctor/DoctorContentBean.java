package admin.doctor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.DoctorDTO;

@Controller
public class DoctorContentBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	

	@RequestMapping("/doctorContent.do")
	public String doctorContent(DoctorDTO dto){
		dto = (DoctorDTO)sqlMapClient.queryForObject("doctor.selectDr",dto);		
		return "/admin/doctor/doctorContent.jsp";
	}
	
	@ModelAttribute("dto")
	public DoctorDTO getDto(DoctorDTO dto){
		return (DoctorDTO)sqlMapClient.queryForObject("doctor.selectDr",dto);	
	}
	
	
}
