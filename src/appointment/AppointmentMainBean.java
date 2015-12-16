package appointment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AppointmentMainBean {

	
	@Autowired
	private SqlMapClientTemplate sqlMapClient;

	@RequestMapping("/appointmentmain.do")
	public String reservationmain(){

		return "/appointment/appointmentmain.jsp";
	}

	@RequestMapping("/appointmentform.do")
	public String reservationform(){

		return "/appointment/appointmentform.jsp";
	}
	

	
}
