package mainboard;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainBoardWriteAction {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/mainboardwrite.do")
	public String write(){
		return "/mainboard/mainboardwrite.jsp";
	}
	@RequestMapping("/mainboardpro.do")
	public String writepro(MainBoardVO dto){
		sqlMapClient.insert("mainBoard.insertmainboard",dto);
		return "mainboard.do";
	}
	@RequestMapping("/mainboardcontent.do")
	public String VIEW(HttpServletRequest request, MainBoardVO dto){
		
		dto = (MainBoardVO)sqlMapClient.queryForObject("mainBoard.viewmainboard", dto.getMBid());
		request.setAttribute("dto", dto);
		return "/mainboard/mainboardcontent.jsp";
	}
}
