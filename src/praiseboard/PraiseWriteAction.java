package praiseboard;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.DepartmentDTO;




@Controller
public class PraiseWriteAction {
	
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/praisewrite.do")
	public String write(HttpServletRequest request , PraiseVO dto){
	
		List dplist = sqlMapClient.queryForList("praise.selectdepart",dto);
		
		
		
		System.out.println(dplist.size());
		System.out.println(dplist);
		
		request.setAttribute("dplist",dplist);
		return "/praiseboard/praisewrite.jsp";
	} 
	

	
	
	@RequestMapping("/praisepro.do")
	public String writepro(PraiseVO dto){
		
		sqlMapClient.insert("praise.insertpraise", dto);		
		
		return "redirect:praiseboard.do";
	}
	
	
	@RequestMapping("/praisecontent.do")
	public String VIEW(HttpServletRequest request,PraiseVO dto)throws Exception{
		int pid =(int)dto.getPid();
		System.out.println(dto.getPid());
	dto = (PraiseVO)sqlMapClient.queryForObject("praise.finddoctor",dto.getPid());
	
		request.setAttribute("pid",pid);
		request.setAttribute( "dto",dto );
		return "/praiseboard/praisecontent.jsp";
	}
	

}

