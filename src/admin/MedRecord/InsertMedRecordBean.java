package admin.MedRecord;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;

@Controller
public class InsertMedRecordBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;

	
	public String insertMedRecord(){
		
		
		return "/admin/MedRecord/insertMedRecord.jsp";
	}
}
