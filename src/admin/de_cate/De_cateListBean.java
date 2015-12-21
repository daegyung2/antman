package admin.de_cate;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class De_cateListBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	private List de_cateList;

	@RequestMapping("/de_cateList.do")
	public String getDe_cateList(HttpServletRequest request){
		de_cateList = sqlMapClient.queryForList("de_cate.selectList");
		request.setAttribute("list",de_cateList);
		return "/admin/de_cate/de_cateList.jsp";
	}
	
	
}
