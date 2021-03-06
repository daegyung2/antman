package appointment;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.AppointmentDTO;
import admin.bean.ScheduleDTO;


@Controller
public class AppointmentDetailProBean {
	
	@Autowired
	private SqlMapClientTemplate sqlMapClient;

		@RequestMapping("/appointmentdetailpro.do")
		public String detailreservationpro(HttpServletRequest request,AppointmentDTO dto,ScheduleDTO sddto){
		
		
			System.out.println(dto.getAdate());
		
			
			sqlMapClient.insert("appointment.appointmentinsert",dto);
			sqlMapClient.update("schedule.scheduleupdatename",sddto);
			List list = sqlMapClient.queryForList("appointment.appointresult",dto.getId());
			System.out.println(list.size());
			request.setAttribute("list", list);	
			return "/appointment/detail/appointmentdetailpro.jsp";
		}
	}


