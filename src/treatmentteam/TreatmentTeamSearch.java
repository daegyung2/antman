package treatmentteam;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import praiseboard.PraiseVO;
import treatmentteamVO.SearchTreatmentTeamVO;

@Controller
public class TreatmentTeamSearch {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/treatmentsearch.do")
	public String treatmentsearch(HttpServletRequest request,SearchTreatmentTeamVO tmdto){
		String depart_id = (String)tmdto.getDepart_id();
		 List tmslist = sqlMapClient.queryForList("treatment.searchtreatmentteam", tmdto.getDepart_id());
		
		 
		 request.setAttribute("depart_id",depart_id);
		return "/treatmentsearchlist.do";
	}
	@ModelAttribute("tmslist")
	public List test(SearchTreatmentTeamVO tmdto) {
		
		return sqlMapClient.queryForList("treatment.searchtreatmentteam", tmdto.getDepart_id());
		
	}

}
