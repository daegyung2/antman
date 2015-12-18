package admin.body_part;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InsertBody_partBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;

	

	@RequestMapping("/insertBody_part.do")
	public String insertBody(HttpServletRequest request){
		return "/admin/body_part/insertBody_part.jsp";
	}
	
}
