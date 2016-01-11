	package d_mypage;

	import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.orm.ibatis.SqlMapClientTemplate;
	import org.springframework.stereotype.Controller;
	import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.AppointmentDTO;
import admin.bean.DoctorDTO;
import admin.bean.ScheduleDTO;
import admin.bean.ScheduleResultDTO;
import login.bean.LoginDataBean;

	@Controller
	public class D_ScheduleResultBean {
		


		@Autowired
		private SqlMapClientTemplate sqlMapclient;
		
		@RequestMapping("dscheduleform.do")
		public String D_Scheduleform (HttpServletRequest request, ScheduleDTO dto, LoginDataBean ldto,AppointmentDTO adto,DoctorDTO ddto, ScheduleResultDTO rdto){
			
			int drid = dto.getDrid();
			ddto.setDrId(drid);
			String name =ldto.getName();
			List slist = sqlMapclient.queryForList("appointment.drsnameidcheck",dto.getDrid());
			
			
			List nlist = sqlMapclient.queryForList("member.memberidresult" , ldto);
			List mlist = sqlMapclient.queryForList("result.midselect",rdto);
			
			ldto = (LoginDataBean)sqlMapclient.queryForObject("member.memberinfo", ldto);
			adto = (AppointmentDTO) sqlMapclient.queryForObject("appointment.jumininfo",adto);
			ddto = (DoctorDTO)sqlMapclient.queryForObject("doctor.doctorinfo",ddto);
			
			
			System.out.println(rdto.getMid());
			rdto = (ScheduleResultDTO)sqlMapclient.queryForObject("result.resultselect",rdto);
			
			request.setAttribute("name", name);
			request.setAttribute("ddto", ddto);
			request.setAttribute("adto", adto);
			request.setAttribute("ldto", ldto);
			request.setAttribute("rdto", rdto);
			request.setAttribute("nlist", nlist);
			request.setAttribute("mlist", mlist);
			request.setAttribute("slist", slist);
			return "/d_mypage/d_resultpage.jsp";
		}
		
		
		
			@RequestMapping("/scheduleresult.do")
		public String scheduleresult (HttpServletRequest request, ScheduleResultDTO rdto,String mids){
				
				if (rdto.getMid() == 0){
				
					sqlMapclient.insert("result.insertresult",rdto);
					/*sqlMapclient.queryForObject("result.selectmid",rdto);*/
				}else if(rdto.getMid() != 0){
					
					sqlMapclient.update("result.updateresult",rdto);
				}
				/*rdto = (ScheduleResultDTO) sqlMapclient.queryForObject("result.resultselect",rdto);*/
				List slist = sqlMapclient.queryForList("appointment.drsnameidcheck",rdto.getDrid());
				
				request.setAttribute("rdto", rdto);
				request.setAttribute("slist", slist);
				return "/dscheduleform.do";
	
	
			}
			
			
				@RequestMapping("/deleteresult.do")
			public String deleteresult (HttpServletRequest request, ScheduleResultDTO rdto,String mids){
	
					sqlMapclient.delete("result.deleteresult",rdto);
				return "/dscheduleform.do"; 
				}
	}
	

