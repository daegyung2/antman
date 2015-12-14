package admin.doctor;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.DepartmentDTO;
import admin.bean.DoctorDTO;

@Controller
public class UpdateDoctorBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	private List list;
	
	@RequestMapping("/updateDoctor.do")
	public String updateDoctor(DoctorDTO dto,DepartmentDTO departDto){
		dto = (DoctorDTO)sqlMapClient.queryForObject("doctor.selectDr", dto);
		list = sqlMapClient.queryForList("depart.selectList",departDto);
		return "/admin/doctor/updateDoctor.jsp";
	}
    
	@ModelAttribute("dto")
	public DoctorDTO getDoctor(DoctorDTO dto){
		
		return (DoctorDTO)sqlMapClient.queryForObject("doctor.selectDr", dto);
	}
	
	@ModelAttribute("list")
	public List getDepartList(DepartmentDTO departDto){
		return sqlMapClient.queryForList("depart.selectList",departDto);
	}
	
}
