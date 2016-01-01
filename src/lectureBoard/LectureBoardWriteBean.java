package lectureBoard;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.LectureBoardDTO;


@Controller
public class LectureBoardWriteBean {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/lectureboardwrite.do")
	public String write(){
		return "/intro/lectureboard/lectureboardwrite.jsp";
	}
	@RequestMapping("/lectureboardpro.do")
	public String writepro(LectureBoardDTO dto){
		sqlMapClient.insert("lectureBoard.insertlectureboard",dto);
		return "lectureboard.do";
	}
	@RequestMapping("/lectureboardcontent.do")
	public String VIEW(HttpServletRequest request, LectureBoardDTO dto){
		
		dto = (LectureBoardDTO)sqlMapClient.queryForObject("lectureBoard.viewlectureboard", dto.getLEid());
		request.setAttribute("dto", dto);
		return "/intro/lectureboard/lectureboardcontent.jsp";
	}
	
	@RequestMapping("/lectureboarddelete.do")
	public String delete(LectureBoardDTO dto){
		sqlMapClient.delete("lectureBoard.deleteboard", dto.getLEid());
		return "/intro/lectureboard/lectureboarddelete.jsp";
	}
	
	@RequestMapping("/lectureboardupdate.do")
	   public String update(HttpServletRequest request,LectureBoardDTO dto){
	      int LEid =(int)dto.getLEid();
	      dto = (LectureBoardDTO)sqlMapClient.queryForObject("lectureBoard.viewlectureboard",dto.getLEid());
	      request.setAttribute("LEid",LEid);
	      request.setAttribute("dto",dto);
	      return "/intro/lectureboard/lectureboardupdate.jsp";
	   }
	   
	
	@RequestMapping("/lectureboardupdatepro.do")
	public String updatepro(LectureBoardDTO dto){
		sqlMapClient.update("lectureBoard.updateboard",dto);
		return "/intro/lectureboard/lectureboardupdatepro.jsp";
	}
	
}
