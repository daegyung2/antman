package appointmentsimple;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.AppointmentSimpleDTO;

@Controller
public class AppointmentSimpleBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/appointmentsimple")
	public String appointmentsimple(HttpServletRequest request,AppointmentSimpleDTO dto){

		request.setAttribute("jumin1", dto.getJumin1());
		request.setAttribute("jumin2", dto.getJumin2());
		request.setAttribute("name",dto.getName());
		System.out.println(dto.getJumin1());
		return "/appointment/simple/appointmentsimple.jsp";
	}
	
	
	
}

