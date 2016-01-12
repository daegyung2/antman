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
	public String faqwrite(HttpServletRequest request){
		return "/faq/faqwrite.jsp";
	}
	
	@RequestMapping("/faqwritepro.do")
	public String faqwritepro(FaqDTO dto){
		
		String content = dto.getContent();
		dto.setContent(content.replace("\r\n","<br />"));
		sqlMapClient.insert("faq.insertfaq", dto);		
		
		return "redirect:faqboard.do";
	}

}