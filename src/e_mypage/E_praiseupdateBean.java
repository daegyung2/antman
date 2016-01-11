package e_mypage;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import praiseboard.PraiseVO;

@Controller
public class E_praiseupdateBean {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	

	@RequestMapping("/e_praiseupdate.do")
	public String p_praiseupdate(HttpServletRequest request,PraiseVO dto){
		int pid =(int)dto.getPid();
		dto = (PraiseVO)sqlMapClient.queryForObject("praise.finddoctor",dto.getPid());
		request.setAttribute("pid",pid);
		request.setAttribute( "dto",dto );
		return "/e_mypage/e_praiseupdate.jsp";
	}
	
	
	@RequestMapping("/e_praiseupdatepro.do")
	public String praiseupdatepro(HttpServletRequest request,PraiseVO dto){
		
		sqlMapClient.update("praise.updatepraise",dto);

		return "/e_praiseboard.do";
	}
	
}
