package e_mypage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class E_simpleBean {

	@Autowired
	private SqlMapClientTemplate sqlMapclient;
	
	@RequestMapping("/e_simple.do")
	public String e_simple(){
		
		
		
		return "/e_simple.jsp";
	}
}
