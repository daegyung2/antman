package academy;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import admin.bean.AcademyDTO;
import admin.bean.DoctorDTO;
import praiseboard.PraiseVO;
@Controller
public class AcademyContentBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;

	
	@RequestMapping("/academycontent.do")
	public String form(HttpServletRequest request, AcademyDTO dto, DoctorDTO ddto){
	      int asid =(int)dto.getAsid();
	     int drId =(int) dto.getDrid(); 
	     ddto.setDrId(drId);
	     System.out.println(ddto.getDrId()+1);
	     System.out.println(drId+1);
	      
	      System.out.println(dto.getAsid());
	     
	      dto = (AcademyDTO)sqlMapClient.queryForObject("academy.selectcontent",dto.getAsid());
	      ddto = (DoctorDTO)sqlMapClient.queryForObject("doctor.selectDr",ddto);
	      request.setAttribute("asid",asid);
	      request.setAttribute( "dto",dto );
	      request.setAttribute( "ddto",ddto );
		return "/academy/academycontent.jsp";
	}
}
