package admin.MedRecord;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InsertMedRecordBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;

	@RequestMapping("/insertMedRecord.do")
	public String insertMedRecord(){
		
		
		return "/admin/MedRecord/insertMedRecord.jsp";
	}
}
