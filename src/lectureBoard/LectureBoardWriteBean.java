package lectureBoard;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import admin.bean.CultureBoardDTO;
import admin.bean.DepartmentDTO;
import admin.bean.LectureBoardDTO;


@Controller
public class LectureBoardWriteBean {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	private List fileList;
	private MultipartFile file;
	private int leid;
	
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
		
		
		dto = (LectureBoardDTO)sqlMapClient.queryForObject("lectureBoard.selectOne", dto.getLEid());
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
	public String updatepro(LectureBoardDTO dto,MultipartHttpServletRequest request)throws IllegalStateException, IOException{
		sqlMapClient.update("lectureBoard.updatelectureboard",dto);
		
		 file = request.getFile("upload");
		  
		   if(!file.isEmpty()){
		   String name = file.getOriginalFilename();//C:\Users\downmemory\git\antman
		   File sf = new File("c://Users//ÅÂÈñ//git//antman//WebContent//image//leimg//"+name);
		   file.transferTo(sf);
		   dto.setLeimg("/antman/image/leimg/"+name);
		   sqlMapClient.update("lectureBoard.updateleimg",dto);
		   }else{
		   dto.setLeimg("/antman/image/noimage.jpg");
		   sqlMapClient.update("lectureBoard.updateleimg",dto);
		   }
		return "/intro/lectureboard/lectureboardupdatepro.jsp";
	}
	
	@ModelAttribute("dto")
	public Object returnDTO(LectureBoardDTO dto){
		return sqlMapClient.queryForObject("lectureBoard.selectOne",dto.getLEid());
	}
	
}
