package faq;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import admin.bean.FaqDTO;

@Controller
public class FaqBoardBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	private List list;

	@RequestMapping("/faqboard.do")
	public String faqList(FaqDTO dto){
		list = sqlMapClient.queryForList("faq.selectList",dto);
		return "/faq/faqboard.jsp";
	}
	
	@ModelAttribute("list")
	public List getList(FaqDTO dto){
		return sqlMapClient.queryForList("faq.selectList",dto);
	}
	  

   }