package newsBoard;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import admin.bean.CultureBoardDTO;
import admin.bean.LectureBoardDTO;
import admin.bean.NewsBoardDTO;

@Controller
public class NewsBoardInsert {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	private List fileList;
	private MultipartFile file;
	private int NEid;
	
	@RequestMapping("/newsboardPro.do")
	public String insertLecture(NewsBoardDTO dto, MultipartHttpServletRequest request)throws IllegalStateException, IOException{
		String content = dto.getContent();
		dto.setContent(content.replace("\r\n", "<br />"));
		
		sqlMapClient.insert("newsBoard.insertnewsboard", dto);
 	   
	   NEid = (int) sqlMapClient.queryForObject("newsBoard.max",dto);
	  
	   dto.setNEid(NEid);
	   
	   file = request.getFile("upload");
	  
	   if(!file.isEmpty()){
	   String name = file.getOriginalFilename();//C:\Users\downmemory\git\antman
	   File sf = new File("c://Users//user1//git//antman//WebContent//image//neimg//"+name);
	   file.transferTo(sf);
	   dto.setNeimg("/antman/image/neimg/"+name);
	   sqlMapClient.update("newsBoard.updateneimg",dto);
	   }else{
	   dto.setNeimg("/antman/image/noimage.jpg");
	   sqlMapClient.update("newsBoard.updateneimg",dto);
	   }
	   
	  
	return "newsboard.do";
	
	}
}