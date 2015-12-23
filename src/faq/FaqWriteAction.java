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
public class FaqWriteAction {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	private List list;
		
	
	@RequestMapping("/faqwrite.do")
	public String write(FaqDTO dto,HttpServletRequest request){
		sqlMapClient.queryForObject("faq.selectOne",dto.getFid());
		
		return "/faq/faqwrite.jsp";
	}
	
	@RequestMapping("/faqwritepro.do")
	public String writepro(FaqDTO dto){
		
		sqlMapClient.insert("faq.insertfaq", dto);		
		
		return "redirect:faqboard.do";
	}
	
	@RequestMapping("/faqcontent.do")
	public String VIEW(HttpServletRequest request,FaqDTO dto)throws Exception{
		int fid =(int)dto.getFid();
		System.out.println(dto.getFid());
	dto = (FaqDTO)sqlMapClient.queryForObject("faq.selectOne",dto.getFid());
	
		request.setAttribute("fid",fid);
		request.setAttribute("dto",dto);
		return "/faq_test/faqcontent.jsp";
	}
	

}
