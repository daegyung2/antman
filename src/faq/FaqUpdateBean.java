package faq;

import java.util.List;

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
	private List list;
		
	@RequestMapping("/faqupdate.do")
	public String faqupdate(HttpServletRequest request,FaqDTO dto){
		int Fid = dto.getFid();
		dto = (FaqDTO)sqlMapClient.queryForObject("faq.selectOne",dto.getFid());
		request.setAttribute("dto", dto);
		request.setAttribute("Fid",Fid);
		return "/faq/faqupdate.jsp";
	}
	
	
	@RequestMapping("/faqupdatepro.do")
	public String faqupdatepro(HttpServletRequest request,FaqDTO dto){
		
		sqlMapClient.update("faq.updatefaq",dto);

		return "redirect:faqboard.do";
	}
	

	
	/*@Autowired
	private SqlMapClientTemplate sqlMapClient;
	public String updateBody(@ModelAttribute faqDTO dto,HttpServletRequest request){
		fid = (int) request.getAttribute("fid");
		System.out.println(fid);
		dto = (faqDTO)sqlMapClient.queryForObject("faq.selectOne",fid);
		return "/faq_test/faqupdate.jsp";
	}	
	
	@RequestMapping("/faqupdate.do")
	public String faqupdate(faqDTO dto,HttpServletRequest request){
		sqlMapClient.queryForObject("faq.selectOne",dto.getFid());
		
		return "/faq_test/faqupdate.jsp";
	}
	
	@RequestMapping("/faqupdatepro.do")
	public String faqupdatepro(HttpServletRequest request,faqDTO dto){
		
		sqlMapClient.update("faq.updatefaq",dto);

		return "redirect:faqboard.do";
	}
	*/
	
}