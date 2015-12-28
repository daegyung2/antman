package treatmentteam;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.TreatmentteamDTO;
 
@Controller
public class TreatmentChoice {

	
	@Autowired
	
	private SqlMapClientTemplate sqlMapClient;

	@RequestMapping("/treatmentchoice.do")
	public String treatmentchoice(HttpServletRequest request, TreatmentteamDTO dto ){
		System.out.println(dto.getP_depart_id());
		List cholist = sqlMapClient.queryForList("treatment.treatmentchoice",dto);
		request.setAttribute("cholist", cholist);
		return "/treatmentteam/treatmentteamchoice.jsp";
	}
}
