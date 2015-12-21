package praiseboard;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class PraiseDeleteBean {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/praisedelete.do")
	public String praiseupdate(HttpServletRequest request,PraiseVO dto){		
		sqlMapClient.delete("praise.deletepraise",dto);	
		return "redirect:praiseboard.do";
	}
}
