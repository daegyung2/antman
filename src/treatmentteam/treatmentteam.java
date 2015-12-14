package treatmentteam;


	import java.io.Reader;
import java.nio.charset.Charset;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.orm.ibatis.SqlMapClientTemplate;
	import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

	import praiseboard.PraiseVO;
	import admin.bean.DepartmentDTO;
	import treatmentteamVO.SearchTreatmentTeamVO;
	import java.nio.charset.Charset;

	import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;

import java.nio.charset.Charset;
	import com.ibatis.common.resources.Resources;


@Controller
public class treatmentteam {

			@Autowired
			private SqlMapClientTemplate sqlMapClient;
	
			@RequestMapping("/treatmentsearchlist.do")
			public String reservationlist(HttpServletRequest request,DepartmentDTO dto){
	
				List list = sqlMapClient.queryForList("treatment.selecttreatment1", dto);
				List lista = sqlMapClient.queryForList("treatment.selecttreatment2", dto);
				List listb = sqlMapClient.queryForList("treatment.selecttreatment3", dto);
				List listc = sqlMapClient.queryForList("treatment.selecttreatment4", dto);
				
				
				return "/treatmentteam/treatmentteam.jsp";
			}
			
			@ModelAttribute("list")
			public List test(PraiseVO dto) {
				
				return sqlMapClient.queryForList("treatment.selecttreatment1",dto);
				
			}
			@ModelAttribute("lista")
			public List testa(PraiseVO dto) {
				
				return sqlMapClient.queryForList("treatment.selecttreatment2",dto);
				
			}
			@ModelAttribute("listb")
			public List testb(PraiseVO dto) {
				
				return sqlMapClient.queryForList("treatment.selecttreatment3",dto);
				
			}
			@ModelAttribute("listc")
			public List testc(PraiseVO dto) {
				
				return sqlMapClient.queryForList("treatment.selecttreatment4",dto);
				
			}
			
		
	}


