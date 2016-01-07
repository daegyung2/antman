package newsBoard;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import admin.bean.NewsBoardDTO;

@Controller
public class NewsBoardWriteBean {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/newsboardwrite.do")
	public String write(){
		return "/intro/newsboard/newsboardwrite.jsp";
	}
	@RequestMapping("/newsboardpro.do")
	public String writepro(NewsBoardDTO dto){
		sqlMapClient.insert("newsBoard.insertnewsboard",dto);
		return "newsboard.do";
	}
	@RequestMapping("/newsboardcontent.do")
	public String VIEW(HttpServletRequest request, NewsBoardDTO dto){
		
		dto = (NewsBoardDTO)sqlMapClient.queryForObject("newsBoard.viewnewsboard", dto.getNEid());
		request.setAttribute("dto", dto);
		return "/intro/newsboard/newsboardcontent.jsp";
	}
	
	@RequestMapping("/newsboarddelete.do")
	public String delete(NewsBoardDTO dto){
		sqlMapClient.delete("newsBoard.deleteboard", dto.getNEid());
		return "/intro/newsboard/newsboarddelete.jsp";
	}
	
	@RequestMapping("/newsboardupdate.do")
	   public String update(HttpServletRequest request, NewsBoardDTO dto){
	      int NEid =(int)dto.getNEid();
	      dto = (NewsBoardDTO)sqlMapClient.queryForObject("newsBoard.viewnewsboard",dto.getNEid());
	      request.setAttribute("NEid",NEid);
	      request.setAttribute("dto",dto);
	      return "/intro/newsboard/newsboardupdate.jsp";
	   }
	   
	
	@RequestMapping("/newsboardupdatepro.do")
	public String updatepro(NewsBoardDTO dto){
		sqlMapClient.update("newsBoard.updateboard",dto);
		return "/intro/newsboard/newsboardupdatepro.jsp";
	}

}
