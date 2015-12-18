package admin.body_part;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.Body_partDTO;

@Controller
public class Body_partListBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	private List list;

	@RequestMapping("body_partList.do")
	public String bodyList(Body_partDTO dto){
		list = sqlMapClient.queryForList("body.selectList",dto);
		return "/admin/body_part/body_partList.jsp";
	}
	
	@ModelAttribute("list")
	public List getList(Body_partDTO dto){
		return sqlMapClient.queryForList("body.selectList",dto);
	}
}
