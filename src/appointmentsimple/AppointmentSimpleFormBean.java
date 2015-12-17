package appointmentsimple;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.AppointmentSimpleDTO;
@Controller
public class AppointmentSimpleFormBean {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/appointmentsimpleform")
	public String reservationlist(HttpServletRequest request,AppointmentSimpleDTO dto){


		return "/appointment/simple/appointmentsimpleform.jsp";
	}
	
}