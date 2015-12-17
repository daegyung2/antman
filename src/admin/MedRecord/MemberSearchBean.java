package admin.MedRecord;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberSearchBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/memberSearch.do")
	public String memberSearch(){
		
		
		return "insertMedRecord.do";
	}

}
