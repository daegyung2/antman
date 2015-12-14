package faq;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import faq.faqDTO;

@Controller
public class FaqListBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
		
	
	@RequestMapping("/faqList.do")
	public String content(faqDTO dto,HttpServletRequest request){
		sqlMapClient.queryForObject("faq.selectOne",dto.getFid());
		return "/faq/faqList.jsp";
	}
		
	@ModelAttribute("dto")
	public Object returnDTO(faqDTO dto){
		return sqlMapClient.queryForObject("faq.selectOne",dto.getFid());
	}
}
