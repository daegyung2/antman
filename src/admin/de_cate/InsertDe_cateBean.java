package admin.de_cate;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InsertDe_cateBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	private int deid;
	private int x;
	
	@RequestMapping("/insertDe_cate.do")
	public String insertDe_cate(HttpServletRequest request){
		x = (int) sqlMapClient.queryForObject("de_cate.count");
		if(x == 0){
			deid = 1;
			request.setAttribute("deid", deid);
			return "/admin/de_cate/insertDe_cate.jsp";
		}else{
			deid = (int) sqlMapClient.queryForObject("de_cate.max") + 1;
			request.setAttribute("deid", deid);
			return "/admin/de_cate/insertDe_cate.jsp";
		}
		
	}
	

}
