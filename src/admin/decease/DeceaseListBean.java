package admin.decease;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.DeceaseDTO;

@Controller
public class DeceaseListBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	private List list;
	
	@RequestMapping("/deceaseList.do")
	public String deceaseList(DeceaseDTO dto){
		list = sqlMapClient.queryForList("decease.selectList",dto);
		return "/admin/decease/deceaseList.jsp";
	}

	@ModelAttribute("list")
	public List getDe_list(DeceaseDTO dto){
		return sqlMapClient.queryForList("decease.selectList",dto);
	}
}
