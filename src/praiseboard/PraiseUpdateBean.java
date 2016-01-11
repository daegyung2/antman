package praiseboard;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PraiseUpdateBean {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/praiseupdate.do")
	public String praiseupdate(HttpServletRequest request,PraiseVO dto){
		int pid =(int)dto.getPid();
		dto = (PraiseVO)sqlMapClient.queryForObject("praise.finddoctor",dto.getPid());
		request.setAttribute("pid",pid);
		request.setAttribute( "dto",dto );
		return "/praiseboard/praiseupdate.jsp";
	}
	
	
	@RequestMapping("/praiseupdatepro.do")
	public String praiseupdatepro(HttpServletRequest request,PraiseVO dto){
		
		sqlMapClient.update("praise.updatepraise",dto);

		return "redirect:praiseboard.do";
	}
}

