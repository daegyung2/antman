package reservation;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;




@Controller
public class ReservationMain {
	
	
	@Autowired
	private SqlMapClientTemplate sqlMapClient;

	@RequestMapping("/reservationmain.do")
	public String reservationmain(){

		return "/reservation/reservationmain.jsp";
	}

	@RequestMapping("/reservationform.do")
	public String reservationform(){

		return "/reservation/reservationform.jsp";
	}
	


}
