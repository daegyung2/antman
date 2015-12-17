package admin.health;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InsertHealthBean {

	@RequestMapping("/insertHealth.do")
	public String insertHealth(){
		return "admin/health/insertHealth.jsp";
	}
}
