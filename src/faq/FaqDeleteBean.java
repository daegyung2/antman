package faq;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.FaqDTO;

@Controller
public class FaqDeleteBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
		
	
	@RequestMapping("/faqdelete.do")
	public String faqupdate(HttpServletRequest request,FaqDTO dto){		
		sqlMapClient.delete("faq.deletefaq",dto);	
		return "redirect:faqboard.do";
	}
}
