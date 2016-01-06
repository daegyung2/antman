package cultureBoard;

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

@Controller
public class CultureBoardInsert {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	private List fileList;
	private MultipartFile file;
	private int Cuid;
	
	@RequestMapping("/cultureboardPro.do")
	public String insertLecture(CultureBoardDTO dto, MultipartHttpServletRequest request)throws IllegalStateException, IOException{
	
		sqlMapClient.insert("cultureBoard.insertcultureboard", dto);
 	   
	   Cuid = (int) sqlMapClient.queryForObject("cultureBoard.max",dto);
	  
	   dto.setCuid(Cuid);
	   
	   file = request.getFile("upload");
	  
	   if(!file.isEmpty()){
	   String name = file.getOriginalFilename();//C:\Users\downmemory\git\antman
	   File sf = new File("c://Users//ÅÂÈñ//git//antman//WebContent//image//cuimg//"+name);
	   file.transferTo(sf);
	   dto.setCuimg("/antman/image/cuimg/"+name);
	   sqlMapClient.update("cultureBoard.updatecuimg",dto);
	   }else{
	   dto.setCuimg("/antman/image/noimage.jpg");
	   sqlMapClient.update("cultureBoard.updatecuimg",dto);
	   }
	   
	  
	return "cultureboard.do";
	
	}
}
