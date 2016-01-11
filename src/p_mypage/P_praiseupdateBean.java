package p_mypage;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import praiseboard.PraiseVO;

@Controller
public class P_praiseupdateBean {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	

	@RequestMapping("/p_praiseupdate.do")
	public String p_praiseupdate(HttpServletRequest request,PraiseVO dto){
		int pid =(int)dto.getPid();
		dto = (PraiseVO)sqlMapClient.queryForObject("praise.finddoctor",dto.getPid());
		request.setAttribute("pid",pid);
		request.setAttribute( "dto",dto );
		return "/p_mypage/p_praiseupdate.jsp";
	}
	
	
	@RequestMapping("/p_praiseupdatepro.do")
	public String praiseupdatepro(HttpServletRequest request,PraiseVO dto){
		
		sqlMapClient.update("praise.updatepraise",dto);

		return "/p_praiseboard.do";
	}
	
}
