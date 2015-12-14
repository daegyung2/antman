package admin.doctor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.DoctorDTO;

@Controller
public class DeleteDoctorBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;

	@RequestMapping("/deleteDoctor.do")
	public String deleteDoctor(DoctorDTO dto){
		sqlMapClient.delete("doctor.deleteDr",dto.getDrId());
		return "/admin/doctor/deleteDoctor.jsp";
	}
	
	
}
