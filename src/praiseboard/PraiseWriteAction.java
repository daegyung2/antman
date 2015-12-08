package praiseboard;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class PraiseWriteAction {
	
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/praisewrite.do")
	public String write(){
		return "/praiseboard/praisewrite.jsp";
	}
	@RequestMapping("praisepro.do")
	public String writepro(PraiseVO dto){
		sqlMapClient.insert("praise.insertpraise", dto);
		
		
		
		return "/praisepro.jsp";
	}
}

