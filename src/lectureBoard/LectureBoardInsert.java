package lectureBoard;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import admin.bean.LectureBoardDTO;

@Controller
public class LectureBoardInsert {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	private List fileList;
	private MultipartFile file;
	private int LEid;
	
	@RequestMapping("/lectureBoardPro.do")
	public String insertLecture(LectureBoardDTO dto, MultipartHttpServletRequest request)throws IllegalStateException, IOException{
	
		sqlMapClient.insert("lectureBoard.insertlectureboard", dto);
 	   
	   LEid = (int) sqlMapClient.queryForObject("lectureBoard.max",dto);
	   System.out.println(LEid);
	   dto.setLEid(LEid);
	   
	   file = request.getFile("upload");
	  
	   if(!file.isEmpty()){
	   String name = file.getOriginalFilename();//C:\Users\downmemory\git\antman
	   File sf = new File("c://Users//user1//git//antman//WebContent//image//leimg//"+name);
	   file.transferTo(sf);
	   dto.setLeimg("/antman/image/leimg/"+name);
	   sqlMapClient.update("lectureBoard.updateleimg",dto);
	   }else{
	   dto.setLeimg("/antman/image/noimage.jpg");
	   sqlMapClient.update("lectureBoard.updateleimg",dto);
	   }
	   
	  
	return "lectureboard.do";
	
	}
}
