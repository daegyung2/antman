package webservice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WebServiceBean {

	
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/voc.do")
	public String voc(){
		
		return "/webservice/voc.jsp";
	}
	
	@RequestMapping("/offerinfo.do")
	public String offerinfo(){
		
		return "/webservice/offerinfo.jsp";
	}
	
	@RequestMapping("/pageinquiry.do")
	public String pageinquiry(){
		
		return "/webservice/pageinquiry.jsp";
	}
}
