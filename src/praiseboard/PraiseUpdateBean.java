package praiseboard;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;

@Controller
public class PraiseUpdateBean {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	public String praiseupdate(PraiseVO dto){
	
		sqlMapClient.queryForObject("praise.finddoctor",dto);
		
		
		return "/praiseboard/praiseboardupdate.jsp";
	}
	
}
