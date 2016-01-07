package appointmentsimple;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.AppointmentSimpleDTO;
@Controller
public class AppointmentSimpleProBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/appointmentsimplepro")
	public String appointmentsimplepro(HttpServletRequest request,AppointmentSimpleDTO dto){
		
		sqlMapClient.insert("appointment.simpleappointmentinsert",dto);

		return "/appointment/simple/appointmentsimplepro.jsp";
	}
	
}
