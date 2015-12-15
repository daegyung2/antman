package admin.doctor;

import javax.servlet.http.HttpServletRequest;

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
	public String deleteDoctor(DoctorDTO dto,HttpServletRequest request){
		sqlMapClient.delete("doctor.deleteDr",dto.getDrId());
		return "doctorList.do";
	}
	
	
}
