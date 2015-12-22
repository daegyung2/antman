package faq;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.FaqDTO;

@Controller
public class FaqUpdateBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
		
	
	@RequestMapping("/faqupdate.do")
	public String faqupdate(FaqDTO dto,HttpServletRequest request){
		int fid =(int)dto.getFid();
		dto = (FaqDTO)sqlMapClient.queryForObject("faq.selectOne",dto.getFid());
		request.setAttribute("fid",fid);
		request.setAttribute("dto",dto);
		return "/faq/faqupdate.jsp";
	}
	
	@RequestMapping("/faqupdatepro.do")
	public String faqupdatepro(HttpServletRequest request,FaqDTO dto){
		
		sqlMapClient.update("faq.updatefaq",dto);

		return "redirect:faqboard.do";
	}
	
}