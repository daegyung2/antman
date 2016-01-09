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
	public String form(HttpServletRequest request, AcademyDTO dto, DoctorDTO ddto ){
	      int asid =(int)dto.getAsid();
	     int drId =(int) dto.getDrid(); 
	     ddto.setDrId(drId);
	     
	     
	      dto = (AcademyDTO)sqlMapClient.queryForObject("academy.selectcontent",dto.getAsid());
	      ddto = (DoctorDTO)sqlMapClient.queryForObject("doctor.selectDr",ddto);
	      /*int asids  = (Integer)sqlMapClient.queryForObject("academy.selectasid" , dto.getId());*/
	      String id = (String)request.getParameter("id");
	     
	     
	      dto.setId(id);
	      
	      String aasubject = dto.getAssubject();
	      dto.setAasubject(aasubject);
	      
	      int check = (int)sqlMapClient.queryForObject("academy.idcheck",dto);
	      
	      int asendcheck = (int)sqlMapClient.queryForObject("academy.asendcheck",dto);
	      System.out.println(check);
				System.out.println(asendcheck);
	      request.setAttribute("asendcheck", asendcheck);
	      request.setAttribute("check", check);
	      request.setAttribute("asid",asid);
	      request.setAttribute("check",check);
	      request.setAttribute( "dto",dto );
	      request.setAttribute( "ddto",ddto );
		return "/academy/academycontent.jsp";
	}
}
