package appointment;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.AppointmentDTO;
import login.bean.LoginDataBean;

@Controller
public class AppointmentMainBean {

	
	@Autowired
	private SqlMapClientTemplate sqlMapClient;

	@RequestMapping("/appointmentmain.do")
	public String reservationmain(HttpServletRequest request,AppointmentDTO adto){

		return "/appointment/appointmentmain.jsp";
	}

	@RequestMapping("/appointmentform.do")
	public String reservationform(){
			
;
		return "/appointment/detail/appointmentform.jsp";
	}
	

	
}
