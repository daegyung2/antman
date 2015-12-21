package appointment;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.AppointmentDTO;


@Controller
public class AppointmentDetailProBean {
	
	@Autowired
	private SqlMapClientTemplate sqlMapClient;

		@RequestMapping("/appointmentdetailpro.do")
		public String detailreservationpro(HttpServletRequest request,AppointmentDTO dto){
			String year =(String)dto.getYear();
			String month =(String)dto.getMonth();
			String day =(String)dto.getDay();
			String hour =(String)dto.getHour();
			String minute =(String)dto.getMinute();
			String adate = year+month+day+hour+':'+minute;
			dto.setAdate(adate);
			System.out.println(adate);
		
			
			sqlMapClient.insert("appointment.appointmentinsert",dto);
			
			List list = sqlMapClient.queryForList("appointment.appointresult",dto.getId());
			System.out.println(list.size());
			request.setAttribute("list", list);	
			return "/appointment/detail/appointmentdetailpro.jsp";
		}
	}


