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
	private String no;
	
	@RequestMapping("/treatmentsearch.do")
	public String treatmentsearch(HttpServletRequest request,SearchTreatmentTeamVO tmdto){
		  String dpname = (String)tmdto.getDpname();
		
		
		 List tmslist = sqlMapClient.queryForList("treatment.searchtreatmentteam", tmdto.getDpname());
		  SearchTreatmentTeamVO tmsdto = (SearchTreatmentTeamVO)sqlMapClient.queryForObject("treatment.searchname", tmdto.getDpname());
		 
		 
		 if(tmslist.size() == 0){
			 dpname = no;
		 }
		 System.out.println(dpname);
		 request.setAttribute("dpname",dpname);
		  request.setAttribute("tmsdto", tmsdto);

		 
		return "/treatmentsearchlist.do";
	}
	@ModelAttribute("tmslist")
	public List test(SearchTreatmentTeamVO tmdto) {
		
		return sqlMapClient.queryForList("treatment.searchtreatmentteam", tmdto.getDpname());
		
	}

}
