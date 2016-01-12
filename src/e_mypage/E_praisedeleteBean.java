package e_mypage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import praiseboard.PraiseVO;

@Controller
public class E_praisedeleteBean {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/e_praisedelete.do")
	public String p_praisedelete(PraiseVO dto){
		
		sqlMapClient.delete("praise.deletepraise",dto);	
		return "/e_praiseboard.do";
	}
	
}
