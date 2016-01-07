package academy;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import admin.bean.AcademyDTO;
import praiseboard.PraiseVO;
@Controller
public class AcademyContentBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;

	
	@RequestMapping("/academycontent.do")
	public String form(HttpServletRequest request, AcademyDTO dto){
	      int asid =(int)dto.getAsid();
	      System.out.println(dto.getAsid());
	      dto = (AcademyDTO)sqlMapClient.queryForObject("academy.selectcontent",dto.getAsid());
	      /*dto = (AcademyDTO)sqlMapClient.queryForObject("praise.finddoctor",dto.getAsid());*/
	      request.setAttribute("asid",asid);
	      request.setAttribute( "dto",dto );
		return "/academy/academycontent.jsp";
	}
}
