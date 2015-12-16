package appointment;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.AppointmentDTO;
import treatmentteamVO.SearchTreatmentTeamVO;

@Controller
public class AppointmentDetailSearch {
	
	@Autowired
	
	private SqlMapClientTemplate sqlMapClient;
	private String no;
	
	@RequestMapping("/appointmentdetailsearch.do")
	public String detailreservationsearch(HttpServletRequest request,AppointmentDTO dto,SearchTreatmentTeamVO tmdto){
		String drname = (String)tmdto.getDrname();
		String dpname = (String)tmdto.getDpname();
		String jumin1 =(String)dto.getJumin1();
		String jumin2 =(String)dto.getJumin2();
		String name =(String)dto.getName();
		
		 List tmslist = sqlMapClient.queryForList("treatment.searchtreatmentteam", tmdto.getDpname());
		  SearchTreatmentTeamVO tmsdto = (SearchTreatmentTeamVO)sqlMapClient.queryForObject("treatment.searchname", tmdto.getDpname());
		  System.out.println(tmslist.size());
		 
		 if(tmslist.size() == 0){
			 dpname = no;
		 }
		 
		 request.setAttribute("dpname",dpname);
		 request.setAttribute("drname",drname);
		 request.setAttribute("jumin1",jumin1);
		 request.setAttribute("jumin2",jumin2);
		 request.setAttribute("name",name);
		 request.setAttribute("tmsdto", tmsdto);
		 request.setAttribute("tmslist", tmslist);
	return "/appointmentdetail.do";
	}
	
}
