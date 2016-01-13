package appointment;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.AppointmentDTO;
import admin.bean.DepartmentDTO;

import admin.bean.TreatmentteamDTO;

@Controller
public class AppointmentDetailBean {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	private String no;
	
	
	@RequestMapping("/appointmentdetail.do")
	public String detailreservation(HttpServletRequest request,AppointmentDTO dto,DepartmentDTO dpdto,TreatmentteamDTO tmdto){
		String jumin1 =(String)dto.getJumin1();
		String jumin2 =(String)dto.getJumin2();
		String name =(String)dto.getName();
		String id =(String)dto.getId();
		System.out.println(name);
		  
		List list = sqlMapClient.queryForList("treatment.selecttreatment1", dpdto);
		List lista = sqlMapClient.queryForList("treatment.selecttreatment2", dpdto);
		List listb = sqlMapClient.queryForList("treatment.selecttreatment3", dpdto);
		List listc = sqlMapClient.queryForList("treatment.selecttreatment4", dpdto);
		
		
		request.setAttribute("list",list);
		request.setAttribute("lista",lista);
		request.setAttribute("listb",listb);
		request.setAttribute("listc",listc);
		request.setAttribute("jumin1",jumin1);
		request.setAttribute("jumin2",jumin2);
		request.setAttribute("name",name);
		request.setAttribute("id",id );
		
		
		
		return "/appointment/detail/appointmentdetail.jsp";
	}
	

	@RequestMapping("/appointdoctorprofile.do")
	public String doctorprofile (HttpServletRequest request , TreatmentteamDTO dpfdto){
		System.out.println(dpfdto.getDrid());
		dpfdto =(TreatmentteamDTO)sqlMapClient.queryForObject("treatment.doctorprofile",dpfdto.getDrid());
		
		request.setAttribute("dpfdto",dpfdto);
		
	return "appointment/detail/appointdoctorprofile.jsp";
	}
	
	
}
	
	

