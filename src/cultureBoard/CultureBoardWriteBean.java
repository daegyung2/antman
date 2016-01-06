package cultureBoard;

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
import admin.bean.LectureBoardDTO;
import admin.bean.NewsBoardDTO;

@Controller
public class CultureBoardWriteBean {
	
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	private List fileList;
	private MultipartFile file;
	private int Cuid;
	
	@RequestMapping("/cultureboardwrite.do")
	public String culturewrite(CultureBoardDTO dto, HttpServletRequest request){
		
		return "/cultureboard/cultureboardwrite.jsp";
	}
	
	@RequestMapping("/cultureboardwritePro.do")
	public String culturewritePro(CultureBoardDTO dto, HttpServletRequest request){
		
		sqlMapClient.insert("cultureBoard.insertcultureboard",dto);
		
		return "cultureboard.do";
	}
	
	@RequestMapping("/cultureboardcontent.do")
	public String VIEW(HttpServletRequest request, CultureBoardDTO dto){
		
		dto = (CultureBoardDTO)sqlMapClient.queryForObject("cultureBoard.selectOne", dto.getCuid());
		request.setAttribute("dto", dto);
		return "/cultureboard/cultureboardcontent.jsp";
	}
	
	@RequestMapping("/cultureboarddelete.do")
	public String delete(CultureBoardDTO dto){
		sqlMapClient.delete("cultureBoard.deletecultureboard", dto.getCuid());
		return "/cultureboard/cultureboarddelete.jsp";
	}
	
	@RequestMapping("/cultureboardupdate.do")
	   public String update(HttpServletRequest request,CultureBoardDTO dto){
	      int cuid =(int)dto.getCuid();
	      dto = (CultureBoardDTO)sqlMapClient.queryForObject("cultureBoard.viewcultureboard",dto.getCuid());
	      System.out.println(dto.getCuid());
	      request.setAttribute("cuid",cuid);
	      request.setAttribute("dto",dto);
	      return "/cultureboard/cultureboardupdate.jsp";
	   }
	   
	
	@RequestMapping("/cultureboardupdatepro.do")
	public String updatepro(CultureBoardDTO dto,MultipartHttpServletRequest request)throws IllegalStateException, IOException{
		sqlMapClient.update("cultureBoard.updatecultureboard",dto);//여기 쿼리가 실행이 안되는듯 함.
		
		 file = request.getFile("upload");
		  
		   if(!file.isEmpty()){
		   String name = file.getOriginalFilename();//C:\Users\downmemory\git\antman
		   File sf = new File("c://Users//태희//git//antman//WebContent//image//cuimg//"+name);
		   file.transferTo(sf);
		   dto.setCuimg("/antman/image/cuimg/"+name);
		   sqlMapClient.update("cultureBoard.updatecuimg",dto);
		   }else{
		   dto.setCuimg("/antman/image/noimage.jpg");
		   sqlMapClient.update("cultureBoard.updatecuimg",dto);
		   }
		return "/cultureboard/cultureboardupdatepro.jsp";
	}
	
	@ModelAttribute("dto")
	public Object returnDTO(CultureBoardDTO dto){
		return sqlMapClient.queryForObject("cultureBoard.selectOne",dto.getCuid());
	}

}