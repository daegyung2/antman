package d_mypage;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import praiseboard.PraiseVO;

@Controller
public class D_ScheduleContentBean {
	
	   @Autowired
	   private SqlMapClientTemplate sqlMapClient;
	   
		 @RequestMapping("/d_praisepagecontent.do")
	   public String content(HttpServletRequest request,PraiseVO dto)throws Exception{
	      int pid =(int)dto.getPid();
	      System.out.println(dto.getPid());
	   dto = (PraiseVO)sqlMapClient.queryForObject("praise.finddoctor",dto.getPid());
	   
	      request.setAttribute("pid",pid);
	      request.setAttribute( "dto",dto );
	      return "/d_mypage/d_praisepagecontent.jsp";
	   }
		
}
