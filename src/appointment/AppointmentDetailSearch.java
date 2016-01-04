package appointment;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.AppointmentDTO;
import admin.bean.ScheduleDTO;
import admin.bean.TreatmentteamDTO;


@Controller
public class AppointmentDetailSearch {
	
	@Autowired
	
	private SqlMapClientTemplate sqlMapClient;
	private String no;
	private String yes;
	private String view = null;
	@RequestMapping("/appointmentdetailsearch.do")
	public String detailreservationsearch(HttpServletRequest request,AppointmentDTO dto,TreatmentteamDTO tmdto, ScheduleDTO sddto){
		
		String ymd = request.getParameter("ymd");
		String drname = tmdto.getDrname();
		String dpname = tmdto.getDpname();
		String jumin1 = dto.getJumin1();
		String jumin2 = dto.getJumin2();
		String name = dto.getName();
		String sdate = (String)sddto.getSdate();
		int sid = sddto.getSid();
		int drid = dto.getDrid();
		
		List tmslist = sqlMapClient.queryForList("treatment.searchtreatmentteam", tmdto.getDpname());
		TreatmentteamDTO tmsdto = (TreatmentteamDTO)sqlMapClient.queryForObject("treatment.searchname", tmdto.getDpname());
		System.out.println(ymd);
		if(tmslist.size() == 0){
			 dpname = no;
		}
		dto.setAdate(ymd);
		sddto.setSdate(ymd);
		List<AppointmentDTO> adlist = sqlMapClient.queryForList("appointment.appointscheduleselect", dto);
		List<ScheduleDTO> sdlist = sqlMapClient.queryForList("schedule.scheduleselectshit", sddto);
		List<ScheduleDTO> temp = sqlMapClient.queryForList("schedule.scheduleselectshit", sddto);
		

		
		
		int i = 0;
		
		for(ScheduleDTO aa : temp){
			for(AppointmentDTO bb : adlist) {
				if((aa.getSdate().equals(bb.getAdate()))) {
					sdlist.remove(i);
					i--;
				}			
			}
			i++;
		}
		
		/*for(int i=0; i < sdlist.size(); i++) {
			System.out.println(sdlist.get(i));
			for(int j=0; j < adlist.size(); j++) {
				if(sdlist.get(i) == ((ScheduleDTO) adlist.get(j))) {
					System.out.println("abc");
					sdlist.remove(i);
				}
			}
		}*/
		
		if (sdlist.size() == 0){
			view = no;
		}else if(sdlist.size() != 0){
			view = yes;
	}else{}
	
			System.out.println(view);
			
		System.out.println(sdlist);
		System.out.println(adlist.size());
		System.out.println(sdlist.size());

		
		request.setAttribute("dpname",dpname);
		request.setAttribute("drname",drname);
		request.setAttribute("jumin1",jumin1);
		request.setAttribute("jumin2",jumin2);
		request.setAttribute("sdate",sdate);
		request.setAttribute("name",name);
		request.setAttribute("tmsdto", tmsdto);
		request.setAttribute("tmslist", tmslist);
		request.setAttribute("sdlist", sdlist);
		request.setAttribute("drid",drid);
		request.setAttribute("sid",sid);
	
		request.setAttribute("view",view);
		return "/appointmentdetail.do";
	}
	
}
