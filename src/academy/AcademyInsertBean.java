package academy;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import admin.bean.AcademyDTO;



@Controller
public class AcademyInsertBean {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	private List fileList;
	private int asid;
	private MultipartFile file;
	
	@RequestMapping("/academyform.do")
	public String form(HttpServletRequest request, AcademyDTO dto,String ymd){

		return "/academy/academyinsert.jsp";
	}
	
	@RequestMapping("/academyinsert.do")
	public String appointmentsimple(AcademyDTO dto,String ymd,MultipartHttpServletRequest request )throws IllegalStateException, IOException{
		//학술행사시간 ymd
		String astime = ymd+" "+dto.getHour()+":"+dto.getMinute();
		dto.setAstime(astime);
		String astimeend = ymd+" "+dto.getHoure()+":"+dto.getMinutee();
		dto.setAstimeend(astimeend);
		System.out.println(astimeend);
		String ascontent = dto.getAscontent();
		dto.setAscontent(ascontent.replace("\r\n","<br />"));
		sqlMapClient.insert("academy.insertacademy",dto);
		
		asid = (int) sqlMapClient.queryForObject("academy.max",dto);
	   dto.setAsid(asid);
	   System.out.println(asid);
	   file = request.getFile("upload");
	  
	   if(!file.isEmpty()){
	   String name = file.getOriginalFilename();//C:\Users\downmemory\git\antman
	   File sf = new File("c://Users//downmemory//git//antman//WebContent//image//academyimg//"+name);
	   file.transferTo(sf);
	   dto.setAsimg("/antman/image/academyimg/"+name);
	   sqlMapClient.update("academy.academyasimg",dto);
	   }else{
	   dto.setAsimg("/antman/image/noimage.jpg");
	   sqlMapClient.update("academy.academyasimg",dto);
	   }
		
		
		return "/academyform.do";
	}
}