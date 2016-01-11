package p_mypage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import praiseboard.PraiseVO;

@Controller
public class P_praisedeleteBean {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/p_praisedelete.do")
	public String p_praisedelete(PraiseVO dto){
		
		sqlMapClient.delete("praise.deletepraise",dto);	
		return "/p_praiseboard.do";
	}
	
}
