package admin.MedRecord;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InsertMedRecordProBean {
	
	@RequestMapping("/insertMedRecord.do")
	public String insertMedRecord(){
		return "/admin/MedRecord/insertMedRecord.jsp";
	}

}
