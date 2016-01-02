package mainboard;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.MainBoardDTO;



@Controller
public class MainBoardWriteAction {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/mainboardwrite.do")
	public String write(){
		return "/intro/mainboard/mainboardwrite.jsp";
	}
	@RequestMapping("/mainboardpro.do")
	public String writepro(MainBoardDTO dto){
		sqlMapClient.insert("mainBoard.insertmainboard",dto);
		return "mainboard.do";
	}
	@RequestMapping("/mainboardcontent.do")
	public String VIEW(HttpServletRequest request, MainBoardDTO dto){
		
		dto = (MainBoardDTO)sqlMapClient.queryForObject("mainBoard.viewmainboard", dto.getMBid());
		request.setAttribute("dto", dto);
		return "/intro/mainboard/mainboardcontent.jsp";
	}
	
	@RequestMapping("/mainboarddelete.do")
	public String delete(MainBoardDTO dto){
		sqlMapClient.delete("mainBoard.deleteboard", dto.getMBid());
		return "/intro/mainboard/mainboarddelete.jsp";
	}
	
	@RequestMapping("/mainboardupdate.do")
	   public String update(HttpServletRequest request,MainBoardDTO dto){
	      int MBid =(int)dto.getMBid();
	      dto = (MainBoardDTO)sqlMapClient.queryForObject("mainBoard.viewmainboard",dto.getMBid());
	      request.setAttribute("MBid",MBid);
	      request.setAttribute("dto",dto);
	      return "/intro/mainboard/mainboardupdate.jsp";
	   }
	   
	
	@RequestMapping("/mainboardupdatepro.do")
	public String updatepro(MainBoardDTO dto){
		sqlMapClient.update("mainBoard.updateboard",dto);
		return "/intro/mainboard/mainboardupdatepro.jsp";
	}

}
