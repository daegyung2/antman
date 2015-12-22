package appointment;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.AppointmentDTO;
import admin.bean.TreatmentteamDTO;


@Controller
public class AppointmentDetailSearch {
	
	@Autowired
	
	private SqlMapClientTemplate sqlMapClient;
	private String no;
	
	@RequestMapping("/appointmentdetailsearch.do")
	public String detailreservationsearch(HttpServletRequest request,AppointmentDTO dto,TreatmentteamDTO tmdto){
		String drname = tmdto.getDrname();
		String dpname = tmdto.getDpname();
		String jumin1 = dto.getJumin1();
		String jumin2 = dto.getJumin2();
		String name = dto.getName();
		String adate = (String)dto.getAdate();
		int drid = dto.getDrid();		
		List tmslist = sqlMapClient.queryForList("treatment.searchtreatmentteam", tmdto.getDpname());
		TreatmentteamDTO tmsdto = (TreatmentteamDTO)sqlMapClient.queryForObject("treatment.searchname", tmdto.getDpname());
		System.out.println(drid);
		System.out.println(dto.getAdate());
		 
		if(tmslist.size() == 0){
			 dpname = no;
		}
		List adlist = sqlMapClient.queryForList("schedule.scheduleselect", dto.getDrid());
		 
		 
		 request.setAttribute("dpname",dpname);
		 request.setAttribute("drname",drname);
		 request.setAttribute("jumin1",jumin1);
		 request.setAttribute("jumin2",jumin2);
		 request.setAttribute("adate",adate);
		 request.setAttribute("name",name);
		 request.setAttribute("tmsdto", tmsdto);
		 request.setAttribute("tmslist", tmslist);
		 request.setAttribute("adlist", adlist);
		 request.setAttribute("drid",drid);
	
		 return "/appointmentdetail.do";
	}
	
}
