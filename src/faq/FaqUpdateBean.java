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
		
	
	@RequestMapping("/faqUpdate.do")
	public String content(FaqDTO dto,HttpServletRequest request){
		sqlMapClient.queryForObject("faq.selectOne",dto);
		return "/faq/faqUpdate.jsp";
	}
		
	@ModelAttribute("dto")
	public Object returnDTO(FaqDTO dto){
		return sqlMapClient.queryForObject("faq.selectOne",dto);
	}
}
